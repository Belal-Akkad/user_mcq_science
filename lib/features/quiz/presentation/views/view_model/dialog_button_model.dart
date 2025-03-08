class DialogButtonModel {
  final String buttonText;

  final void Function() onButtonPressed;
  DialogButtonModel({
    required this.onButtonPressed,
    required this.buttonText,
  });
}
