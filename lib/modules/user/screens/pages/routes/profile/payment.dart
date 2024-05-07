import 'package:flutter/material.dart';
import 'package:logitrack/utils/responsivesize.dart';
import 'package:logitrack/widgets/container.dart';
import 'package:logitrack/widgets/text_style.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  Widget dividerwidget() {
    return const Divider(
      thickness: 1,
      color: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveHelper.getWidth(context) * .050,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .030,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(
                      ResponsiveHelper.getWidth(context) * .030,
                    ),
                    elevation: 4,
                    child: Container(
                      width: double.infinity,
                      height: ResponsiveHelper.getHeight(context) * .130,
                      child: Row(
                        children: [
                          SizedBox(
                            width: ResponsiveHelper.getWidth(context) * .050,
                          ),
                          Container(
                            width: ResponsiveHelper.getWidth(context) * .150,
                            height: ResponsiveHelper.getHeight(context) * .080,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/Wallet.png',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveHelper.getWidth(context) * .050,
                          ),
                          Text(
                            'My Wallet',
                            style: TextStyle(
                              fontSize:
                                  ResponsiveHelper.getWidth(context) * .060,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .030,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: ResponsiveHelper.getWidth(context) * .060,
                      ),
                      const Text(
                        'Choose Payment',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .030,
                  ),
                  PaymentListtilewidget(
                    image: 'assets/images/payment/Google pay.png',
                    ontap: () {},
                  ),
                  PaymentListtilewidget(
                    image: 'assets/images/payment/paytm.png',
                    ontap: () {},
                  ),
                  PaymentListtilewidget(
                    image: 'assets/images/payment/phonepay.png',
                    ontap: () {},
                  ),
                  PaymentListtilewidget(
                    image: 'assets/images/payment/paypal.png',
                    ontap: () {},
                  ),
                  PaymentListtilewidget(
                    image: 'assets/images/payment/bank.png',
                    ontap: () {},
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .050,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ResponsiveHelper.getWidth(context) * .060,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Price Details',
                              style: AppTextStyles.boldText(
                                fontSize:
                                    ResponsiveHelper.getWidth(context) * .040,
                              ),
                            ),
                          ],
                        ),
                        dividerwidget(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Package Price',
                              style: AppTextStyles.regularText(
                                fontSize:
                                    ResponsiveHelper.getWidth(context) * .050,
                              ),
                            ),
                            Text(
                              '\$400',
                              style: AppTextStyles.regularText(
                                fontSize:
                                    ResponsiveHelper.getWidth(context) * .050,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ResponsiveHelper.getHeight(context) * .020,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Taxes',
                              style: AppTextStyles.regularText(
                                fontSize:
                                    ResponsiveHelper.getWidth(context) * .040,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '\$8.3',
                              style: AppTextStyles.regularText(
                                fontSize:
                                    ResponsiveHelper.getWidth(context) * .040,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ResponsiveHelper.getHeight(context) * .020,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery changes',
                              style: AppTextStyles.regularText(
                                color: Colors.grey,
                                fontSize:
                                    ResponsiveHelper.getWidth(context) * .040,
                              ),
                            ),
                            Text(
                              '15',
                              style: AppTextStyles.regularText(
                                color: Colors.grey,
                                fontSize:
                                    ResponsiveHelper.getWidth(context) * .040,
                              ),
                            ),
                          ],
                        ),
                        dividerwidget(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Package Total',
                              style: AppTextStyles.regularText(
                                fontSize:
                                    ResponsiveHelper.getWidth(context) * .040,
                              ),
                            ),
                            Text(
                              '400',
                              style: AppTextStyles.regularText(
                                fontSize:
                                    ResponsiveHelper.getWidth(context) * .040,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ResponsiveHelper.getHeight(context) * .040,
                        ),
                        GestureDetector(
                          //
                          child: ContainerWidget(
                            width: double.infinity,
                            height: ResponsiveHelper.getHeight(context) * .060,
                            text: 'Place Order',
                            radius: ResponsiveHelper.getWidth(context) * .050,
                          ),
                        ),
                        SizedBox(
                          height: ResponsiveHelper.getHeight(context) * .040,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentListtilewidget extends StatelessWidget {
  final String image;
  final VoidCallback ontap;
  const PaymentListtilewidget({
    super.key,
    required this.image,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: SizedBox(
        width: ResponsiveHelper.getWidth(context) * .180,
        height: ResponsiveHelper.getHeight(context) * .080,
        child: Image.asset(image),
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded),
    );
  }
}
