// Bài 1:
// 1.1,Tạo một lớp mô tả đối tượng sinhvien đại học có :
// – Các thuộc tính:
// + Họ Tên
// + Giới tính
// + Số ngôn ngữ lập trình thành thạo
// + Điểm Văn, Điểm Toán, Điểm Anh
// + Thưởng
// + Học Phí
// + Nợ tiền sách
// – Các phương thức:
// Câu hỏi 1;: In thông tin developer
// Câu hỏi 2 Tính số tiền học sinh còn nợ nhà trường hocphi = hocphi - thưởng + nợ tiền sách
// Câu hỏi 3: Tính điểm trung bình môn văn toán anh biết văn toán nhân đôi
// Câu hỏi 4: Tìm ra điểm số cao nhất trong 3 môn Văn, Toán, Anh

// 1.2, Giữ nguyên lại lớp sinh viên bên trên
// hãy xây dựng 1 lớp Sinh viên sau đại học có các trường sau:
// + Họ Tên
// + Giới tính
// + Số ngôn ngữ lập trình thành thạo
// + Điểm Văn, Điểm Toán, Điểm Anh
// + Thưởng
// + Học Phí
// + Nợ tiền sách
// Câu hỏi 1:
// So sánh số tiền học phí phải đóng của 2 sinh viên xem ai cao hơn in ra tên người đó
//  Câu hỏi 2: Tổng điểm 3 môn văn, toán, anh của ai cao hơn.
// 1.3, Xây dựng 1 lớp trừu tượng abstract class tên là HOCPHI có phương thức là void tinhtien();
// Câu hỏi: Tính số tiền phải đóng của lớp học sinh đại học và học sinh sau đại học thông qua hàm tinhtien() của lớp HOCPHI

void main() {
  SinhVien sV = SinhVien(
      hoTen: 'Anh Phan',
      gioiTinh: 'Nam',
      soNgonNguLapTrinhThanhThao: 1,
      diemVan: 6,
      diemToan: 8.3,
      diemAnh: 7,
      thuong: 500,
      hocPhi: 2000,
      noTienSach: 100);

  SinhVienSauDaiHoc sVSDH = SinhVienSauDaiHoc(
      hoTen1: 'Thang Hoang',
      gioiTinh1: 'Nam',
      soNgonNguLapTrinhThanhThao1: 3,
      diemVan1: 8,
      diemToan1: 9.3,
      diemAnh1: 8.5,
      thuong1: 1000,
      hocPhi1: 3000,
      noTienSach1: 100);
  sV.inThongTinDeveloper();

  print(
      'Số tiền học sinh còn nợ nhà trường: ${sV.soTienHocSinhConNoNhaTruong()}');
  print('Diem trung binh: ${sV.diemTrungBinh()}');

  sV.tinhTien();
  sVSDH.tinhTien();
}

class SinhVien extends HOCPHI {
  String? hoTen;
  String? gioiTinh;
  int? soNgonNguLapTrinhThanhThao;
  double? diemVan;
  double? diemToan;
  double? diemAnh;
  int? thuong;
  int? hocPhi;
  int? noTienSach;

  SinhVien(
      {this.hoTen,
      this.gioiTinh,
      this.soNgonNguLapTrinhThanhThao,
      this.diemVan,
      this.diemToan,
      this.diemAnh,
      this.thuong,
      this.hocPhi,
      this.noTienSach});

  void inThongTinDeveloper() {
    print('Họ Tên: ${this.hoTen}\n' +
        'Giới tính: ${this.gioiTinh}\n' +
        'Số Ngôn Ngữ lập trình thành thạo: ${this.soNgonNguLapTrinhThanhThao}\n');
  }

  int soTienHocSinhConNoNhaTruong() {
    return (this.hocPhi! - this.thuong! + this.noTienSach!);
  }

  double diemTrungBinh() {
    return ((this.diemVan! * 2) + (this.diemToan! * 2) + this.diemAnh!) / 5;
  }

  void diemCaoNhatTrong3Mon() {
    List<double> phanLoaiDiem = [this.diemVan!, this.diemToan!, this.diemAnh!];
    phanLoaiDiem.sort();
    print('So Diem Cao Nhat Trong 3 Mon la: ${phanLoaiDiem.last}');
  }

  @override
  void tinhTien() {
    var soTienPhaiDong = this.hocPhi;

    print('So Tien Can Phai Dong Cua Sinh Vien la: $soTienPhaiDong');
  }
}

class SinhVienSauDaiHoc extends HOCPHI {
  String? hoTen1;
  String? gioiTinh1;
  int? soNgonNguLapTrinhThanhThao1;
  double? diemVan1;
  double? diemToan1;
  double? diemAnh1;
  int? thuong1;
  int? hocPhi1;
  int? noTienSach1;

  SinhVienSauDaiHoc(
      {this.hoTen1,
      this.gioiTinh1,
      this.soNgonNguLapTrinhThanhThao1,
      this.diemVan1,
      this.diemToan1,
      this.diemAnh1,
      this.thuong1,
      this.hocPhi1,
      this.noTienSach1});

//   @override
//   void inThongTinDeveloper() {
//      print ('Họ Tên: ${this.hoTen1}\n' +
//            'Giới tính: ${this.gioiTinh1}\n' +
//            'Số Ngôn Ngữ lập trình thành thạo: ${this.soNgonNguLapTrinhThanhThao1}\n');
//   }

  @override
  void tinhTien() {
    var soTienPhaiDong = this.hocPhi1;

    print(
        'So Tien Can Phai Dong Cua Sinh Vien Sau Dai Hoc la: $soTienPhaiDong');
  }
}

abstract class HOCPHI {
  void tinhTien();
}
