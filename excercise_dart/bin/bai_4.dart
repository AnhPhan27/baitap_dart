void main() {
  Hocsinh hs = Hocsinh(
      hoTen: 'Hoang Duc Thang',
      lop: 'Bon ba',
      diemToan: 9,
      diemVan: 9,
      diemAnh: 7);
  hs.ngaySinh = '27121995';
  print('Diem Trung Binh: ${hs.diemTrungBinh()}' + 'Xep loai: ${hs.xepLoai()}');
  hs.inThongTin();
}

class Hocsinh {
  String? hoTen;

  String? lop;

  String _ngaySinh = '';

  double? diemToan;

  double? diemVan;

  double? diemAnh;

  // Hàm khởi tạo

  Hocsinh({this.hoTen, this.lop, this.diemToan, this.diemVan, this.diemAnh});

  //phuong thuc

  void inThongTin() {
    String ngaySinh =
        this._ngaySinh == '' ? 'khong co du lieu ngay sinh' : this._ngaySinh;

    print("Ho Ten: ${this.hoTen} \n " +
        "Lop: ${this.lop} \n " +
        "Ngay Sinh: ${this._ngaySinh} \n " +
        "Diem Toan: ${this.diemToan} \n " +
        "Diem Van: ${this.diemVan} \n " +
        "Diem Anh: ${this.diemAnh} \n");
  }

  double diemTrungBinh() {
    return (this.diemToan! + this.diemVan! + this.diemAnh!) / 3;
  }

  String xepLoai() {
    var diemTB = this.diemTrungBinh();
    if (diemTB < 5) {
      return 'yeu';
    } else if (diemTB < 6.5) {
      return 'Trung Binh';
    } else if (diemTB < 8) {
      return 'Kha';
    } else
      return 'Gioi';
  }

  String get ngaySinh => _ngaySinh;
  void set ngaySinh(String ngaySinh) {
    this._ngaySinh = ngaySinh;
  }
}
