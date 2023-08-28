import 'package:flutter/material.dart';
import 'package:flutter_puzzle/constant/color/palette.dart';
import 'package:flutter_puzzle/constant/number/radius_numbers.dart';
import 'package:flutter_puzzle/entity/game_model.dart';

class GameItem extends StatelessWidget {

  GameModel gameModel;


  GameItem(this.gameModel){


  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 8),

      height: 55,
      width: 55,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(main_radius),
        color: Palette.secondary.withOpacity(0.8),
          boxShadow: [
            BoxShadow(
                offset: Offset(4,4),
                blurRadius: 10,
                spreadRadius: 5,
                color: Palette.secondary.withOpacity(0.5)
            )
          ]
      ),
      child:
        () {
          switch(gameModel.pieces!){
            case PIECES.NOTHING: return Image.asset('/icon/bomb3.png',fit: BoxFit.fill,);
            case PIECES.INIT: return Image.asset('/icon/atyscode.png',fit: BoxFit.fill,);
            case PIECES.BOMB: return Image.asset('/icon/bomb2.png',fit: BoxFit.fill,);
            case PIECES.GEM: return Image.asset('/icon/gem.png',fit: BoxFit.fill,);
          }
        }(),

    );
  }
}
