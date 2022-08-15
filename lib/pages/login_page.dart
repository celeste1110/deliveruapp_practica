
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../ui/general/colors.dart';
import '../ui/widgets/InputTextFieldWidget.dart';
import '../ui/widgets/button_normal_widget.dart';
import '../ui/widgets/general_widgets.dart';
import '../ui/widgets/input_textfield_password_widdget.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(

        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  // key: _formKey,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      divider6(),

                      Center(
                        child: Image.asset(

                          'assets/images/delivery.gif',
                          height: 310,
                        ),
                      ),

                      // SvgPicture.asset(
                      //
                      //   'assets/images/delivery.svg',
                      //   height: 120,
                      // ),

                      const Text(
                        "Bienvenido",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w600,
                        ),

                      ),
                      divider12(),

                      const Text(
                        "Por favor, ingresa tus credenciales",
                        style: TextStyle(
                          color: Colors.black54,
                        ),

                      ),
                      divider12(),
                      InputTextFieldWidget(
                        hintText: "Email",
                        // maxLength: 8,
                        textInputType: TextInputType.number,
                         controller: _userController,
                      ),
                      InputTextFieldPasswordWidget(
                        controller: _passwordController,
                      ),
                      divider20(),
                      ButtonNormalWidget(
                        title: "Iniciar Sesión",
                        onPressed: () {
                          // _login();
                        },
                      ),
                      divider20(),
                      RichText(
                        text: const TextSpan(
                          text: "¿Aún no estás registrado?  ",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black26,
                          ),
                          children: [
                            TextSpan(
                              text: " Regístrate",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: kBrandSecondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // isLoading
          //     ? Container(
          //   color: kBrandPrimaryColor.withOpacity(0.85),
          //   child: const Center(
          //     child: SizedBox(
          //       width: 20,
          //       height: 20,
          //       child: CircularProgressIndicator(
          //         color: kBrandSecondaryColor,
          //         strokeWidth: 2.3,
          //       ),
          //     ),
          //   ),
          // )
          //     : const SizedBox(),
        ],
      ),


    );
  }
}
