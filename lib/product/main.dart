import 'package:flutter/material.dart';
import 'package:pizza_in/model/food.dart';
import 'package:pizza_in/model/menu.dart';
import 'package:pizza_in/product/gredients.dart';
import 'header.dart';
import 'footer.dart';
import 'customIcon.dart';


class ProductPageItem extends StatefulWidget {
  final  title;
  final id;
  
  ProductPageItem({Key key, this.title, this.id}) : super(key: key); 
  
  @override
  _ProductPageItemState createState() => new _ProductPageItemState();
}

class _ProductPageItemState extends State<ProductPageItem> with TickerProviderStateMixin {
  var id, title;
  Food food;
  
  @override
  void initState() {
      // TODO: implement initState
      super.initState();
      print(widget.id);
      print(widget.title);
      id = widget.id[0];
      title = widget.title[0];
      print(id);
      print(title);
      food = Menu.getFoodById(id.toString());
      
        
    }
  
  Widget favnPrice(Food food) {return new Padding(
    padding:
        const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0, bottom: 12.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
              new Text("Add to wishList")
            ],
          ),
          new Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text(
                  "\$",
                  style: new TextStyle(fontSize: 20.0),
                ),
              ),
              new Text(
                food.price,
                style: new TextStyle(fontSize: 35.0),
              )
            ],
          )
        ],
      ),
    );
  }


  Widget bottomBtns() { return new Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Expanded(
          child: new InkWell(
            onTap: () {},
            child: new ClipRRect(
              borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
              child: new Container(
                decoration: new BoxDecoration(
                    gradient: btnGradient,
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.black12,
                          offset: new Offset(0.0, 10.0))
                    ]
                  ),
                  height: 60.0,
                  child: new Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48.0),
                    child: new Center(
                      child: new Text(
                        "Buy Now",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Container(
              width: 60.0,
              height: 60.0,
              decoration: new BoxDecoration(
                  gradient: btnGradient,
                  shape: BoxShape.circle,
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                        blurRadius: 10.0,
                        color: Colors.black12,
                        offset: new Offset(0.0, 10.0))
                  ]),
              child: new Icon(
                Icons.add_shopping_cart,
                size: 25.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

   
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new ListView(
      children: <Widget>[
        new MHeader(food: food),
        favnPrice(food),
        divider,
        new Mfooter(food: food,),
        bottomBtns()
      ],
    ));
  }
}
