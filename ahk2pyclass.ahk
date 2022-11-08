 
#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1 
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

Class Python
{
  __New(Script) {
    this.script := Script
    this.comline := A_ScriptDir "\import_ahk_function_call.py"
    this.file .= "import_ahk_function_call.py"
    this.bat := A_ScriptDir "\py.bat"
    this.log := A_ScriptDir "\log.txt"
    if !FileExist(this.log)
        FileAppend, % this.script, % this.log
    if !FileExist(this.comline)
        FileAppend, "", % this.comline
  }
  Run() { 
    FileDelete, % this.bat 
    FileDelete, % this.log 
    for i, v in % this.script 
    {
      val .= "--" . v . " " 
    } 
    py := this.file
    FileAppend,
    (Ltrim
      cd "%A_ScriptDir%"
      python %py% %val%
      timeout /t 5
    ), % this.log
     FileMove, % this.log, % this.bat, 1
    Sleep, 110
    Run, % this.bat, %A_ScriptDir%
    sleep 110     
    FileDelete, % this.bat 
  }
  

}