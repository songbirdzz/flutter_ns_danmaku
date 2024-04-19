import 'dart:ui';

class DanmakuOption {
  /// 默认的字体大小
  final double fontSize;

  /// 显示区域，0.1-1.0
  final double area;

  /// 滚动弹幕运行时间，秒
  final double duration;

  /// 不透明度，0.1-1.0
  final double opacity;

  /// 隐藏顶部弹幕
  final bool hideTop;

  /// 隐藏底部弹幕
  final bool hideBottom;

  /// 隐藏滚动弹幕
  final bool hideScroll;

  /// 弹幕描边
  final double strokeWidth;

  /// 文本是否有边框
  final bool strokeText;

  /// 字重
  final FontWeight fontWeight;

  DanmakuOption({
    this.fontSize = 16,
    this.area = 1.0,
    this.duration = 10,
    this.opacity = 1.0,
    this.hideBottom = false,
    this.hideScroll = false,
    this.hideTop = false,
    this.strokeText = true,
    this.strokeWidth = 2.0,
    this.fontWeight = FontWeight.normal,
  });

  DanmakuOption copyWith({
    double? fontSize,
    double? area,
    double? duration,
    double? opacity,
    bool? hideTop,
    bool? hideBottom,
    bool? hideScroll,
    bool? borderText,
    double? strokeWidth,
    FontWeight? fontWeight,
  }) {
    return DanmakuOption(
      area: area ?? this.area,
      fontSize: fontSize ?? this.fontSize,
      duration: duration ?? this.duration,
      opacity: opacity ?? this.opacity,
      hideTop: hideTop ?? this.hideTop,
      hideBottom: hideBottom ?? this.hideBottom,
      hideScroll: hideScroll ?? this.hideScroll,
      strokeText: borderText ?? this.strokeText,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      fontWeight: fontWeight ?? this.fontWeight,
    );
  }
}
