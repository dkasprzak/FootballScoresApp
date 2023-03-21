import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  Widget _buildHeaderText(){
    final List<InlineSpan> spans = [];

    const String text = 'Goal';
    for(int i = 0; i < text.length; i++){
      if(text[i] == 'o'){
        spans.add(
          const WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: SizedBox(
              height: 8.0,
              child: Icon(
                Icons.sports_soccer_rounded,
                size: 15.0,
              ),
            )
        ));
      }else{
        spans.add(
           TextSpan(
            text: text[i],
            style: const TextStyle(
              fontWeight: FontWeight.normal,
            ),
           ) 
        );
      }
    }

    spans.insert(4, 
      const TextSpan(
        text: 'Tracker',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 20,
        ),
        children: spans,
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
      Baseline(
        baseline: 20, 
        baselineType: TextBaseline.alphabetic,
        child: _buildHeaderText(),
      ),
     ],
    );
  }
}