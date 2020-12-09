import 'package:flutter/material.dart';
import 'package:share/share.dart';

class QuoteWidget extends StatelessWidget {
  var quote = "";
  var author = "";
  var onShareClick;
  var onLikeClick;
  var bgColor;

  QuoteWidget({this.bgColor,this.quote, this.author, this.onShareClick, this.onLikeClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(
            flex: 2,
          ),
          Image.asset(
            "assets/quote.png",
            height: 30,
            width: 30,
            color: Colors.white,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
              quote,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 26.0,
                  color: Colors.white
              )
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '-' + author,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.0,
                color: Colors.white
            ),
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: ()
                  {
                    final RenderBox box = context.findRenderObject();
                    Share.share(quote + '  -' + author,
                        sharePositionOrigin:
                        box.localToGlobal(Offset.zero) &
                        box.size);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.white)),
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
