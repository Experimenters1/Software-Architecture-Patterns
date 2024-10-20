//
//  ViewController.swift
//  Class (Lớp)
//
//  Created by Huy vu on 20/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Tạo một đối tượng từ class Animal
        let dog = Animal(name: "Buddy", age: 3)
        dog.makeSound()  // In ra "Buddy is making a sound!"
    }


}

