Const ForReading = 1
Const ForWriting = 2
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile("C:\text.txt", ForReading)

strText = objFile.ReadAll
objFile.Close
strNewText = Replace(strText, "xxxx", "xxxx" &Date)
strNewText1 = Replace(strNewText, "xxxx", "xxxx")
strNewText2 = Replace(strNewText1, "xxxx", "xxxx")

Set objFile = objFSO.OpenTextFile("C:\text.txt", ForWriting)
objFile.WriteLine strNewText2 

objFile.Close