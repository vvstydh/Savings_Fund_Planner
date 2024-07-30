import 'package:flutter/material.dart';
import 'package:savings_fund_planner/core/theme/theme.dart';
import 'package:savings_fund_planner/features/helper/presentation/advice_widget.dart';
import 'package:savings_fund_planner/features/helper/presentation/helper_mobx.dart';

class Helper extends StatelessWidget {
  const Helper({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      'Automate transfers',
      'Count your coins and bills',
      'Prep for grocery shopping',
      'Minimize restaurant spending',
      'Get discounts on entertainment',
      'Map out major purchases',
      'Restrict online shopping',
      'Delay purchases with the 30-day rule',
      'Get creative with gifts',
      'Cancel unnecessary subscriptions'
    ];
    final List<String> titlesText = [
      'By setting up automatic transfers from your checking account to your savings account each month, the money will accumulate over time without any additional work on your part. This technique can be especially useful when your savings accounts are dedicated to specific goals, such as establishing an emergency fund, going on a vacation or building a down payment.',
      'Another option is saving your change manually by setting it aside each night. After you have a sizable amount, you can deposit it directly into your savings and watch your account grow from there. In fact, when you want to watch your spending, it’s a good idea to use cash instead of credit cards because it can be harder to part with physical money. While this strategy doesn`t build savings overnight, it`s a solid approach for slow-and-steady savings growth.',
      'A little work before you go to the grocery store can go a long way toward helping you save money on groceries. Check your pantry and make a shopping list to avoid impulse buying something you don`t need. Learn how to get coupons and join loyalty programs to maximize your savings as you shop. In exchange for sharing your phone number or email address, your local store`s loyalty program might offer additional discounts.',
      'One of the easiest expenses to cut when you want to save more is restaurant meals, since eating out tends to be pricier than cooking at home. If you do still want to eat at restaurants, try to reduce the frequency and take advantage of credit cards that reward restaurant spending.\n You can also opt for appetizers or split an entree with your dining companion to save money when you eat out. Skipping drinks and dessert or indulging in both at home post-dinner can help stretch your budget as well.',
      'You can take advantage of free days at museums and national parks to save on entertainment costs. Your local community might offer free concerts and other in-person or virtual events; check your local calendar before splurging on pricey tickets to private events. You can also ask about discounts for older adults, students, military members or veterans, first responders and more.',
      'You can save by timing your purchases of appliances, furniture, cars, electronics and more according to annual sale periods. It’s also worth confirming a deal is actually a deal by tracking prices over time. You can let tools do this step for you; the Camelizer browser extension tracks prices on Amazon and can alert you of price drops. The Honey browser extension pulls in coupon codes and checks for lower prices elsewhere.',
      'You can make it more difficult to shop online to stop spending money on things you may not need. Instead of saving your billing information, opt to input your shipping address and credit card number each time you order. You’ll probably make fewer impulse purchases because of the extra work involved. You may even consider deleting any shopping apps from your phone for the time being.',
      'One way to avoid overspending is to give yourself a cooling-off period between the time an item catches your eye and when you actually make the purchase. If you’re shopping online, consider putting the item in your shopping cart and then walking away until you’ve had more time to think it over. (In some cases, you might even get a coupon code when the retailer notices you abandoned the cart.) If 30 days seems like too long to wait, you can try shorter periods like a 24- or 48-hour delay.',
      'You can save money with affordable gift ideas, like herb gardens and books, or go the do-it-yourself route. Baking cookies, creating art or preparing someone dinner can demonstrate that you care just as much as making an expensive purchase, and perhaps even more so. You can also shower someone with the gift of your time by offering to take them to a local (free) museum or other event.',
      'You might be paying for subscriptions you no longer use or need. Reviewing your credit card or bank statement carefully can help you flag any recurring expenses you can eliminate. And avoid signing up for free trials that require payment information, or at least make a note or set a calendar reminder to cancel before the free period ends.',
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: theme.colorScheme.primary,
          centerTitle: true,
          title: Text(
            'Helper',
            style: theme.textTheme.labelLarge,
          ),
        ),
        backgroundColor: theme.colorScheme.primary,
        body: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return AdviceWidget(
                  title: titles[index],
                  titleText: titlesText[index],
                  index: index,
                  functions: HelperMobX());
            }));
  }
}
