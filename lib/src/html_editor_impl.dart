import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:html_editor_enhanced/html_editor.dart';
import 'package:html_editor_enhanced/utils/plugins.dart';

/// HtmlEditor's implementation class
class HtmlEditorImpl {
  HtmlEditorImpl({
    Key key,
    @required this.controller,
    this.initialText,
    this.height = 380,
    this.decoration,
    this.showBottomToolbar = true,
    this.hint,
    this.callbacks,
    this.toolbar = const [
      Style(),
      Font(buttons: [
        FontButtons.bold,
        FontButtons.underline,
        FontButtons.clear
      ]),
      ColorBar(buttons: [ColorButtons.color]),
      Paragraph(buttons: [
        ParagraphButtons.ul,
        ParagraphButtons.ol,
        ParagraphButtons.paragraph
      ]),
      Insert(buttons: [
        InsertButtons.link,
        InsertButtons.picture,
        InsertButtons.video,
        InsertButtons.table
      ]),
      Misc(buttons: [
        MiscButtons.fullscreen,
        MiscButtons.codeview,
        MiscButtons.help
      ])
    ],
    this.plugins = const [],
    this.darkMode,
  });

  /// The controller that is passed to the widget, which allows multiple [HtmlEditor]
  /// widgets to be used on the same page independently.
  final HtmlEditorController controller;

  /// The initial text that is be supplied to the Html editor.
  final String initialText;

  /// Sets the height of the Html editor. If you decide to show the bottom toolbar,
  /// this height will be inclusive of the space the toolbar takes up.
  ///
  /// The default value is 380.
  final double height;

  /// The BoxDecoration to use around the Html editor. By default, the widget
  /// uses a thin, dark, rounded rectangle border around the widget.
  final BoxDecoration decoration;

  /// Specifies whether the bottom toolbar for picking an image or copy/pasting
  /// is shown on the widget.
  ///
  /// The default value is true.
  final bool showBottomToolbar;

  /// Sets the Html editor's hint (text displayed when there is no text in the
  /// editor).
  final String hint;

  /// Sets & activates Summernote's callbacks. See the functions available in
  /// [Callbacks] for more details.
  final Callbacks callbacks;

  /// Sets which options are visible in the toolbar for the editor.
  final List<Toolbar> toolbar;

  /// Sets the list of Summernote plugins enabled in the editor.
  final List<Plugins> plugins;

  /// Sets the editor to dark mode. `null` - switches with system, `false` -
  /// always light, `true` - always dark.
  ///
  /// The default value is null (switches with system).
  final bool darkMode;

  /// Allows the [InAppWebViewController] for the Html editor to be accessed
  /// outside of the package itself for endless control and customization.
  static InAppWebViewController get editorController => null;

  /// Gets the text from the editor and returns it as a [String].
  static Future<String> getText() async {
    return Future.value("impl");
  }
}
