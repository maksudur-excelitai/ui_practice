class ProductDetailsModel{
  int? id;
  List<String>?image;
  int? productCode;
  String? productStock;
  String? productUnity;
  int? productPc;
  int? productCurrentPrice;
  int? productPreviesPrice;
  int? productTotalPrice;
  String? productTitle;
  String? productDescription;
  List<ProductSize>? productSize;
  List<ProductColor>? productColor;

  ProductDetailsModel(
  {
    this.id,
    this.image,
    this.productCode,
    this.productStock,
    this.productUnity,
    this.productPc,
    this.productCurrentPrice,
    this.productPreviesPrice,
    this.productTotalPrice,
    this.productTitle,
    this.productDescription

});

  static List<ProductDetailsModel> productdetailsinfo(){
    return [
      ProductDetailsModel(
        id: 1,
        image: ["","",""],
        productCode: 242,
        productStock: "Status",
        productUnity: "80-200 cm",
        productPc: 10,
        productCurrentPrice: 300,
        productPreviesPrice: 600,
        productTotalPrice: 2000,
        productTitle: 'About this item Title',
        productDescription: 'Lorem ipsum dolor sit amet consectetur. Tincidunt tortor ornare mauris feugiat purus egestas diam enim in. A pulvinar fringilla ullamcorper fringilla eu. Amet lectus nisl massa in metus. Dignissim sem ut proin egestas ornare. Quis purus at arcu bibendum'

      )
    ] ;
  }


}



class ProductSize{

String sizeName;

ProductSize({required this.sizeName});

static List<ProductSize> productSizeInfo(){

  return [
    ProductSize(
        sizeName: 'S'
    ),
    ProductSize(
        sizeName: 'M'
    ),
    ProductSize(
        sizeName: 'L'
    ),
    ProductSize(
        sizeName: 'Xl'
    ),
  ];
}


}

class ProductColor{

  String? name;
  String? code;

  ProductColor(this.name, this.code);
}

