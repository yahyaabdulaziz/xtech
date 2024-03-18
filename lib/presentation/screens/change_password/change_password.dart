import 'package:flutter/material.dart';
import 'package:xtech/presentation/utils/app_theme.dart';

class ChangePassword extends StatefulWidget {
  static const String routeName = "ChangePassword";

  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Change Password",
          style: AppTheme.appBarTextStyle,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
          color: Colors.black,
        ),
        backgroundColor: Colors.grey.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Your new Password must be different from your previous password",
              style: AppTheme.appBarTextStyle.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 12),
            Container(
              margin: const EdgeInsets.all(6),
              child: Text(
                "Current Password",
                style: AppTheme.appBarTextStyle.copyWith(fontSize: 14),
              ),
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscured,
                focusNode: textFieldFocusNode,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  //Hides label on focus or if filled
                  filled: true,
                  // Needed for adding a fill color
                  fillColor: Colors.white,
                  isDense: true,
                  // Reduces height a bit
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none, // No border
                    borderRadius:
                        BorderRadius.circular(12), // Apply corner radius
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                    child: GestureDetector(
                      onTap: _toggleObscured,
                      child: Icon(
                        _obscured
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              margin: const EdgeInsets.all(6),
              child: Text(
                "New Password",
                style: AppTheme.appBarTextStyle.copyWith(fontSize: 14),
              ),
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscured,
                focusNode: textFieldFocusNode,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  //Hides label on focus or if filled
                  filled: true,
                  // Needed for adding a fill color
                  fillColor: Colors.white,
                  isDense: true,
                  // Reduces height a bit
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none, // No border
                    borderRadius:
                        BorderRadius.circular(12), // Apply corner radius
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                    child: GestureDetector(
                      onTap: _toggleObscured,
                      child: Icon(
                        _obscured
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              margin: const EdgeInsets.all(6),
              child: Text(
                "Confirm New Password",
                style: AppTheme.appBarTextStyle.copyWith(fontSize: 14),
              ),
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscured,
                focusNode: textFieldFocusNode,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  //Hides label on focus or if filled
                  filled: true,
                  // Needed for adding a fill color
                  fillColor: Colors.white,
                  isDense: true,
                  // Reduces height a bit
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none, // No border
                    borderRadius:
                        BorderRadius.circular(12), // Apply corner radius
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                    child: GestureDetector(
                      onTap: _toggleObscured,
                      child: Icon(
                        _obscured
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Password Must Contains : ",
              style: AppTheme.appBarTextStyle.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 8),
            buildPasswordCondition("Min 8 characters"),
            const SizedBox(height: 4),
            buildPasswordCondition("Lower-case letter"),
            const SizedBox(height: 4),
            buildPasswordCondition("Upper-case letter"),
            const SizedBox(height: 4),
            buildPasswordCondition("Special characters"),
            const SizedBox(height: 4),
            buildPasswordCondition("Numbers"),
            const SizedBox(height: 22),
            Container(
              margin: const EdgeInsets.all(12),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                  ),
                  onPressed: () {},
                  child: const Text('Submit',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildPasswordCondition(String text) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration:
              const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          child: const Icon(
            Icons.done_outlined,
            size: 14,
            color: Colors.deepPurple,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: AppTheme.appBarTextStyle.copyWith(fontSize: 14),
        )
      ],
    );
  }
}
