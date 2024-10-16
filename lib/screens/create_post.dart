import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peer_app/newsfeed/bottom_bar.dart'; // For image picking

class PostingScreen extends StatefulWidget {
  const PostingScreen({super.key});

  @override
  _PostingScreenState createState() => _PostingScreenState();
}

class _PostingScreenState extends State<PostingScreen> {
  final TextEditingController _postController = TextEditingController();
  int _charCount = 0;
  final int _maxCharCount = 280;
  XFile? _image;
  String _privacy = 'Public'; // Default privacy setting
  final List<String> _tags = [];
  final List<String> _privacyOptions = ['Public', 'Friends', 'Only Me'];
  final ImagePicker _picker = ImagePicker();

  // Pick image from gallery
  Future<void> _pickImage() async {
    final XFile? selectedImage = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = selectedImage;
    });
  }

  // Remove selected image
  void _removeImage() {
    setState(() {
      _image = null;
    });
  }

  // Update character count
  void _updateCharCount(String text) {
    setState(() {
      _charCount = text.length;
    });
  }

  // Handle post submission
  void _submitPost() {
    if (_postController.text.isNotEmpty || _image != null) {
      print('Post submitted with content: ${_postController.text}');
      print('Privacy: $_privacy');
      if (_image != null) {
        print('Image attached: ${_image?.path}');
      }
      if (_tags.isNotEmpty) {
        print('Tags: ${_tags.join(', ')}');
      }

      setState(() {
        _postController.clear();
        _image = null;
        _charCount = 0;
        _tags.clear();
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Post submitted successfully!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please add text or an image to post!')),
      );
    }
  }

  // Add a tag (for hashtags or mentions)
  void _addTag(String tag) {
    tag = tag.trim(); // Trim any surrounding whitespace
    if (tag.isNotEmpty && !_tags.contains(tag)) {
      setState(() {
        _tags.add(tag);
      });
    }
  }

  // Determine if post can be submitted
  bool get _canSubmitPost {
    return _postController.text.isNotEmpty || _image != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E2E2E),
        title: const Text(
          'Posten',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: _canSubmitPost ? _submitPost : null, // Disable button if post is empty
            tooltip: 'Submit Post',
          ),
        ],
      ),
      backgroundColor: const Color(0xFF252525), // Page background
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Text Field for Post Content
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF127EFC), width: 2),
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF2E2E2E),
              ),
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _postController,
                maxLength: _maxCharCount,
                maxLines: 5,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'What\'s on your mind?',
                  hintStyle: TextStyle(color: Color(0xFFBABABA)),
                  border: InputBorder.none,
                ),
                onChanged: _updateCharCount,
              ),
            ),

            // Character Count Indicator
            Align(
              alignment: Alignment.centerRight,
              child: Text('$_charCount/$_maxCharCount', style: const TextStyle(color: Colors.white)),
            ),

            const SizedBox(height: 20),

            // Privacy Dropdown
            DropdownButtonFormField<String>(
              value: _privacy,
              decoration: InputDecoration(
                labelText: 'Who can see this post?',
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: const Color(0xFF2E2E2E),
                labelStyle: const TextStyle(color: Color(0xFFBABABA)),
              ),
              dropdownColor: const Color(0xFF2E2E2E),
              iconEnabledColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              onChanged: (String? newValue) {
                setState(() {
                  _privacy = newValue!;
                });
              },
              items: _privacyOptions.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: const TextStyle(color: Colors.white)),
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            // Image Preview and Picker Button
            _image != null
                ? Stack(
                    alignment: Alignment.topRight,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.file(
                          File(_image!.path),
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.cancel, color: Colors.red),
                        onPressed: _removeImage,
                      ),
                    ],
                  )
                : ElevatedButton.icon(
                    icon: const Icon(Icons.photo),
                    label: const Text('Add Image'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: const Color(0xFF127EFC),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: _pickImage,
                  ),

            const SizedBox(height: 20),

            // Tags Input Field
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Add tags (e.g., #flutter, @user)',
                labelStyle: TextStyle(color: Color(0xFFBABABA)),
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Color(0xFF2E2E2E),
              ),
              onSubmitted: _addTag,
            ),

            const SizedBox(height: 10),

            // Display added tags
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return Chip(
                  label: Text(tag),
                  deleteIconColor: Colors.white,
                  backgroundColor: const Color(0xFF127EFC),
                  onDeleted: () {
                    setState(() {
                      _tags.remove(tag);
                    });
                  },
                );
              }).toList(),
            ),

            const SizedBox(height: 20),

            // Submit Button
            ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: const Text('Post'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF127EFC),
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: _submitPost,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(context),
    );
  }
}
