import 'package:flutter/material.dart';
import 'package:test_task/resources/icons_path.dart';
import 'package:test_task/resources/images_path.dart';
import 'package:test_task/resources/thems.dart';
import 'package:test_task/util.dart';
import 'package:test_task/widgets/paymen_list_title.dart';
import 'package:test_task/resources/const_screens_date.dart';

class ListPaymentOptions extends StatefulWidget {
  final List<String> listCreditCart; //список кредитных карт
  final Function() onTapAddCreditCart;
  final Function(int index) callbackChoicePaymentMethod;
  const ListPaymentOptions(
      {Key? key,
      required this.listCreditCart,
      required this.onTapAddCreditCart,
      required this.callbackChoicePaymentMethod})
      : super(key: key);

  @override
  _ListPaymentOptionsState createState() => _ListPaymentOptionsState();
}

class _ListPaymentOptionsState extends State<ListPaymentOptions> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PaymentListTitle(
          isChek: value == widget.listCreditCart.length ? true : false,
          leading: Image.asset(kIconsPath.wallet, width: 30),
          onTap: () {
            setState(() {
              value = widget.listCreditCart.length;
            });
            widget.callbackChoicePaymentMethod(value);
          },
          title: RichText(
            text: TextSpan(
              text: kCartScreenData.WalletOnis1,
              style: kTextStyle.montserratRegular14Black,
              children: [
                TextSpan(
                    text: kCartScreenData.WalletOnis2,
                    style: kTextStyle.montserratRegular14),
              ],
            ),
          ),
        ),
        PaymentListTitle(
          backgroundColor: kColors.white,
          isChek: false,
          leading: InkWell(
            child: Icon(Icons.add_circle_outline),
            onTap: widget.onTapAddCreditCart,
          ),
          title: Text(
            kCartScreenData.addCard,
            style: kTextStyle.montserratRegular14Black,
          ),
        ),
        ...List.generate(
          widget.listCreditCart.length,
          (index) => PaymentListTitle(
            isChek: value == index,
            leading: Image.asset(
              kImagesPath.masterCard,
              width: 30,
            ),
            onTap: () {
              setState(() {
                value = index;
              });
              widget.callbackChoicePaymentMethod(value);
            },
            title: RichText(
              text: TextSpan(
                text: obscureCard(widget.listCreditCart[index]),
                style: kTextStyle.montserratRegular14Black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
