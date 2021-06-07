import 'package:covid/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:covid/constants/constants.dart';
import 'package:covid/widgets/bottom_button.dart';

class PostPrecautions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post COVID Precautions'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          'The Need of Post COVID Care',
                          style: kResultsTextStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'The coronavirus is a nasty microbe that can do a lot of damage to your body. If your infection was moderate to severe, it is possible that the virus did some amount of damage to your respiratory system. \n\nEven people with mild infection have to be alert in the post-infection stage because symptoms of other health conditions triggered by the coronavirus may surface. The body becomes weak after having battled the dangerous virus for so many days. \n\nYou may feel drained and lethargic, which is quite natural. That is why, even if your body has killed off all the viruses, you still need to shower yourself with a lot of love and care. This will ensure that you are completely healed and if there is any requirement for additional healthcare checks, you will be able to take the right action at the right time. ',
                        style: kBodyTextStyle,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          '6 Post COVID Precautions',
                          style: kResultsTextStyle,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Take rest',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Most doctors suggest that you stay isolated for another 7 days, especially now that some studies have found that even if the symptoms disappear, the virus may still linger in your body. If possible give yourself a week of complete rest after recovery. A well-rested body can focus on healing. Get enough sleep because when you sleep, your body speeds up the recovery procedure. Do not resume your old lifestyle right away. Too much work, stress and anxiety will make you ill.',
                        style: kBodyTextStyle,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Have a nutritious diet',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Food eases the path to recovery. The right kind of food will help you gain your strength back in days. Make sure your diet includes plenty of proteins such as lentil soup, legumes, seeds, nuts,  boiled eggs, and chicken stew. Proteins repair the body. Eat small portions for easy digestion. Don’t forget to eat at least 1 fruit a day. Drink plenty of water to stay hydrated.',
                        style: kBodyTextStyle,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Exercise a little every day',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Exercising may sound unappealing, but it is essential for a speedy recovery. Working out improves blood and oxygen circulation. It helps to detoxify your body. It can also help your brain produce more happiness hormones which will lift your spirits – something that is greatly needed after you’ve contracted COVID. Only exercise as much as you can. Do your favourite kinds of exercise and don’t push yourself too much. 10 minutes a day will suffice.',
                        style: kBodyTextStyle,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Play a few memory games',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'COVID is known to damage brain and neural cells. To prevent future memory problems, try playing some memory games like sudoku, mathdoku, crossword, jigsaw, etc. this will also help you while away the time without getting bored and irritated.',
                        style: kBodyTextStyle,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Check your blood oxygen level',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Continue to monitor your blood oxygen saturation level with your oximeter. Even if you have recovered from COVID, there could be lung damage that you don’t know of. If so, your oxygen level will fluctuate and dip below 90. You will need to visit the doctor.',
                        style: kBodyTextStyle,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          'Watch out for other symptoms',
                          style: kResultsTextStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'COVID can have long-term consequences for your health. So you have to be alert. COVID can cause both lung and heart damage. If you begin to experience shortness of breath, tightness in the chest, warm flushes, consult a doctor right away. \n\nCOVID care is essential and should not be ignored. This is a great investment for your future health!',
                        style: kBodyTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //remove bottom button for now (design stage)

          // BottomButton(
          //     onTap: () {
          //       Navigator.pop(context);
          //       Navigator.pop(context);
          //       Navigator.pop(context);
          //       Navigator.pop(context);
          //       Navigator.pop(context);
          //       Navigator.pop(context);
          //       Navigator.pop(context);
          //     },
          //     buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
