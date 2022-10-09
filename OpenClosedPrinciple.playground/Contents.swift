import UIKit
import PlaygroundSupport
import Foundation

class PrintTextHello {
    
    func printingText() {
        print("Hello")
    }
    
    // another solve
    func printingTextAdd(text: String? = nil) {
        guard let text = text else {
            print("Hello")
            return
        }
        print("Hello \(text)")
    }
    
}

extension PrintTextHello {
    func printingText(text: String) {
        print("Hello, \(text)")
    }
}

let printHello = PrintTextHello()
printHello.printingText()

let printHello1 = PrintTextHello()
printHello1.printingText(text: "World")



// test 2
enum DocType {
    case docx, csv, xml, pdf, epub
}

protocol ProtocolDocumentFormat {
    func document()
    var docType: DocType { get }
}

// Класс, который печатает документы в формате Docx
class FormatDocx: ProtocolDocumentFormat {
 
  // Приватное свойство с типом документа
  private (set) var docType: DocType = .docx
 
  func document() {
    // Какая-то логика по печати документа
    print("Printed document with format: \(docType)")
  }
    
}

// Класс, который печатает документы в формате XML
class FormatXML: ProtocolDocumentFormat {
  private (set) var docType: DocType = .xml
 
  func document() {
    // Какая-то логика по печати документа
    print("Printed document with format: \(docType)")
  }
    
}
 
// Класс, который печатает документы в формате CSV
class FormatCSV: ProtocolDocumentFormat {
  private (set) var docType: DocType = .csv
 
  func document() {
    // Какая-то логика по печати документа
    print("Printed document with format: \(docType)")
  }
    
}

// Класс, который печатает документы в формате CSV
class FormatPDF: ProtocolDocumentFormat {
  private (set) var docType: DocType = .pdf
 
  func document() {
    // Какая-то логика по печати документа
    print("Printed document with format: \(docType)")
  }
    
}
 
// Класс, который печатает документы в формате CSV
class FormatEPUB: ProtocolDocumentFormat {
  private (set) var docType: DocType = .epub
 
  func document() {
    // Какая-то логика по печати документа
    print("Printed document with format: \(docType)")
  }
    
}

// Класс, печатающий документы в нужном формате
class Printer {

    private var printingType: ProtocolDocumentFormat
    
    init(printingType: ProtocolDocumentFormat) {
        self.printingType = printingType
    }
    
    // Метод, отвечающий за печать документов
    func printDocuments(){
        printingType.document()
    }
}

let Docx = FormatDocx()
let CSV = FormatCSV()
let XML = FormatXML()
let PDF = FormatPDF()
let EPUB = FormatEPUB()

let printDocs = Printer(printingType: CSV)
printDocs.printDocuments()
