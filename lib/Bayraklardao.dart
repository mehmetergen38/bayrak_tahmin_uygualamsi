import 'package:bayrakuygulamasi/Bayraklar.dart';
import 'package:bayrakuygulamasi/VeriTabaniYardimcisi.dart';

class Bayraklardao {

  Future<List<Bayraklar>> rasgele5Getir() async{
    var db=await VeriTabaniYardimcisi.veritabaniErisim();

    List<Map<String,dynamic>> maps =await db.rawQuery("SELECT * FROM bayraklar ORDER BY RANDOM() LIMIT 5");
    
    return List.generate(maps.length, (i) {
      var satir =maps[i];
      return Bayraklar(satir["bayrak_id"],satir["bayrak_ad"],satir["bayrak_resim"]);
    });


  }

  Future<List<Bayraklar>> rasgele3YanliGetir(int bayrak_id) async{
    var db=await VeriTabaniYardimcisi.veritabaniErisim();

    List<Map<String,dynamic>> maps =await db.rawQuery("SELECT * FROM bayraklar WHERE bayrak_id!= $bayrak_id  ORDER BY RANDOM() LIMIT 3");

    return List.generate(maps.length, (i) {
      var satir =maps[i];
      return Bayraklar(satir["bayrak_id"],satir["bayrak_ad"],satir["bayrak_resim"]);
    });


  }

}