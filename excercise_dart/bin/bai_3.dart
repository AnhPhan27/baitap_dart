void main(List<String> arguments) {
//  Cho 1 danh sách học sinh List students= [“Thắng”, “Minh”,”Anh”, “Vũ Bảo”]

  List<String> students = ['Thang', 'Minh', 'Anh', 'Vũ', 'Bảo', 'Mơ'];

  // 3.1 Thêm bạn Tính vào danh sách

  students.add('Tính');

  // 3.2 Xóa bạn MInh khỏi danh sách

  students.removeAt(students.indexWhere((note) => note.startsWith('M'), 1));

  print(students);

//  3.3 Nếu học sinh tên Anh thì in ra “ Đây là minh “

  if (students.contains('Anh')) {
    print('Day la minh');
  }

  // 3.4 Tìm vị trí của Bảo trong danh sách lớp

  int indexBao = students.indexOf('Bảo');

  print(indexBao);

  // 3.5, Sắp xếp danh sách tên theo độ dài kí tự của tên

  students.sort((a, b) => a.length.compareTo(b.length));

  // 3.6 Trong lớp có bạn Sapa không?
  // Làm sao để console không thực hiện vòng lặp 4 lần?

  for (var i in students) {
    if (students.contains('Sapa')) {
      return print('Danh sach lop co Sapa');
    } else {
      return print("danh sach lop khong co Sapa");
    }
  }
  // 3.7 Chuyển students thành string Thắng Minh Anh Vũ Bảo
  String newString = students.toString();
  print(newString);
  // 3.8 Tạo ra 1 danh sách học sinh mới như sau [“Thắng 9”, “Minh 9”,”Anh 3”, “Vũ Bảo 9”]
  List<String> newListStudents = (students.map((e) {
    if (e == 'Anh') {
      return '$e + 3';
    }
    return '$e + 9';
  })).toList();
  print(newListStudents);
}
