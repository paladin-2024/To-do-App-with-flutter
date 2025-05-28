
import 'package:flutter/material.dart';
import 'package:to_do_app/constraints/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding:EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
           searchBox(),
          ],
        ),
      ),
    );
  }

  Widget searchBox(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration:BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color:tdBlack,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(
                maxHeight: 20,
                maxWidth: 25
            ),
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(color: tdGrey)
        ),
      ),
    );
  }



  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("asseets/images/avatar.jpg")
          ),
        )
      ],),
    );
  }
}