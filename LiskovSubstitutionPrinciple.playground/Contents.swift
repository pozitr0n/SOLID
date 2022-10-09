import UIKit
import PlaygroundSupport
import Foundation

class Rectangle {
 
  // Приватные свойства.
  private var width: Int
  private var length: Int
 
  // Инициализатор родителя.
  init (w: Int, l: Int) {
    width = w
    length = l
  }
 
  // Методы.
  func setWidth(w: Int) {
    width = w
  }
 
  func setLength (l: Int) {
    length = l
  }
 
  func getWidth() -> Int {
    return width
  }
 
  func getLength () -> Int {
    return length
  }
 
  func getArea() -> Int {
    return width * length
  }
}

// Сущность квадрат (наследник).
class Square: Rectangle {
 
    // Инициализатор наследника.
    override init(w: Int, l: Int) {
        super.init(w: w, l: l)
    }
     
    // Переопределенные методы родителя
    override func setLength(l: Int) {
        super.setLength(l: l)
    }
     
    override func setWidth(w: Int) {
        super.setWidth(w: w)
    }
    
}

// Функция выводит ожидаемые значения и то, что получилось
func getTest(rectangle: Rectangle) {
 
  // Берем переданную ширину.
  let w = rectangle.getWidth()
 
  // Устанавливаем новую длину (для простоты эксперимента).
  rectangle.setLength(l: 10)
 
  // Вычисляем площадь.
  rectangle.getArea()
 
  // Выводим в консоль результат.
  print("Expected area = \(w * 10). Result = \(rectangle.getArea())")
}

let test = Rectangle(w: 2, l: 3)
getTest(rectangle: test)

let test1 = Square(w: 3, l: 3)
getTest(rectangle: test1)
