import Cocoa

let fileManager = FileManager.default

var filePath = "/Users/Shared/mytext.rtf"

//create folder
let folderName = "Users/Shared/MyFolder"

do{
 try fileManager.createDirectory(atPath: folderName, withIntermediateDirectories: true, attributes: nil)

    //create file
    filePath = "Users/Shared/Myfolder/test.txt"
    let fileText = "Hello\nWorld\nGood\nbye"
    let fileData = fileText.data(using: .utf8)
    fileManager.createFile(atPath: filePath, contents: fileData, attributes: nil)
    
    //permisson check
    fileManager.isReadableFile(atPath: filePath) ? print("File is readable") : print("file is not readable")

    fileManager.isDeletableFile(atPath: filePath) ? print("File is deletable") : print("file is not deletable")
    
    fileManager.isExecutableFile(atPath: filePath) ? print("File is executable") : print("file is not executable")
    
    
//read file
   print( try String(contentsOfFile: filePath, encoding: .utf8))
    
//write text file  (old entry will be removed , if you want old entry too use update thing )
   let newText = "my name is Prathamesh 🕺🏻"
    try newText.write(toFile: filePath, atomically: true, encoding: .utf8)
    print("new text is = ", try String(contentsOfFile: filePath, encoding: .utf8))

//file handle
   let fileHandler = FileHandle(forWritingAtPath: filePath)
    fileHandler?.truncateFile(atOffset: 0)
    
//file Delete
   //try fileManager.removeItem(atPath: filePath)
    

}catch let error{
    print("Error in the operation:\n\(error.localizedDescription)")
}

//update file
let fileHandler = FileHandle.init(forUpdatingAtPath: filePath)
var newText1 = "my name is Cristiano 🕺🏻"
fileHandler!.seek(toFileOffset: 10)
fileHandler!.write(newText1.data(using: .utf8)!)
print("Final file")
print( try String(contentsOfFile: filePath, encoding: .utf8))

