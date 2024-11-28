part of 'custom_button.dart';

_setPadding(ButtonPadding padding) {
  switch (padding) {
    default:
      return getPadding(
        all: 7,
      );
  }
}
enum ButtonPadding {
  PaddingAll7,
}
_buildDecoration({required Color buttonColor,required ButtonType type }) {
  return BoxDecoration(
    color: buttonColor,
    borderRadius: _setBorderRadius(type),
  );
}
_setBorderRadius(ButtonType type) {
  switch (type) {
    case ButtonType.SquareShort:
      return BorderRadius.circular(0);
    default:
      return BorderRadius.circular(
        getHorizontalSize(
          16.00,
        ),
      );
  }
}
enum ButtonType {
  SquareShort,
  SquareTall,
}