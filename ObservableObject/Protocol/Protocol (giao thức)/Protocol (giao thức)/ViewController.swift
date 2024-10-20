//
//  ViewController.swift
//  Protocol (giao thức)
//
//  Created by Huy vu on 20/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
//        No use protocol
        let myCar = Car()
        let myBike = Bike()
        printVehicleDescription(vehicle: myCar)  // "I am a car."
        printVehicleDescription(vehicle: myBike)  // "I am a bike."
        
        //use protocol
        let myCar1 = Car1()
        let myBike1 = Bike1()
        printVehicleDescription1(vehicle: myCar1)  // "I am a car."
        printVehicleDescription1(vehicle: myBike1)  // "I am a bike."
    }
    
    
    //  No use protocol
    func printVehicleDescription(vehicle: Any) {
        if let car = vehicle as? Car {
            car.printDescription()
        } else if let bike = vehicle as? Bike {
            bike.printDescription()
        }
    }
    
    //Use protocol
    // Hàm xử lý chung với protocol Vehicle
    func printVehicleDescription1(vehicle: Vehicle) {
        vehicle.printDescription()
    }



}

//Protocol trong Swift có vai trò quan trọng trong việc định nghĩa các giao diện chung mà nhiều class (hoặc struct, enum) có thể tuân thủ, giúp tạo ra mã linh hoạt và dễ bảo trì. Mặc dù không phải lúc nào cũng bắt buộc phải sử dụng protocol, nhưng nó giúp ích rất nhiều trong việc viết mã theo nguyên tắc lập trình hướng giao diện (interface-oriented programming), mang lại tính đa hình và tái sử dụng.

//------------------

//Protocol trong Swift có vai trò quan trọng trong việc định nghĩa các giao diện chung mà nhiều class (hoặc struct, enum) có thể tuân thủ, giúp tạo ra mã linh hoạt và dễ bảo trì. Mặc dù không phải lúc nào cũng bắt buộc phải sử dụng protocol, nhưng nó giúp ích rất nhiều trong việc viết mã theo nguyên tắc lập trình hướng giao diện (interface-oriented programming), mang lại tính đa hình và tái sử dụng.
//
//Tại sao cần có protocol?
//Giảm phụ thuộc giữa các class:
//
//Protocol giúp tách biệt định nghĩa giao diện (interface) và cài đặt cụ thể. Điều này giảm sự phụ thuộc giữa các thành phần trong ứng dụng.
//Khi một class tuân thủ protocol, các thành phần khác chỉ cần làm việc với giao diện (protocol), không cần biết chi tiết bên trong của class đó, giúp cho mã dễ mở rộng mà không cần sửa đổi lớn.
//Tính linh hoạt và đa hình:
//
//Protocol cho phép tạo ra các loại đối tượng khác nhau có cùng hành vi mà không cần quan tâm tới loại cụ thể của chúng (class, struct, enum).
//Điều này giúp tạo ra mã dễ mở rộng hơn, vì bạn có thể thêm các lớp mới mà không cần thay đổi mã cũ.
//Tái sử dụng mã:
//
//Khi nhiều class tuân thủ cùng một protocol, chúng có thể được sử dụng thay thế lẫn nhau trong các phần khác nhau của ứng dụng, giúp tái sử dụng mã tốt hơn.
