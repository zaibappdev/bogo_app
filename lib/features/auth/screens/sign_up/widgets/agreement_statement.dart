import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../../../../../core/utils/constants/app_sizes.dart';
import '../../../../../core/utils/constants/app_strings.dart';
import '../../../../../core/utils/constants/app_styles.dart';
import 'check_box.dart';

class AgreementStatement extends StatelessWidget {
  const AgreementStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: AppStrings.termsAndCondition,
                  style: _sZ16w500(),
                  children: [
                    TextSpan(
                      text: AppStrings.termsAndServices,
                      style: _sZ16w500(textColor: Colors.red),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                    TextSpan(text: " and ", style: _sZ16w500()),
                    TextSpan(
                      text: AppStrings.privacyPolicy,
                      style: _sZ16w500(textColor: Colors.red),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          CustomCheckBox(),
        ],
      ),
    );
  }
}

TextStyle _sZ16w500({Color? textColor}) {
  return BAppStyles.poppins(
    color: textColor ?? Colors.white,
    fontSize: BSizes.fontSizeMd,
    weight: FontWeight.w500,
  );
}
