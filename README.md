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

Trong **SwiftUI, ObservableObject** là một **protocol** được sử dụng để cho phép **một đối tượng (class)** phát ra các thay đổi về dữ liệu của nó đến các **view** đang lắng nghe (hoặc đang "quan sát" đối tượng đó). Khi dữ liệu trong đối tượng thay đổi, tất cả các **view** quan sát nó sẽ tự động cập nhật giao diện của chúng mà không cần làm mới thủ công.<br><br>

### Cách hoạt động của ObservableObject:  <br><br>
**+ ) Cơ chế tự động cập nhật UI:** Khi một thuộc tính trong đối tượng thay đổi, và thuộc tính đó được đánh dấu bằng **@Published**, tất cả các **view** đang quan sát đối tượng sẽ tự động nhận thông báo và cập nhật giao diện của chúng. <br><br>
**+ )@ObservedObject hoặc @StateObject:** Các **view** sẽ sử dụng các **property wrapper** này để lắng nghe đối tượng có thay đổi **(cụ thể là một ObservableObject)**.<br><br>

