'TEKSYSTEM CODE ASSESMENT.
' Author Kiran.
strAnswer = InputBox("Please enter a name for your new file:","Create File")
'If user don't enter anything the window will close.
If strAnswer = "" Then

    Wscript.Quit

Else
'Create an object.
Set objFS = CreateObject("Scripting.FileSystemObject")
'Change the Location in which the file needs to be created
Set objNewFile = objFS.CreateTextFile("C:\Users\Kiran\Desktop\"+strAnswer)
' The following code is to write to file in users created extension.
objNewFile.WriteLine "<!DOCTYPE html>"
objNewFile.WriteLine "<html>"
objNewFile.WriteLine "<head>"
objNewFile.WriteLine "<h2>Hey this is Kiran<h2>"
objNewFile.WriteLine "<h2 id='demo'></h2>"
objNewFile.WriteLine "<script>var d = new Date();document.getElementById('demo').innerHTML = d;</script>"
objNewFile.WriteLine "</head>"
objNewFile.WriteLine "<body>"
objNewFile.WriteLine "<h1>Line1</h1>"
objNewFile.WriteLine "<div align='center'style='width:100px;height:90px;border:1px solid #000;'>Item11<div align='center'  style='width:75px;height:60px;border:1px solid #000;' >Item12<div align='center'style='width:50px;height:25px;border:1px solid #000;'>Item13</div></div></div>"
objNewFile.WriteLine "<h1>Line2</h1>"
objNewFile.WriteLine "<div style='width:75px;height:30px;border:1px solid #000;' align='center'>Item21 </div>"
objNewFile.WriteLine "<h1>Line3</h1>"
objNewFile.WriteLine "<div align='center'style='width:100px;height:75px;border:1px solid #000;'>Item31<div align='center' style='width:50px;height:40px;border:1px solid #000;' >Item32</div></div>"
objNewFile.WriteLine "<h1>Line1</h1>"
objNewFile.WriteLine "<div align='center'style='width:125px;height:100px;border:1px solid #000;'>Item41<div align='center'  style='width:100px;height:80px;border:1px solid #000;' >Item42<div align='center'style='width:75px;height:50px;border:1px solid #000;'>Item43<div align='center'style='width:50px;height:25px;border:1px solid #000;'>Item44</div></div></div></div>"
objNewFile.WriteLine "</body>"
objNewFile.WriteLine "</html>"
'The file open automatically after creation in Inter Explorer.
Set objIE = CreateObject("InternetExplorer.Application")
    objIE.Visible = 1
    objIE.Navigate "C:\Users\Kiran\Desktop\"+strAnswer

End If
