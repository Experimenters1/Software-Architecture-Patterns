# Software-Architecture-Patterns
## Software Architecture Patterns
Trong SwiftUI, các kiến trúc phần mềm (Software Architecture Patterns) phổ biến và thường được sử dụng là: <br><br>
**1. MVVM (Model-View-ViewModel):** <br>
**+)Phổ biến nhất với SwiftUI:** SwiftUI được thiết kế để hoạt động tốt với kiến trúc MVVM. Trong MVVM, dữ liệu và logic ứng dụng được tách ra khỏi giao diện người dùng (UI), giúp mã dễ duy trì và kiểm tra. <br><br>
**+)Model:** Chứa dữ liệu và logic nghiệp vụ. <br><br>
**+)View:** Định nghĩa giao diện người dùng và các tương tác.<br><br>
**+)ViewModel:** Quản lý trạng thái và xử lý logic giữa View và Model, giúp View luôn được cập nhật với dữ liệu mới nhất thông qua cơ chế binding (kết nối hai chiều).<br><br>
**Điểm mạnh:** Dễ tổ chức, rõ ràng, sử dụng tốt với các tính năng reactive (Binding, ObservableObject, @Published).<br><br>

**2.Redux/Unidirectional Data Flow:** <br>
## Không nên dùng hoặc ít dùng:
**1.VIPER:** Quá phức tạp và nhiều lớp so với yêu cầu của SwiftUI.<br><br>
**2.MVC:** Vai trò của Controller trong SwiftUI không rõ ràng, dễ gây khó khăn khi duy trì codebase lớn.<br><br>
