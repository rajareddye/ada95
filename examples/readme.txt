#: pre-requisite:
GANT compiler is installed on host  .
# To understand the feature.
Clone this project and go to src folder. Ther you can see each folder having specific readme,txt. That readme.txt gives an idea of what that example is for.

#How to run this example in Gnat Studio:
edit the "examples.gpr"  line  "for Main use ("test_procedure.adb");" to point to program to be compiled. Then load the "examples.gpr " in GPS and build and run.
#How run this example in command prompt 
edit the "examples.gpr"  line  "for Main use ("test_procedure.adb");" to point to program to be compiled. then open command prompt / terminal and then execute the below command 
> "gprbuild examples.gpr"