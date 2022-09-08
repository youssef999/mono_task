

import 'package:equatable/equatable.dart';

class Design extends Equatable {

 final int id;

 final String title;

 final String image;

 final String details,designer;

 final int price;

 final double vote;




 const Design({
  required this.id,
  required this.title,
  required this.image,
  required this.details,
  required this.designer,
  required this.vote,
  required this.price,

 });



 @override
 // TODO: implement props
 List<Object?> get props => [
  id,
  title,
  image,
  designer,
  price,
  details
 ];
}