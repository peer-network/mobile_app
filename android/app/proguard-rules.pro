# Keep javax.naming classes and related directory/ldap classes
-keep class javax.naming.** { *; }
-keep class javax.naming.directory.** { *; }
-keep class javax.naming.ldap.** { *; }

# Keep specific exceptions and other critical classes used by HttpClient
-keep class javax.naming.InvalidNameException { *; }
-keep class javax.naming.NamingException { *; }
-keep class javax.naming.directory.Attributes { *; }
-keep class javax.naming.directory.Attribute { *; }
-keep class javax.naming.ldap.LdapName { *; }
-keep class javax.naming.ldap.Rdn { *; }

# Suppress warnings for javax.naming
-dontwarn javax.naming.**
