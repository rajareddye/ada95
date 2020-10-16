 # Info
 In ada, any subprogram can be used as main.  package can not be used as main.
 file name  should match unit name(subprogram or package)
 Ada is case insensitive.
 
 # How to test with GPS of GNAT
  open "examples.gpr" in GPS and change the "for Main use ("test_procedure.adb");"  This gets build and you can see the output
  open "examples.gpr" in GPS and change the "for Main use ("test_function.adb");"  This gets build and you can see the output
  open "examples.gpr" in GPS and change the "for Main use ("Test_Package.test_package.adb");"  This is compile time error