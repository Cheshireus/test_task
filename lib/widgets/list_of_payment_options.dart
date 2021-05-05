import 'package:flutter/material.dart';
import 'package:test_task/resources/theme.dart';
import 'package:test_task/util.dart';
import 'package:test_task/widgets/paymen_list_title.dart';

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
          leading: Image.asset('assets/images/wallet.png', width: 30),
          onTap: () {
            setState(() {
              value = widget.listCreditCart.length;
            });
            widget.callbackChoicePaymentMethod(value);
          },
          title: RichText(
            text: TextSpan(
              text: 'Use money from my wallet ',
              style: kTextStyle.montserratRegular14Black,
              children: [
                TextSpan(text: '0NIS', style: kTextStyle.montserratRegular14),
              ],
            ),
          ),
        ),
        PaymentListTitle(
          isChek: false,
          leading: InkWell(
            child: Icon(Icons.add_circle_outline),
            onTap: widget.onTapAddCreditCart,
          ),
          title: Text(
            'Add credit card',
            style: kTextStyle.montserratRegular14Black,
          ),
        ),
        ...List.generate(
          widget.listCreditCart.length,
          (index) => PaymentListTitle(
            isChek: value == index,
            leading: Image.asset(
              'assets/images/master_card_image.png',
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
