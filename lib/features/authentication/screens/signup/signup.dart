import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/form_divider.dart';
import 'package:t_store/common/widgets/social_button.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'signup_form.dart';
import 'terms.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///title
            Text(
              TTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            ///form
            const SignupForm(),

            const TermsAndConditional(),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            )

            ///elevated button
            ,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const VerifyEmailScreen());
                },
                child: const Text(TTexts.createAcc),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            ///divider
            const FormDivider(
              dividerText: TTexts.orSignUpWith,
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            const SocialButton()
          ],
        ),
      ),
    );
  }
}
