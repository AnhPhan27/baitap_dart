void main(List<String> arguments) {
  //  Tính tổng 1 số nguyên và 1 số thực sau đó làm tròn đến số thập phân thứ 2

  int soNguyen = 15;

  double soThuc = 9.2712;

  String soNguyen1 = (soNguyen + soThuc).toStringAsFixed(2);

  print(soNguyen1);
}
