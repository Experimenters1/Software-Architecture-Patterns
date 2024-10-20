//
//  Animal.swift
//  Class (Lớp)
//
//  Created by Huy vu on 20/10/24.
//

import Foundation

//Class (lớp) là một kiểu dữ liệu trong lập trình hướng đối tượng, đại diện cho một đối tượng (object) với các thuộc tính (dữ liệu) và phương thức (hành vi) cụ thể.

//Một class trong Swift có thể chứa:
class Animal {
    //Properties (Thuộc tính): Các biến lưu trữ dữ liệu.
    var name: String
    var age: Int
    
    // Initializer: dùng để khởi tạo đối tượng từ class
    //Initializers: Phương thức để khởi tạo đối tượng từ class.
      init(name: String, age: Int) {
          self.name = name
          self.age = age
      }
    
    // Method: hành vi của đối tượng
    //Methods (Phương thức): Các hàm thực hiện hành vi.
    func makeSound() {
        print("\(name) is making a sound!")
    }
}
