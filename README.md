# Call_Python_from_AHK
Call python functions from ahk via command line. 
Nothing ground breaking here, a shortcut more than anything.

ahk_file(calls python function) ==> middle man py file, functions given via command line ==> py file with functions

Class and Object selects ["function", "filename"]

runs command line arguments pushed to py file to run that function.

github will be updated shortly with test file.

              ;examples:: 
              ;(testfile.py) 
              PythonFunctionandFile:=["testfunction", "testfile"] 
              ;or  
              ;PythonFunctionandFile:=["Function_Name_In_Py", "Python_File_Name_Without_Extension"]

              ;initiate class object:
              py := new Python(PythonFunctionandFile)

              ;run python function
              py.Run() 

;place this anywhere or #include 
 
