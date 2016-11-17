@JS()
library Users.ennis.Projects.Dart_Stubs.vexflow_gen_stub.vexflow;

import "package:js/js.dart";
import "dart:html" show CanvasRenderingContext2D, TextMetrics, HtmlElement;
import "dart:svg" show Rect;

/// Type definitions for VexFlow v1.2.27
/// Project: http://vexflow.com
/// Definitions by: Roman Quiring <https://github.com/rquiring>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

/// inconsistent namespace: this is a helper funtion from tables.js and should not pollute the global namespace!

// Module Vex
@JS("Vex.L")
external void L(String block, List<dynamic> args);
@JS("Vex.Merge")
external dynamic/*=T*/ Merge/*<T extends Object>*/(
    dynamic/*=T*/ destination, Object source);
@JS("Vex.Min")
external num Min(num a, num b);
@JS("Vex.Max")
external num Max(num a, num b);
@JS("Vex.RoundN")
external num RoundN(num x, num n);
@JS("Vex.MidLine")
external num MidLine(num a, num b);
@JS("Vex.SortAndUnique")
external dynamic/*=T*/ SortAndUnique/*<T extends List<dynamic>>*/(
    dynamic/*=T*/ arr, Function cmp, Function eq);
@JS("Vex.Contains")
external bool Contains(List<dynamic> a, dynamic obj);
@JS("Vex.getCanvasContext")
external CanvasRenderingContext2D getCanvasContext(String canvas_sel);
@JS("Vex.drawDot")
external void drawDot(IRenderContext ctx, num x, num y, [String color]);
@JS("Vex.BM")
external void BM(num s, Function f);
@JS("Vex.Inherit")
external dynamic/*=T*/ Inherit/*<T extends Object>*/(
    dynamic/*=T*/ child, Object parent, Object object);

@JS("Vex.RuntimeError")
class RuntimeError {
  // @Ignore
  RuntimeError.fakeConstructor$();
  external factory RuntimeError(String code, String message);
}

@JS("Vex.RERR")
class RERR {
  // @Ignore
  RERR.fakeConstructor$();
  external factory RERR(String code, String message);
}

/// Helper interface for handling the different rendering contexts (i.e. CanvasContext, RaphaelContext, SVGContext). Not part of VexFlow!
@anonymous
@JS()
abstract class IRenderContext {
  external void clear();
  external IRenderContext setFont(String family, num size, [num weight]);
  external IRenderContext setRawFont(String font);
  external IRenderContext setFillStyle(String style);
  external IRenderContext setBackgroundFillStyle(String style);
  external IRenderContext setStrokeStyle(String style);
  external IRenderContext setShadowColor(String color);
  external IRenderContext setShadowBlur(String blur);
  external IRenderContext setLineWidth(num width);
  external IRenderContext setLineCap(String cap_type);
  external IRenderContext setLineDash(String dash);
  external IRenderContext scale(num x, num y);
  external IRenderContext resize(num width, num height);
  external IRenderContext fillRect(num x, num y, num width, num height);
  external IRenderContext clearRect(num x, num y, num width, num height);
  external IRenderContext beginPath();
  external IRenderContext moveTo(num x, num y);
  external IRenderContext lineTo(num x, num y);
  external IRenderContext bezierCurveToTo(
      num x1, num y1, num x2, num y2, num x, num y);
  external void quadraticCurveToTo(num x1, num y1, num x2, num y2);
  external IRenderContext arc(num x, num y, num radius, num startAngle,
      num endAngle, bool antiClockwise);
  external IRenderContext glow();
  external IRenderContext fill();
  external IRenderContext stroke();
  external IRenderContext closePath();
  external IRenderContext fillText(String text, num x, num y);
  external IRenderContext save();
  external IRenderContext restore();

  /// canvas returns TextMetrics, SVG returns SVGRect, Raphael returns {width : number, height : number}. Only width is used throughout VexFlow.
  external dynamic /*{width : number}*/ measureText(String text);
}

/// Helper interface for handling the Vex.Flow.Font object in Vex.Flow.Glyph. Not part of VexFlow!
@anonymous
@JS()
abstract class IFont {
  external List<
          dynamic /*{x_min : number, x_max : number, ha : number, o : string[]}*/ >
      get glyphs;
  external set glyphs(
      List<
          dynamic /*{x_min : number, x_max : number, ha : number, o : string[]}*/ > v);
  external String get cssFontWeight;
  external set cssFontWeight(String v);
  external num get ascender;
  external set ascender(num v);
  external num get underlinePosition;
  external set underlinePosition(num v);
  external String get cssFontStyle;
  external set cssFontStyle(String v);
  external dynamic /*{yMin : number, xMin : number, yMax : number, xMax : number}*/ get boundingBox;
  external set boundingBox(
      dynamic /*{yMin : number, xMin : number, yMax : number, xMax : number}*/ v);
  external num get resolution;
  external set resolution(num v);
  external num get descender;
  external set descender(num v);
  external String get familyName;
  external set familyName(String v);
  external num get lineHeight;
  external set lineHeight(num v);
  external num get underlineThickness;
  external set underlineThickness(num v);

  /// This property is missing in vexflow_font.js, but present in gonville_original.js and gonville_all.js.
  external dynamic /*{postscript_name : string, version_string : string, vendor_url : string, full_font_name : string, font_family_name : string, copyright : string, description : string, trademark : string, designer : string, designer_url : string, unique_font_identifier : string, license_url : string, license_description : string, manufacturer_name : string, font_sub_family_name : string}*/ get original_font_information;
  external set original_font_information(
      dynamic /*{postscript_name : string, version_string : string, vendor_url : string, full_font_name : string, font_family_name : string, copyright : string, description : string, trademark : string, designer : string, designer_url : string, unique_font_identifier : string, license_url : string, license_description : string, manufacturer_name : string, font_sub_family_name : string}*/ v);
  external factory IFont(
      {List<
          dynamic /*{x_min : number, x_max : number, ha : number, o : string[]}*/ > glyphs,
      String cssFontWeight,
      num ascender,
      num underlinePosition,
      String cssFontStyle,
      dynamic /*{yMin : number, xMin : number, yMax : number, xMax : number}*/ boundingBox,
      num resolution,
      num descender,
      String familyName,
      num lineHeight,
      num underlineThickness,
      dynamic /*{postscript_name : string, version_string : string, vendor_url : string, full_font_name : string, font_family_name : string, copyright : string, description : string, trademark : string, designer : string, designer_url : string, unique_font_identifier : string, license_url : string, license_description : string, manufacturer_name : string, font_sub_family_name : string}*/ original_font_information});
}

// Module Flow
@JS("Vex.Flow.RESOLUTION")
external num get RESOLUTION;

/// from tables.js:
@JS("Vex.Flow.STEM_WIDTH")
external num get STEM_WIDTH;
@JS("Vex.Flow.STEM_HEIGHT")
external num get STEM_HEIGHT;
@JS("Vex.Flow.STAVE_LINE_THICKNESS")
external num get STAVE_LINE_THICKNESS;
@JS("Vex.Flow.TIME4_4")
external dynamic /*{num_beats : number, beat_value : number, resolution : number}*/ get TIME4_4;
@JS("Vex.Flow.unicode")
external dynamic /*JSMap of <String,String>*/ get unicode;
@JS("Vex.Flow.clefProperties")
external dynamic /*{line_shift : number}*/ clefProperties(String clef);
@JS("Vex.Flow.keyProperties")
external dynamic /*{key : string, octave : number, line : number, int_value : number, accidental : string, code : number, stroke : number, shift_right : number, displaced : boolean}*/ keyProperties(
    String key, String clef, dynamic /*{octave_shift? : number}*/ params);
@JS("Vex.Flow.integerToNote")
external String integerToNote(num integer);
@JS("Vex.Flow.tabToGlyph")
external dynamic /*{text : string, code : number, width : number, shift_y : number}*/ tabToGlyph(
    String fret);
@JS("Vex.Flow.textWidth")
external num textWidth(String text);
@JS("Vex.Flow.articulationCodes")
external dynamic /*{code : string, width : number, shift_right : number, shift_up : number, shift_down : number, between_lines : boolean}*/ articulationCodes(
    String artic);
@JS("Vex.Flow.accidentalCodes")
external dynamic /*{code : string, width : number, gracenote_width : number, shift_right : number, shift_down : number}*/ accidentalCodes(
    String acc);
@JS("Vex.Flow.ornamentCodes")
external dynamic /*{code : string, shift_right : number, shift_up : number, shift_down : number, width : number}*/ ornamentCodes(
    String acc);
@JS("Vex.Flow.keySignature")
external List<dynamic /*{type: string, line: number}*/ > keySignature(
    String spec);
@JS("Vex.Flow.parseNoteDurationString")
external dynamic /*{duration : string, dots : number, type : string}*/ parseNoteDurationString(
    String durationString);
@JS("Vex.Flow.parseNoteData")
external dynamic /*{duration : string, type : string, dots : number, ticks : number}*/ parseNoteData(
    dynamic /*{duration : string, dots : number, type : string}*/ noteData);
@JS("Vex.Flow.durationToFraction")
external Fraction durationToFraction(String duration);
@JS("Vex.Flow.durationToNumber")
external num durationToNumber(String duration);
@JS("Vex.Flow.durationToTicks")
external num durationToTicks(String duration);
@JS("Vex.Flow.durationToGlyph")
external dynamic /*{head_width : number, stem : boolean, stem_offset : number, flag : boolean, stem_up_extension : number, stem_down_extension : number, gracenote_stem_up_extension : number, gracenote_stem_down_extension : number, tabnote_stem_up_extension : number, tabnote_stem_down_extension : number, dot_shiftY : number, line_above : number, line_below : number, code_head? : string, rest? : boolean, position? : string}*/ durationToGlyph(
    String duration, String type);

/// from glyph.js:
@JS("Vex.Flow.renderGlyph")
external void renderGlyph(IRenderContext ctx, num x_pos, num y_pos, num point,
    String val, bool nocache);

/// from vexflow_font.js / gonville_original.js / gonville_all.js
@JS("Vex.Flow.Font")
external dynamic
    /*{
            glyphs : {x_min : number, x_max : number, ha : number, o : string[]}[];
            cssFontWeight : string;
            ascender : number;
            underlinePosition : number;
            cssFontStyle : string;
            boundingBox : {yMin : number, xMin : number, yMax : number, xMax : number};
            resolution : number;
            descender : number;
            familyName : string;
            lineHeight : number;
            underlineThickness : number;

            //inconsistent member : this is missing in vexflow_font.js, but present in gonville_original.js and gonville_all.js
            original_font_information : {postscript_name : string, version_string : string, vendor_url : string, full_font_name : string, font_family_name : string, copyright : string, description : string, trademark : string, designer : string, designer_url : string, unique_font_identifier : string, license_url : string, license_description : string, manufacturer_name : string, font_sub_family_name : string};
        }*/
    get Font;
@JS("Vex.Flow.Font")
external set Font(
    dynamic /*{
            glyphs : {x_min : number, x_max : number, ha : number, o : string[]}[];
            cssFontWeight : string;
            ascender : number;
            underlinePosition : number;
            cssFontStyle : string;
            boundingBox : {yMin : number, xMin : number, yMax : number, xMax : number};
            resolution : number;
            descender : number;
            familyName : string;
            lineHeight : number;
            underlineThickness : number;

            //inconsistent member : this is missing in vexflow_font.js, but present in gonville_original.js and gonville_all.js
            original_font_information : {postscript_name : string, version_string : string, vendor_url : string, full_font_name : string, font_family_name : string, copyright : string, description : string, trademark : string, designer : string, designer_url : string, unique_font_identifier : string, license_url : string, license_description : string, manufacturer_name : string, font_sub_family_name : string};
        }*/
    v);

@JS("Vex.Flow.Accidental")
class Accidental extends Modifier {
  // @Ignore
  Accidental.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes
  /*external Modifier setNote(Note note);*/
  /*external void setNote(StaveNote note);*/
  external dynamic /*Modifier|Null*/ setNote(dynamic /*Note|StaveNote*/ note);
  external factory Accidental(String type);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external static void format(List<Accidental> accidentals,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state);
  external Accidental setAsCautionary();
  external void draw();
  external static void applyAccidentals(List<Voice> voices,
      [String keySignature]);
}

// Module Accidental
@JS("Vex.Flow.Accidental.CATEGORY")
external String get CATEGORY;

// End module Accidental
@JS("Vex.Flow.Annotation")
class Annotation extends Modifier {
  // @Ignore
  Annotation.fakeConstructor$() : super.fakeConstructor$();
  external factory Annotation(String text);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external static bool format(List<Annotation> annotations,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state);
  external Annotation setTextLine(num line);
  external Annotation setFont(String family, num size, String weight);
  external Annotation setVerticalJustification(
      num /*enum Annotation.VerticalJustify*/ just);
  external num /*enum Annotation.Justify*/ getJustification();
  external Annotation setJustification(
      num /*enum Annotation.Justify*/ justification);
  external void draw();
}

// Module Annotation
@JS("Vex.Flow.Annotation.Justify")
class Justify {
  external static num get LEFT;
  external static num get CENTER;
  external static num get RIGHT;
  external static num get CENTER_STEM;
}

@JS("Vex.Flow.Annotation.VerticalJustify")
class VerticalJustify {
  external static num get TOP;
  external static num get CENTER;
  external static num get BOTTOM;
  external static num get CENTER_STEM;
}

@JS("Vex.Flow.Annotation.CATEGORY")
external String get Annotation_CATEGORY;

// End module Annotation
@JS("Vex.Flow.Articulation")
class Articulation extends Modifier {
  // @Ignore
  Articulation.fakeConstructor$() : super.fakeConstructor$();
  external factory Articulation(String type);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external static bool format(List<Articulation> articulations,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state);
  external void draw();
}

// Module Articulation
@JS("Vex.Flow.Articulation.CATEGORY")
external String get Articulation_CATEGORY;

// End module Articulation
@JS("Vex.Flow.BarNote")
class BarNote extends Note {
  // @Ignore
  BarNote.fakeConstructor$() : super.fakeConstructor$();
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external num /*enum Barline.type*/ getType();
  external BarNote setType(num /*enum Barline.type*/ type);
  external BoundingBox getBoundingBox();
  external BarNote addToModifierContext();
  external BarNote preFormat();
  external void draw();
}

// Module Barline
@JS("Vex.Flow.Barline.type")
class barType {
  external static num get SINGLE;
  external static num get DOUBLE;
  external static num get END;
  external static num get REPEAT_BEGIN;
  external static num get REPEAT_END;
  external static num get REPEAT_BOTH;
  external static num get NONE;
}

// End module Barline
@JS("Vex.Flow.Barline")
class Barline extends StaveModifier {
  // @Ignore
  Barline.fakeConstructor$() : super.fakeConstructor$();
  external factory Barline(num /*enum Barline.type*/ type, num x);
  external String getCategory();
  external Barline setX(num x);
  external void draw(Stave stave, [num x_shift]);
  external void drawVerticalBar(Stave stave, num x, [bool double_bar]);
  external void drawVerticalEndBar(Stave stave, num x);
  external void drawRepeatBar(Stave stave, num x, bool begin);
}

@JS("Vex.Flow.Beam")
class Beam {
  // @Ignore
  Beam.fakeConstructor$();
  external factory Beam(List<StemmableNote> notes, [bool auto_stem]);
  external Beam setContext(IRenderContext context);
  external List<StemmableNote> getNotes();
  external num getBeamCount();
  external Beam breakSecondaryAt(List<num> indices);
  external num getSlopeY();
  external void calculateSlope();
  external void applyStemExtensions();
  external List<dynamic /*{start : number, end : number}*/ > getBeamLines(
      String duration);
  external void drawStems();
  external void drawBeamLines();
  external Beam preFormat();
  external Beam postFormat();
  external bool draw();
  external num calculateStemDirection(Note notes);
  external static List<Fraction> getDefaultBeamGroups(String time_sig);
  external static List<Beam> applyAndGetBeams(
      Voice voice, num stem_direction, List<Fraction> groups);
  external static List<Beam> generateBeams(List<StemmableNote> notes,
      [dynamic /*{groups? : Fraction[], stem_direction? : number, beam_rests? : boolean, beam_middle_only? : boolean, show_stemlets? : boolean, maintain_stem_directions? : boolean}*/ config]);
}

@JS("Vex.Flow.Bend")
class Bend extends Modifier {
  // @Ignore
  Bend.fakeConstructor$() : super.fakeConstructor$();
  external factory Bend(String text,
      [bool release,
      List<
          dynamic /*{type : number, text : string, width : number}*/ > phrase]);
  external static num get UP;
  external static set UP(num v);
  external static num get DOWN;
  external static set DOWN(num v);
  external static bool format(List<Bend> bends,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state);
  external void setXShift(num value);
  external Bend setFont(String font);
  external String getText();
  external Bend updateWidth();
  external void draw();
}

// Module Bend
@JS("Vex.Flow.Bend.CATEGORY")
external String get Bend_CATEGORY;

// End module Bend
@JS("Vex.Flow.BoundingBox")
class BoundingBox {
  // @Ignore
  BoundingBox.fakeConstructor$();
  external factory BoundingBox(num x, num y, num w, num h);
  external static BoundingBox copy(BoundingBox that);
  external num getX();
  external num getY();
  external num getW();
  external num getH();
  external BoundingBox setX(num x);
  external BoundingBox setY(num y);
  external BoundingBox setW(num w);
  external BoundingBox setH(num h);
  external void move(num x, num y);
  external BoundingBox clone();
  external BoundingBox mergeWith(BoundingBox boundingBox, [IRenderContext ctx]);
  external void draw(IRenderContext ctx, num x, num y);
}

@JS("Vex.Flow.CanvasContext")
class CanvasContext implements IRenderContext {
  // @Ignore
  CanvasContext.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes or type inconsistencies mentioned below are fixed
  /*external CanvasContext setLineDash(String dash);*/
  /// inconsistent type: void -> CanvasContext
  /*external void setLineDash(String dash);*/
  external dynamic /*CanvasContext|Null*/ setLineDash(String dash);
  /*external CanvasContext scale(num x, num y);*/
  /*external void scale(num x, num y);*/
  external dynamic /*CanvasContext|Null*/ scale(num x, num y);
  /*external CanvasContext resize(num width, num height);*/
  /*external void resize(num width, num height);*/
  external dynamic /*CanvasContext|Null*/ resize(num width, num height);
  /*external CanvasContext fillRect(num x, num y, num width, num height);*/
  /*external void fillRect(num x, num y, num width, num height);*/
  external dynamic /*CanvasContext|Null*/ fillRect(
      num x, num y, num width, num height);
  /*external CanvasContext clearRect(num x, num y, num width, num height);*/
  /*external void clearRect(num x, num y, num width, num height);*/
  external dynamic /*CanvasContext|Null*/ clearRect(
      num x, num y, num width, num height);
  /*external CanvasContext beginPath();*/
  /*external void beginPath();*/
  external dynamic /*CanvasContext|Null*/ beginPath();
  /*external CanvasContext moveTo(num x, num y);*/
  /*external void moveTo(num x, num y);*/
  external dynamic /*CanvasContext|Null*/ moveTo(num x, num y);
  /*external CanvasContext lineTo(num x, num y);*/
  /*external void lineTo(num x, num y);*/
  external dynamic /*CanvasContext|Null*/ lineTo(num x, num y);
  /*external CanvasContext bezierCurveToTo(
    num x1, num y1, num x2, num y2, num x, num y);*/
  /*external void bezierCurveToTo(num x1, num y1, num x2, num y2, num x, num y);*/
  external dynamic /*CanvasContext|Null*/ bezierCurveToTo(
      num x1, num y1, num x2, num y2, num x, num y);
  /*external CanvasContext quadraticCurveToTo(num x1, num y1, num x2, num y2);*/
  /*external void quadraticCurveToTo(num x1, num y1, num x, num y);*/
  external dynamic /*CanvasContext|Null*/ quadraticCurveToTo(
      num x1, num y1, num x2_x, num y2_y);
  /*external CanvasContext arc(
    num x, num y, num radius, num startAngle, num endAngle, bool antiClockwise);*/
  /*external void arc(
    num x, num y, num radius, num startAngle, num endAngle, bool antiClockwise);*/
  external dynamic /*CanvasContext|Null*/ arc(num x, num y, num radius,
      num startAngle, num endAngle, bool antiClockwise);
  /*external CanvasContext glow();*/
  /*external void glow();*/
  external dynamic /*CanvasContext|Null*/ glow();
  /*external CanvasContext fill();*/
  /*external void fill();*/
  external dynamic /*CanvasContext|Null*/ fill();
  /*external CanvasContext stroke();*/
  /*external void stroke();*/
  external dynamic /*CanvasContext|Null*/ stroke();
  /*external CanvasContext closePath();*/
  /*external void closePath();*/
  external dynamic /*CanvasContext|Null*/ closePath();
  /*external CanvasContext fillText(String text, num x, num y);*/
  /*external void fillText(String text, num x, num y);*/
  external dynamic /*CanvasContext|Null*/ fillText(String text, num x, num y);
  /*external CanvasContext save();*/
  /*external void save();*/
  external dynamic /*CanvasContext|Null*/ save();
  /*external CanvasContext restore();*/
  /*external void restore();*/
  external dynamic /*CanvasContext|Null*/ restore();
  external factory CanvasContext(CanvasRenderingContext2D context);
  external static num get WIDTH;
  external static set WIDTH(num v);
  external static num get HEIGHT;
  external static set HEIGHT(num v);
  external void clear();
  external CanvasContext setFont(String family, num size, [num weight]);
  external CanvasContext setRawFont(String font);
  external CanvasContext setFillStyle(String style);
  external CanvasContext setBackgroundFillStyle(String style);
  external CanvasContext setStrokeStyle(String style);
  external CanvasContext setShadowColor(String style);
  external CanvasContext setShadowBlur(String blur);
  external CanvasContext setLineWidth(num width);
  external CanvasContext setLineCap(String cap_type);
  external TextMetrics measureText(String text);
}

@JS("Vex.Flow.Clef")
class Clef extends StaveModifier {
  // @Ignore
  Clef.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes
  /*external void addModifier();*/
  /*external void addModifier(Stave stave);*/
  external void addModifier([Stave stave]);
  /*external void addEndModifier();*/
  /*external void addEndModifier(Stave stave);*/
  external void addEndModifier([Stave stave]);
  external factory Clef(String clef, [String size, String annotation]);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
}

@JS("Vex.Flow.ClefNote")
class ClefNote extends Note {
  // @Ignore
  ClefNote.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes
  /*external Note setStave(Stave stave);*/
  /*external void setStave(Stave stave);*/
  external dynamic /*Note|Null*/ setStave(Stave stave);
  external factory ClefNote(String clef, [String size, String annotation]);
  external ClefNote setClef(String clef, [String size, String annotation]);
  external String getClef();
  external BoundingBox getBoundingBox();
  external ClefNote addToModifierContext();
  external String getCategory();
  external ClefNote preFormat();
  external void draw();
}

@JS("Vex.Flow.Crescendo")
class Crescendo extends Note {
  // @Ignore
  Crescendo.fakeConstructor$() : super.fakeConstructor$();
  external factory Crescendo(
      dynamic /*{duration : number, line? : number}*/ note_struct);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external Crescendo setLine(num line);
  external Crescendo setHeight(num height);
  external Crescendo setDecrescendo(bool decresc);
  external Crescendo preFormat();
  external void draw();
}

@JS("Vex.Flow.Curve")
class Curve {
  // @Ignore
  Curve.fakeConstructor$();
  external factory Curve(Note from, Note to,
      [dynamic /*{spacing? : number, thickness? : number, x_shift? : number, y_shift : number, position : Curve.Position, invert : boolean, cps? : {x : number, y : number}[]}*/ options]);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external Curve setContext(IRenderContext context);
  external Curve setNotes(Note from, Note to);
  external bool isPartial();
  external void renderCurve(
      dynamic /*{first_x : number, first_y : number, last_x : number, last_y : number, direction : number}*/ params);
  external bool draw();
}

// Module Curve
@JS("Vex.Flow.Curve.Position")
class CurvePosition {
  external static num get NEAR_HEAD;
  external static num get NEAR_TOP;
}

// End module Curve
@JS("Vex.Flow.Dot")
class Dot extends Modifier {
  // @Ignore
  Dot.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes or type inconsistencies mentioned below are fixed
  /*external Dot setNote(Note note);*/
  /*external void setNote(Note note);*/
  external dynamic /*Dot|Null*/ setNote(Note note);
  external static void format(num dots,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state);
  external Dot setDotShiftY(num y);
  external void draw();
}

// Module Dot
@JS("Vex.Flow.Dot.CATEGORY")
external String get Dot_CATEGORY;

// End module Dot
@JS("Vex.Flow.Formatter")
class Formatter {
  // @Ignore
  Formatter.fakeConstructor$();
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  /*external static BoundingBox FormatAndDraw(IRenderContext ctx, Stave stave, List<Note> notes, [{auto_beam : boolean, align_rests : boolean} params]);*/
  /*external static BoundingBox FormatAndDraw(IRenderContext ctx, Stave stave, List<Note> notes, [bool params]);*/
  external BoundingBox FormatAndDraw(
      IRenderContext ctx, Stave stave, List<Note> notes,
      [dynamic /*{auto_beam : boolean, align_rests : boolean}|bool*/ params]);
  /*external static void FormatAndDrawTab(IRenderContext ctx, TabStave tabstave, Stave stave, List<TabNote> tabnotes, List<Note> notes, [bool autobeam, {auto_beam : boolean, align_rests : boolean} params]);*/
  /*external static void FormatAndDrawTab(IRenderContext ctx, TabStave tabstave, Stave stave, List<TabNote> tabnotes, List<Note> notes, [bool autobeam, bool params]);*/
  external void FormatAndDrawTab(IRenderContext ctx, TabStave tabstave,
      Stave stave, List<TabNote> tabnotes, List<Note> notes,
      [bool autobeam,
      dynamic /*{auto_beam : boolean, align_rests : boolean}|bool*/ params]);
  external static Formatter AlignRestsToNotes(List<Note> notes,
      [bool align_all_notes, bool align_tuplets]);
  external void alignRests(List<Voice> voices, bool align_all_notes);
  external num preCalculateMinTotalWidth(List<Voice> voices);
  external num getMinTotalWidth();
  external List<ModifierContext> createModifierContexts(List<Voice> voices);
  external List<TickContext> createTickContexts(List<Voice> voices);
  external void preFormat(
      [num justifyWidth,
      IRenderContext rendering_context,
      List<Voice> voices,
      Stave stave]);
  external Formatter postFormat();
  external Formatter joinVoices(List<Voice> voices);
  external Formatter format(List<Voice> voices, num justifyWidth,
      [dynamic /*{align_rests? : boolean, context : IRenderContext}*/ options]);
  external Formatter formatToStave(List<Voice> voices, Stave stave,
      [dynamic /*{align_rests? : boolean, context : IRenderContext}*/ options]);
}

@JS("Vex.Flow.Fraction")
class Fraction {
  // @Ignore
  Fraction.fakeConstructor$();
  external factory Fraction(num numerator, num denominator);
  external static num GCD(num a, num b);
  external static num LCM(num a, num b);
  external static num LCMM(num a, num b);
  external Fraction JS$set(num numerator, num denominator);
  external num value();
  external Fraction simplify();
  /*external Fraction add(Fraction param1, Fraction param2);*/
  /*external Fraction add(num param1, num param2);*/
  external Fraction add(
      dynamic /*Fraction|num*/ param1, dynamic /*Fraction|num*/ param2);
  /*external Fraction subtract(Fraction param1, Fraction param2);*/
  /*external Fraction subtract(num param1, num param2);*/
  external Fraction subtract(
      dynamic /*Fraction|num*/ param1, dynamic /*Fraction|num*/ param2);
  /*external Fraction multiply(Fraction param1, Fraction param2);*/
  /*external Fraction multiply(num param1, num param2);*/
  external Fraction multiply(
      dynamic /*Fraction|num*/ param1, dynamic /*Fraction|num*/ param2);
  /*external Fraction divide(Fraction param1, Fraction param2);*/
  /*external Fraction divide(num param1, num param2);*/
  external Fraction divide(
      dynamic /*Fraction|num*/ param1, dynamic /*Fraction|num*/ param2);
  external bool equals(Fraction compare);
  external bool greaterThan(Fraction compare);
  external bool greaterThanEquals(Fraction compare);
  external bool lessThan(Fraction compare);
  external bool lessThanEquals(Fraction compare);
  external Fraction clone();
  external Fraction copy(Fraction copy);
  external num quotient();
  external num fraction();
  external Fraction abs();
  external String toString();
  external String toSimplifiedString();
  external String toMixedString();
  external Fraction parse(String str);
}

@JS("Vex.Flow.FretHandFinger")
class FretHandFinger extends Modifier {
  // @Ignore
  FretHandFinger.fakeConstructor$() : super.fakeConstructor$();
  external factory FretHandFinger(num number);
  external static void format(List<FretHandFinger> nums,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state);
  external Note getNote();
  external FretHandFinger setNote(Note note);
  external num getIndex();
  external FretHandFinger setIndex(num index);
  external num /*enum Modifier.Position*/ getPosition();
  external FretHandFinger setPosition(num /*enum Modifier.Position*/ position);
  external FretHandFinger setFretHandFinger(num number);
  external FretHandFinger setOffsetX(num x);
  external FretHandFinger setOffsetY(num y);
  external void draw();
}

// Module FretHandFinger
@JS("Vex.Flow.FretHandFinger.CATEGORY")
external String get FretHandFinger_CATEGORY;

// End module FretHandFinger
@JS("Vex.Flow.GhostNote")
class GhostNote extends StemmableNote {
  // @Ignore
  GhostNote.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes or type inconsistencies mentioned below are fixed
  /*external Note setStave(Stave stave);*/
  /*external void setStave(Stave stave);*/
  external dynamic /*Note|Null*/ setStave(Stave stave);
  /*external factory GhostNote(String duration);*/
  /*external factory GhostNote({type? : string, dots? : number, duration : string} note_struct);*/
  external factory GhostNote(
      dynamic /*String|{type? : string, dots? : number, duration : string}*/ duration_note_struct);
  external bool isRest();
  external GhostNote addToModifierContext();
  external GhostNote preFormat();
  external void draw();
}

@JS("Vex.Flow.Glyph")
class Glyph {
  // @Ignore
  Glyph.fakeConstructor$();
  external factory Glyph(String code, num point,
      [dynamic /*{cache? : boolean, font? : IFont}*/ options]);
  external void setOptions(
      dynamic /*{cache? : boolean, font? : IFont}*/ options);
  external Glyph setStave(Stave stave);
  external Glyph setXShift(num x_shift);
  external Glyph setYShift(num y_shift);
  external Glyph setContext(IRenderContext context);
  external IRenderContext getContext();
  external void reset();
  external Glyph setWidth(num width);
  external dynamic /*{x_min : number, x_max : number, width : number, height : number}*/ getMetrics();
  external void render(IRenderContext ctx, num x_pos, num y_pos);
  external void renderToStave(num x);
  external static dynamic /*{x_min : number, x_max : number, ha : number, outline : number[]}*/ loadMetrics(
      IFont font, String code, bool cache);
  external static void renderOutline(
      IRenderContext ctx, List<num> outline, num scale, num x_pos, num y_pos);
}

@JS("Vex.Flow.GraceNote")
class GraceNote extends StaveNote {
  // @Ignore
  GraceNote.fakeConstructor$() : super.fakeConstructor$();
  external factory GraceNote(
      dynamic /*{slash? : boolean, type? : string, dots? : number, duration : string, clef? : string, keys : string[], octave_shift? : number, auto_stem? : boolean, stem_direction? : number}*/ note_struct);
  external num getStemExtension();
  external String getCategory();
  external void draw();
}

@JS("Vex.Flow.GraceNoteGroup")
class GraceNoteGroup extends Modifier {
  // @Ignore
  GraceNoteGroup.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes or type inconsistencies mentioned below are fixed
  /*external Modifier setWidth(num width);*/
  /*external void setWidth(num width);*/
  external dynamic /*Modifier|Null*/ setWidth(num width);
  /*external Modifier setNote(StaveNote note);*/
  /*external void setNote(Note note);*/
  external dynamic /*Modifier|Null*/ setNote(dynamic /*StaveNote|Note*/ note);
  external factory GraceNoteGroup(List<GraceNote> grace_notes,
      [bool show_slur]);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external static bool format(List<GraceNoteGroup> gracenote_groups,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state);
  external void preFormat();
  external GraceNoteGroup beamNotes();
  external num getWidth();
  external void setXShift(num x_shift);
  external void draw();
}

// Module GraceNoteGroup
@JS("Vex.Flow.GraceNoteGroup.CATEGORY")
external String get GraceNoteGroup_CATEGORY;

// End module GraceNoteGroup
@JS("Vex.Flow.KeyManager")
class KeyManager {
  // @Ignore
  KeyManager.fakeConstructor$();
  external factory KeyManager(String key);
  external KeyManager setKey(String key);
  external String getKey();
  external KeyManager reset();
  external dynamic /*{note : string, accidental : string}*/ getAccidental(
      String key);
  external dynamic /*{note : string, accidental : string, change : boolean}*/ selectNote(
      String note);
}

@JS("Vex.Flow.KeySignature")
class KeySignature extends StaveModifier {
  // @Ignore
  KeySignature.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes
  /*external void addModifier();*/
  /*external KeySignature addModifier(Stave stave);*/
  external dynamic /*Null|KeySignature*/ addModifier([Stave stave]);
  external factory KeySignature(String key_spec);
  external void addAccToStave(
      Stave stave, dynamic /*{type : string, line : number}*/ acc,
      [dynamic /*{type : string, line : number}*/ next]);
  external KeySignature cancelKey(String spec);
  external KeySignature addToStave(Stave stave, [bool firstGlyph]);
  external void convertAccLines(String clef, String type);
}

@JS("Vex.Flow.Modifier")
class Modifier {
  // @Ignore
  Modifier.fakeConstructor$();
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external String getCategory();
  external num getWidth();
  external Modifier setWidth(num width);
  external Note getNote();
  external Modifier setNote(Note note);
  external num getIndex();
  external Modifier setIndex(num index);
  external IRenderContext getContext();
  external Modifier setContext(IRenderContext context);
  external ModifierContext getModifierContext();
  external Modifier setModifierContext(ModifierContext c);
  external num /*enum Modifier.Position*/ getPosition();
  external Modifier setPosition(num /*enum Modifier.Position*/ position);
  external Modifier setTextLine(num line);
  external Modifier setYShift(num y);
  external void setXShift(num x);
  external void draw();
}

// Module Modifier
@JS("Vex.Flow.Modifier.Position")
class Position {
  external static num get LEFT;
  external static num get RIGHT;
  external static num get ABOVE;
  external static num get BELOW;
}

@JS("Vex.Flow.Modifier.CATEGORY")
external String get Modifier_CATEGORY;

// End module Modifier
@JS("Vex.Flow.ModifierContext")
class ModifierContext {
  // @Ignore
  ModifierContext.fakeConstructor$();
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external ModifierContext addModifier(Modifier modifier);
  external List<Modifier> getModifiers(String type);
  external num getWidth();
  external num getExtraLeftPx();
  external num getExtraRightPx();
  external dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ getState();
  external dynamic /*{width : number, spacing : number, extra_left_px : number, extra_right_px : number}*/ getMetrics();
  external void preFormat();
  external void postFormat();
}

@JS("Vex.Flow.Music")
class Music {
  // @Ignore
  Music.fakeConstructor$();
  external bool isValidNoteValue(num note);
  external bool isValidIntervalValue(num interval);
  external dynamic /*{root : string, accidental : string}*/ getNoteParts(
      String noteString);
  external dynamic /*{root : string, accidental : string, type : string}*/ getKeyParts(
      String noteString);
  external num getNoteValue(String noteString);
  external num getIntervalValue(String intervalString);
  external String getCanonicalNoteName(num noteValue);
  external String getCanonicalIntervalName(num intervalValue);
  external num getRelativeNoteValue(num noteValue, num intervalValue,
      [num direction]);
  external String getRelativeNoteName(String root, num noteValue);
  external num getScaleTones(String key, List<num> intervals);
  external num getIntervalBetween(num note1, num note2, [num direction]);
  external dynamic /*JSMap of <String,String>*/ createScaleMap(
      String keySignature);
}

// Module Music
@JS("Vex.Flow.Music.NUM_TONES")
external num get NUM_TONES;
@JS("Vex.Flow.Music.roots")
external List<String> get roots;
@JS("Vex.Flow.Music.root_values")
external List<num> get root_values;
@JS("Vex.Flow.Music.root_indices")
external dynamic /*JSMap of <String,num>*/ get root_indices;
@JS("Vex.Flow.Music.canonical_notes")
external List<String> get canonical_notes;
@JS("Vex.Flow.Music.diatonic_intervals")
external List<String> get diatonic_intervals;
@JS("Vex.Flow.Music.diatonic_accidentals")
external dynamic /*JSMap of <String,{note : number, accidental : number}>*/ get diatonic_accidentals;
@JS("Vex.Flow.Music.intervals")
external dynamic /*JSMap of <String,num>*/ get intervals;
@JS("Vex.Flow.Music.scales")
external dynamic /*JSMap of <String,List<num>>*/ get scales;
@JS("Vex.Flow.Music.accidentals")
external List<String> get accidentals;
@JS("Vex.Flow.Music.noteValues")
external dynamic /*JSMap of <String,{root_index : number, int_val : number}>*/ get noteValues;

// End module Music
@JS("Vex.Flow.Note")
class Note implements Tickable {
  // @Ignore
  Note.fakeConstructor$();

  /// from tickable interface:
  external Fraction getTicks();
  external num getCenterXShift();
  external bool isCenterAligned();
  external Note setCenterAlignment(bool align_center);
  external Tuplet getTuplet();
  external Note setTuplet(Tuplet tuplet);
  external void addToModifierContext(ModifierContext mc);
  external void preFormat();
  external Note postFormat();
  external Fraction getIntrinsicTicks();
  external void setIntrinsicTicks(Fraction intrinsicTicks);
  external Fraction getTickMultiplier();
  external void applyTickMultiplier(num numerator, num denominator);
  external void setDuration(Fraction duration);
  external factory Note(
      dynamic /*{type? : string, dots? : number, duration : string}*/ note_struct);
  external dynamic getPlayNote();
  external Note setPlayNote(dynamic note);
  external bool isRest();
  external Note addStroke(num index, Stroke stroke);
  external Stave getStave();
  external Note setStave(Stave stave);
  external String getCategory();
  external Note setContext(IRenderContext context);
  external num getExtraLeftPx();
  external num getExtraRightPx();
  external Note setExtraLeftPx(num x);
  external Note setExtraRightPx(num x);
  external bool shouldIgnoreTicks();
  external num getLineNumber();
  external num getLineForRest();
  external Glyph getGlyph();
  external Note setYs(List<num> ys);
  external List<num> getYs();
  external num getYForTopText(num text_line);
  external BoundingBox getBoundingBox();
  external Voice getVoice();
  external Note setVoice(Voice voice);
  external TickContext getTickContext();
  external Note setTickContext(TickContext tc);
  external String getDuration();
  external bool isDotted();
  external bool hasStem();
  external num getDots();
  external String getNoteType();
  external Note setBeam();
  external Note setModifierContext(ModifierContext mc);
  external Note addModifier(Modifier modifier, [num index]);
  external dynamic /*{x : number, y : number}*/ getModifierStartXY();
  external dynamic /*{width : number, noteWidth : number, left_shift : number, modLeftPx : number, modRightPx : number, extraLeftPx : number, extraRightPx : number}*/ getMetrics();
  external void setWidth(num width);
  external num getWidth();
  external Note setXShift(num x);
  external num getX();
  external num getAbsoluteX();
  external void setPreFormatted(bool value);
}

// Module Note
@JS("Vex.Flow.Note.CATEGORY")
external String get Note_CATEGORY;

// End module Note
@JS("Vex.Flow.NoteHead")
class NoteHead extends Note {
  // @Ignore
  NoteHead.fakeConstructor$() : super.fakeConstructor$();
  external factory NoteHead(
      dynamic /*{x? : number, y? : number, note_type? : string, duration : string, displaced? : boolean, stem_direction? : number, line : number, x_shift : number, custom_glyph_code? : string, style? : string, slashed? : boolean, glyph_font_scale? : number}*/ head_options);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external String getCategory();
  external NoteHead setContext(IRenderContext context);
  external num getWidth();
  external bool isDisplaced();
  external dynamic /*{shadowColor? : string, shadowBlur? : string, fillStyle? : string, strokeStyle? : string}*/ getStyle();
  external NoteHead setStyle(
      dynamic /*{shadowColor? : string, shadowBlur? : string, fillStyle? : string, strokeStyle? : string}*/ style);
  external Glyph getGlyph();
  external NoteHead setX(num x);
  external num getY();
  external NoteHead setY(num y);
  external num getLine();
  external NoteHead setLine(num line);
  external num getAbsoluteX();
  external BoundingBox getBoundingBox();
  external NoteHead applyStyle(IRenderContext context);
  external NoteHead setStave(Stave stave);
  external NoteHead preFormat();
  external void draw();
}

@JS("Vex.Flow.Ornament")
class Ornament extends Modifier {
  // @Ignore
  Ornament.fakeConstructor$() : super.fakeConstructor$();
  external factory Ornament(String type);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external static bool format(List<Ornament> ornaments,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state);
  external Ornament setDelayed(bool delayed);
  external Ornament setUpperAccidental(String acc);
  external Ornament setLowerAccidental(String acc);
  external void draw();
}

// Module Ornament
@JS("Vex.Flow.Ornament.CATEGORY")
external String get Ornament_CATEGORY;

// End module Ornament
@JS("Vex.Flow.PedalMarking")
class PedalMarking {
  // @Ignore
  PedalMarking.fakeConstructor$();
  external factory PedalMarking(List<Note> notes);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external static PedalMarking createSustain(List<Note> notes);
  external static PedalMarking createSostenuto(List<Note> notes);
  external static PedalMarking createUnaCorda(List<Note> notes);
  external PedalMarking setCustomText([String depress, String release]);
  external PedalMarking setStyle(num /*enum PedalMarking.Styles*/ style);
  external PedalMarking setLine(num line);
  external PedalMarking setContext(IRenderContext context);
  external void drawBracketed();
  external void drawText();
  external void draw();
}

// Module PedalMarking
@JS("Vex.Flow.PedalMarking.Styles")
class Styles {
  external static num get TEXT;
  external static num get BRACKET;
  external static num get MIXED;
}

@JS("Vex.Flow.PedalMarking.GLYPHS")
external dynamic /*JSMap of <String,{code : string, x_shift : number, y_shift : number}>*/ get GLYPHS;

// End module PedalMarking
@JS("Vex.Flow.RaphaelContext")
class RaphaelContext implements IRenderContext {
  // @Ignore
  RaphaelContext.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes or type inconsistencies mentioned below are fixed
  /*external RaphaelContext setLineWidth(num width);*/
  /*external void setLineWidth(num width);*/
  external dynamic /*RaphaelContext|Null*/ setLineWidth(num width);
  /*external RaphaelContext glow();*/
  /*external {width : number, fill : boolean, opacity : number, offsetx : number, offsety : number, color : string} glow();*/
  external dynamic /*RaphaelContext|{width : number, fill : boolean, opacity : number, offsetx : number, offsety : number, color : string}*/ glow();
  external factory RaphaelContext(HtmlElement element);
  external RaphaelContext setFont(String family, num size, [num weight]);
  external RaphaelContext setRawFont(String font);
  external RaphaelContext setFillStyle(String style);
  external RaphaelContext setBackgroundFillStyle(String style);
  external RaphaelContext setStrokeStyle(String style);
  external RaphaelContext setShadowColor(String style);
  external RaphaelContext setShadowBlur(String blur);
  external RaphaelContext setLineDash(String dash);
  external RaphaelContext setLineCap(String cap_type);
  external RaphaelContext scale(num x, num y);
  external void clear();
  external RaphaelContext resize(num width, num height);
  external void setViewBox(String viewBox);
  external void rect(num x, num y, num width, num height);
  external RaphaelContext fillRect(num x, num y, num width, num height);
  external RaphaelContext clearRect(num x, num y, num width, num height);
  external RaphaelContext beginPath();
  external RaphaelContext moveTo(num x, num y);
  external RaphaelContext lineTo(num x, num y);
  external RaphaelContext bezierCurveToTo(
      num x1, num y1, num x2, num y2, num x, num y);
  external RaphaelContext quadraticCurveToTo(num x1, num y1, num x, num y);
  external RaphaelContext arc(num x, num y, num radius, num startAngle,
      num endAngle, bool antiClockwise);
  external RaphaelContext fill();
  external RaphaelContext stroke();
  external RaphaelContext closePath();
  external dynamic /*{width : number, height : number}*/ measureText(
      String text);
  external RaphaelContext fillText(String text, num x, num y);
  external RaphaelContext save();
  external RaphaelContext restore();
}

@JS("Vex.Flow.Renderer")
class Renderer {
  // @Ignore
  Renderer.fakeConstructor$();
  external factory Renderer(
      HtmlElement sel, num /*enum Renderer.Backends*/ backend);
  external static bool get USE_CANVAS_PROXY;
  external static set USE_CANVAS_PROXY(bool v);
  external static IRenderContext buildContext(
      HtmlElement sel, num /*enum Renderer.Backends*/ backend,
      [num width, num height, String background]);
  external static CanvasContext getCanvasContext(
      HtmlElement sel, num /*enum Renderer.Backends*/ backend,
      [num width, num height, String background]);
  external static RaphaelContext getRaphaelContext(
      HtmlElement sel, num /*enum Renderer.Backends*/ backend,
      [num width, num height, String background]);
  external static SVGContext getSVGContext(
      HtmlElement sel, num /*enum Renderer.Backends*/ backend,
      [num width, num height, String background]);
  external static CanvasContext bolsterCanvasContext(
      CanvasRenderingContext2D ctx);
  external static void drawDashedLine(IRenderContext context, num fromX,
      num fromY, num toX, num toY, List<num> dashPattern);
  external Renderer resize(num width, num height);
  external IRenderContext getContext();
}

// Module Renderer
@JS("Vex.Flow.Renderer.Backends")
class Backends {
  external static num get CANVAS;
  external static num get RAPHAEL;
  external static num get SVG;
  external static num get VML;
}

@JS("Vex.Flow.Renderer.LineEndType")
class LineEndType {
  external static num get NONE;
  external static num get UP;
  external static num get DOWN;
}

// End module Renderer
@JS("Vex.Flow.Repetition")
class Repetition extends StaveModifier {
  // @Ignore
  Repetition.fakeConstructor$() : super.fakeConstructor$();
  external factory Repetition(
      num /*enum Repetition.type*/ type, num x, num y_shift);
  external String getCategory();
  external Repetition setShiftX(num x);
  external Repetition setShiftY(num y);
  external Repetition draw(Stave stave, num x);
  external Repetition drawCodaFixed(Stave stave, num x);
  external Repetition drawSignoFixed(Stave stave, num x);
  external Repetition drawSymbolText(
      Stave stave, num x, String text, bool draw_coda);
}

// Module Repetition
@JS("Vex.Flow.Repetition.type")
class repeatType {
  external static num get NONE;
  external static num get CODA_LEFT;
  external static num get CODA_RIGHT;
  external static num get SEGNO_LEFT;
  external static num get SEGNO_RIGHT;
  external static num get DC;
  external static num get DC_AL_CODA;
  external static num get DC_AL_FINE;
  external static num get DS;
  external static num get DS_AL_CODA;
  external static num get DS_AL_FINE;
  external static num get FINE;
}

// End module Repetition
@JS("Vex.Flow.Stave")
class Stave {
  // @Ignore
  Stave.fakeConstructor$();
  external factory Stave(num x, num y, num width,
      [dynamic /*{vertical_bar_width? : number, glyph_spacing_px? : number, num_lines? : number, fill_style? : string, spacing_between_lines_px? : number, space_above_staff_ln? : number, space_below_staff_ln? : number, top_text_position? : number}*/ options]);
  external void resetLines();
  external Stave setNoteStartX(num x);
  external num getNoteStartX();
  external num getNoteEndX();
  external num getTieStartX();
  external num getTieEndX();
  external Stave setContext(IRenderContext context);
  external IRenderContext getContext();
  external num getX();
  external num getNumLines();
  external Stave setY(num y);
  external Stave setWidth(num width);
  external num getWidth();
  external Stave setMeasure(num measure);
  external Stave setBegBarType(num /*enum Barline.type*/ type);
  external Stave setEndBarType(num /*enum Barline.type*/ type);
  external num getModifierXShift(num index);
  external Stave setRepetitionTypeLeft(
      num /*enum Repetition.type*/ type, num y);
  external Stave setRepetitionTypeRight(
      num /*enum Repetition.type*/ type, num y);
  external Stave setVoltaType(
      num /*enum Volta.type*/ type, num number_t, num y);
  external Stave setSection(String section, num y);
  external Stave setTempo(
      dynamic /*{name? : string, duration : string, dots : number, bpm : number}*/ tempo,
      num y);
  external Stave setText(String text, num /*enum Modifier.Position*/ position,
      [dynamic /*{shift_x? : number, shift_y? : number, justification? : TextNote.Justification}*/ options]);
  external num getHeight();
  external num getSpacingBetweenLines();
  external BoundingBox getBoundingBix();
  external num getBottomY();
  external num getBottomLineY();
  external num getYForLine(num line);
  external num getYForTopText([num line]);
  external num getYForBottomText([num line]);
  external num getYForNote([num line]);
  external num getYForGlyphs();
  external Stave addGlyph(Glyph glypg);
  external Stave addEndGlyph(Glyph glypg);
  external Stave addModifier(StaveModifier modifier);
  external Stave addEndModifier(StaveModifier modifier);
  external Stave addKeySignature(String keySpec);
  external Stave addClef(String clef, [String size, String annotation]);
  external Stave addEndClef(String clef, [String size, String annotation]);
  external void addTimeSignature(String timeSpec, [num customPadding]);
  external Stave addTrebleGlyph();
  external void draw();
  external void drawVertical(num x, bool isDouble);
  external void drawVerticalFixed(num x, bool isDouble);
  external void drawVerticalBar(num x);
  external void drawVerticalBarFixed(num x);
  external List<dynamic /*{visible : boolean}*/ > getConfigForLines();
  external Stave setConfigForLine(
      num line_number, dynamic /*{visible : boolean}*/ line_config);
  external Stave setConfigForLines(
      List<dynamic /*{visible : boolean}*/ > lines_configuration);
}

@JS("Vex.Flow.StaveConnector")
class StaveConnector {
  // @Ignore
  StaveConnector.fakeConstructor$();
  external factory StaveConnector(Stave top_stave, Stave bottom_stave);
  external StaveConnector setContext(IRenderContext ctx);
  external StaveConnector setType(num /*enum StaveConnector.type*/ type);
  external StaveConnector setText(String text,
      [dynamic /*{shift_x? : number, shift_y? : number}*/ text_options]);
  external void setFont(
      dynamic /*{family? : string, size? : number, weight? : string}*/ font);
  external StaveConnector setXShift(num x_shift);
  external void draw();
  external void drawBoldDoubleLine(Object ctx,
      num /*enum StaveConnector.type*/ type, num topX, num topY, num botY);
}

// Module StaveConnector
@JS("Vex.Flow.StaveConnector.type")
class connectorType {
  external static num get SINGLE_RIGHT;
  external static num get SINGLE_LEFT;
  external static num get SINGLE;
  external static num get DOUBLE;
  external static num get BRACE;
  external static num get BRACKET;
  external static num get BOLD_DOUBLE_LEFT;
  external static num get BOLD_DOUBLE_RIGHT;
  external static num get THIN_DOUBLE;
}

// End module StaveConnector
@JS("Vex.Flow.StaveHairpin")
class StaveHairpin {
  // @Ignore
  StaveHairpin.fakeConstructor$();
  external factory StaveHairpin(
      dynamic /*{first_note : Note, last_note : Note}*/ notes,
      num /*enum StaveHairpin.type*/ type);
  external static void FormatByTicksAndDraw(
      IRenderContext ctx,
      Formatter formatter,
      dynamic /*{first_note : Note, last_note : Note}*/ notes,
      num /*enum StaveHairpin.type*/ type,
      num /*enum Modifier.Position*/ position,
      [dynamic /*{height : number, y_shift : number, left_shift_ticks : number, right_shift_ticks : number}*/ options]);
  external StaveHairpin setContext(IRenderContext context);
  external StaveHairpin setPosition(num /*enum Modifier.Position*/ position);
  external StaveHairpin setRenderOptions(
      dynamic /*{height? : number, y_shift : number, left_shift_px : number, right_shift_px : number}*/ options);
  external StaveHairpin setNotes(
      dynamic /*{first_note : Note, last_note : Note}*/ notes);
  external void renderHairpin(
      dynamic /*{first_x : number, last_x : number, first_y : number, last_y : number, staff_height : number}*/ params);
  external bool draw();
}

// Module StaveHairpin
@JS("Vex.Flow.StaveHairpin.type")
class hairPinType {
  external static num get CRESC;
  external static num get DECRESC;
}

// End module StaveHairpin
@JS("Vex.Flow.StaveLine")
class StaveLine {
  // @Ignore
  StaveLine.fakeConstructor$();
  external factory StaveLine(
      dynamic /*{first_note: Note, last_note: Note, first_indices : number[], last_indices : number[]}*/ notes);
  external StaveLine setContext(Object context);
  external StaveLine setFont(
      dynamic /*{family : string, size : number, weight : string}*/ font);
  external StaveLine setText(String text);
  external StaveLine setNotes(
      dynamic /*{first_note: Note, last_note: Note, first_indices? : number[], last_indices? : number[]}*/ notes);
  external void applyLineStyle();
  external void applyFontStyle();
  external StaveLine draw();

  /// inconsistent API: this should be set via an options object in the constructor
  external dynamic /*{padding_left : number, padding_right : number, line_width : number, line_dash : number[], rounded_end : boolean, color : string, draw_start_arrow : boolean, draw_end_arrow : boolean, arrowhead_length : number, arrowhead_angle : number, text_position_vertical : StaveLine.TextVerticalPosition, text_justification : StaveLine.TextJustification}*/ get render_options;
  external set render_options(
      dynamic /*{padding_left : number, padding_right : number, line_width : number, line_dash : number[], rounded_end : boolean, color : string, draw_start_arrow : boolean, draw_end_arrow : boolean, arrowhead_length : number, arrowhead_angle : number, text_position_vertical : StaveLine.TextVerticalPosition, text_justification : StaveLine.TextJustification}*/ v);
}

// Module StaveLine
@JS("Vex.Flow.StaveLine.TextVerticalPosition")
class TextVerticalPosition {
  external static num get TOP;
  external static num get BOTTOM;
}

@JS("Vex.Flow.StaveLine.TextJustification")
class TextJustification {
  external static num get LEFT;
  external static num get CENTER;
  external static num get RIGHT;
}

// End module StaveLine
@JS("Vex.Flow.StaveModifier")
class StaveModifier {
  // @Ignore
  StaveModifier.fakeConstructor$();
  external String getCategory();
  external dynamic /*{getContext: Function, setStave: Function, renderToStave: Function, getMetrics: Function}*/ makeSpacer(
      num padding);
  external void placeGlyphOnLine(Glyph glyph, Stave stave, num line);
  external void setPadding(num padding);
  external StaveModifier addToStave(Stave stave, bool firstGlyph);
  external StaveModifier addToStaveEnd(Stave stave, bool firstGlyph);
  external void addModifier();
  external void addEndModifier();
}

@JS("Vex.Flow.StaveNote")
class StaveNote extends StemmableNote {
  // @Ignore
  StaveNote.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes and/or inconsistencies mentioned below are fixed
  /*external StemmableNote buildStem();*/
  /*external void buildStem();*/
  external dynamic /*StemmableNote|Null*/ buildStem();
  /*external Note setStave(Stave stave);*/
  /*external StaveNote setStave(Stave stave);*/
  external dynamic /*Note|StaveNote*/ setStave(Stave stave);
  /*external Note addModifier(Modifier modifier, [num index]);*/
  /*external StaveNote addModifier(num index, Modifier modifier);*/
  external dynamic /*Note|StaveNote*/ addModifier(
      dynamic /*Modifier|num*/ modifier_index,
      [dynamic /*num|Modifier*/ index_modifier]);
  /*external {x : number, y : number} getModifierStartXY();*/
  /*external {x : number, y : number} getModifierStartXY(enum Modifier.Position position, num index);*/
  external dynamic /*{x : number, y : number}*/ getModifierStartXY(
      [num /*enum Modifier.Position*/ position, num index]);
  /*external num getDots();*/
  /*external List<Dot> getDots();*/
  external dynamic /*num|List<Dot>*/ getDots();
  external factory StaveNote(
      dynamic /*{type? : string, dots? : number, duration : string, clef? : string, keys : string[], octave_shift? : number, auto_stem? : boolean, stem_direction? : number}*/ note_struct);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external static bool format(List<StaveNote> notes,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state);
  external static void formatByY(List<StaveNote> notes,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state);
  external static bool postFormat(List<StaveNote> notes);
  external void buildNoteHeads();
  external void autoStem();
  external void calculateKeyProps();
  external BoundingBox getBoundingBox();
  external num getLineNumber();
  external bool isRest();
  external bool isChord();
  external bool hasStem();
  external num getYForTopText(num text_line);
  external num getYForBottomText(num text_line);
  external List<String> getKeys();
  external List<
          dynamic /*{key : string, octave : number, line : number, int_value : number, accidental : string, code : number, stroke : number, shift_right : number, displaced : boolean}*/ >
      getKeyProps();
  external bool isDisplaced();
  external StaveNote setNoteDisplaced(bool displaced);
  external num getTieRightX();
  external num getTieLeftX();
  external num getLineForRest();
  external void setStyle(
      dynamic /*{shadowColor? : string, shadowBlur? : string, fillStyle? : string, strokeStyle? : string}*/ style);
  external StaveNote setKeyStyle(num index,
      dynamic /*{shadowColor? : string, shadowBlur? : string, fillStyle? : string, strokeStyle? : string}*/ style);
  external StaveNote setKeyLine(num index, num line);
  external num getKeyLine(num index);
  external StaveNote addToModifierContext(ModifierContext mContext);
  external StaveNote addAccidental(num index, Accidental accidental);
  external StaveNote addArticulation(num index, Articulation articulation);
  external StaveNote addAnnotation(num index, Annotation annotation);
  external StaveNote addDot(num index);
  external StaveNote addDotToAll();
  external List<Accidental> getAccidentals();
  external num getVoiceShiftWidth();
  external void calcExtraPx();
  external void preFormat();
  external dynamic /*{y_top: number, y_bottom: number, highest_line: number, lowest_line: number}*/ getNoteHeadBounds();
  external num getNoteHeadBeginX();
  external num getNoteHeadEndX();
  external void drawLedgerLines();
  external void drawModifiers();
  external void drawFlag();
  external void drawNoteHeads();
  external void drawStem(
      dynamic /*{x_begin? : number, x_end? : number, y_top? : number, y_bottom? : number, y_extend? : number, stem_extension? : number, stem_direction? : number}*/ struct);
  external void draw();
}

// Module StaveNote
@JS("Vex.Flow.StaveNote.STEM_UP")
external num get STEM_UP;
@JS("Vex.Flow.StaveNote.STEM_DOWN")
external num get STEM_DOWN;
@JS("Vex.Flow.StaveNote.CATEGORY")
external String get StaveNote_CATEGORY;

// End module StaveNote
@JS("Vex.Flow.StaveSection")
class StaveSection extends Modifier {
  // @Ignore
  StaveSection.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes
  /*external void draw();*/
  /*external StaveSection draw(Stave stave, num shift_x);*/
  external dynamic /*Null|StaveSection*/ draw([Stave stave, num shift_x]);
  external factory StaveSection(String section, num x, num shift_y);
  external String getCategory();
  external StaveSection setStaveSection(String section);
  external StaveSection setShiftX(num x);
  external StaveSection setShiftY(num y);
}

@JS("Vex.Flow.StaveTempo")
class StaveTempo extends StaveModifier {
  // @Ignore
  StaveTempo.fakeConstructor$() : super.fakeConstructor$();
  external factory StaveTempo(
      dynamic /*{name? : string, duration : string, dots : number, bpm : number}*/ tempo,
      num x,
      num shift_y);
  external String getCategory();
  external StaveTempo setTempo(
      dynamic /*{name? : string, duration : string, dots : number, bpm : number}*/ tempo);
  external StaveTempo setShiftX(num x);
  external StaveTempo setShiftY(num y);
  external StaveTempo draw(Stave stave, num shift_x);
}

@JS("Vex.Flow.StaveText")
class StaveText extends Modifier {
  // @Ignore
  StaveText.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes
  /*external void draw();*/
  /*external StaveText draw(Stave stave);*/
  external dynamic /*Null|StaveText*/ draw([Stave stave]);
  external factory StaveText(
      String text, num /*enum Modifier.Position*/ position,
      [dynamic /*{shift_x? : number, shift_y? : number, justification? : TextNote.Justification}*/ options]);
  external String getCategory();
  external StaveText setStaveText(String text);
  external StaveText setShiftX(num x);
  external StaveText setShiftY(num y);
  external void setFont(
      dynamic /*{family? : string, size? : number, weight? : number}*/ font);
  external void setText(String text);
}

@JS("Vex.Flow.StaveTie")
class StaveTie {
  // @Ignore
  StaveTie.fakeConstructor$();
  external factory StaveTie(
      dynamic /*{first_note: Note, last_note: Note, first_indices : number[], last_indices : number[]}*/ notes,
      [String text]);
  external StaveTie setContext(IRenderContext context);
  external StaveTie setFont(
      dynamic /*{family : string, size : number, weight : string}*/ font);
  external StaveTie setNotes(
      dynamic /*{first_note: Note, last_note: Note, first_indices : number[], last_indices : number[]}*/ notes);
  external bool isPartial();
  external void renderTie(
      dynamic /*{first_ys : number[], last_ys : number[], last_x_px : number, first_x_px : number, direction : number}*/ params);
  external void renderText(num first_x_px, num last_x_px);
  external bool draw();
}

@JS("Vex.Flow.Stem")
class Stem {
  // @Ignore
  Stem.fakeConstructor$();
  external factory Stem(
      dynamic /*{x_begin? : number, x_end? : number, y_top? : number, y_bottom? : number, y_extend? : number, stem_extension? : number, stem_direction? : number}*/ options);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external Stem setNoteHeadXBounds(num x_begin, num x_end);
  external void setDirection(num direction);
  external void setExtension(num extension);
  external void setYBounds(num y_top, num y_bottom);
  external String getCategory();
  external Stem setContext(IRenderContext context);
  external num getHeight();
  external BoundingBox getBoundingBox();
  external dynamic /*{topY : number, baseY : number}*/ getExtents();
  external void setStyle(
      dynamic /*{shadowColor? : string, shadowBlur? : string, fillStyle? : string, strokeStyle? : string}*/ style);
  external dynamic /*{shadowColor? : string, shadowBlur? : string, fillStyle? : string, strokeStyle? : string}*/ getStyle();
  external Stem applyStyle(IRenderContext context);
  external void draw();

  /// inconsistent API: this should be set via the options object in the constructor
  external bool get hide;
  external set hide(bool v);
}

// Module Stem
@JS("Vex.Flow.Stem.UP")
external num get UP;
@JS("Vex.Flow.Stem.DOWN")
external num get DOWN;

// End module Stem
@JS("Vex.Flow.StemmableNote")
class StemmableNote extends Note {
  // @Ignore
  StemmableNote.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes
  /*external Note setBeam();*/
  /*external StemmableNote setBeam(Beam beam);*/
  external dynamic /*Note|StemmableNote*/ setBeam([Beam beam]);
  external factory StemmableNote(
      dynamic /*{type? : string, dots? : number, duration : string}*/ note_struct);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external Stem getStem();
  external StemmableNote setStem(Stem stem);
  external StemmableNote buildStem();
  external num getStemLength();
  external num getBeamCount();
  external num getStemMinumumLength();
  external num getStemDirection();
  external StemmableNote setStemDirection(num direction);
  external num getStemX();
  external num getCenterGlyphX();
  external num getStemExtension();
  external num setStemLength();
  external dynamic /*{topY : number, baseY : number}*/ getStemExtents();
  external num getYForTopText(num text_line);
  external num getYForBottomText(num text_line);
  external StemmableNote postFormat();
  external void drawStem(
      dynamic /*{x_begin? : number, x_end? : number, y_top? : number, y_bottom? : number, y_extend? : number, stem_extension? : number, stem_direction? : number}*/ stem_struct);
}

@JS("Vex.Flow.StringNumber")
class StringNumber extends Modifier {
  // @Ignore
  StringNumber.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes
  /*external StringNumber setNote(Note note);*/
  /*external StringNumber setNote(StemmableNote note);*/
  external StringNumber setNote(dynamic /*Note|StemmableNote*/ note);
  external factory StringNumber(num number);
  external static bool format(List<StringNumber> nums,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state);
  external Note getNote();
  external num getIndex();
  external StringNumber setIndex(num index);
  external StringNumber setLineEndType(num /*enum Renderer.LineEndType*/ leg);
  external num /*enum Modifier.Position*/ getPosition();
  external StringNumber setPosition(num /*enum Modifier.Position*/ position);
  external StringNumber setStringNumber(num number);
  external StringNumber setOffsetX(num x);
  external StringNumber setOffsetY(num y);
  external StringNumber setLastNote(StemmableNote note);
  external StringNumber setDashed(bool dashed);
  external void draw();
}

// Module StringNumber
@JS("Vex.Flow.StringNumber.CATEGORY")
external String get StringNumber_CATEGORY;

// End module StringNumber
@JS("Vex.Flow.Stroke")
class Stroke extends Modifier {
  // @Ignore
  Stroke.fakeConstructor$() : super.fakeConstructor$();
  external factory Stroke(num /*enum Stroke.Type*/ type,
      dynamic /*{all_voices? : boolean}*/ options);
  external static bool format(List<Stroke> strokes,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state);
  external num /*enum Modifier.Position*/ getPosition();
  external Stroke addEndNote(Note note);
  external void draw();
}

// Module Stroke
@JS("Vex.Flow.Stroke.Type")
class Type {
  external static num get BRUSH_DOWN;
  external static num get BRUSH_UP;
  external static num get ROLL_DOWN;
  external static num get ROLL_UP;
  external static num get RASQUEDO_DOWN;
  external static num get RASQUEDO_UP;
}

@JS("Vex.Flow.Stroke.CATEGORY")
external String get Stroke_CATEGORY;

// End module Stroke
@JS("Vex.Flow.SVGContext")
class SVGContext implements IRenderContext {
  // @Ignore
  SVGContext.fakeConstructor$();
  external factory SVGContext(HtmlElement element);
  external bool iePolyfill();
  external SVGContext setFont(String family, num size, [num weight]);
  external SVGContext setRawFont(String font);
  external SVGContext setFillStyle(String style);
  external SVGContext setBackgroundFillStyle(String style);
  external SVGContext setStrokeStyle(String style);
  external SVGContext setShadowColor(String style);
  external SVGContext setShadowBlur(String blur);
  external SVGContext setLineWidth(num width);
  external SVGContext setLineDash(String dash);
  external SVGContext setLineCap(String cap_type);
  external SVGContext resize(num width, num height);
  external SVGContext scale(num x, num y);
  external void setViewBox(num xMin, num yMin, num width, num height);
  external void clear();
  external SVGContext rect(num x, num y, num width, num height);
  external SVGContext fillRect(num x, num y, num width, num height);
  external SVGContext clearRect(num x, num y, num width, num height);
  external SVGContext beginPath();
  external SVGContext moveTo(num x, num y);
  external SVGContext lineTo(num x, num y);
  external SVGContext bezierCurveToTo(
      num x1, num y1, num x2, num y2, num x, num y);
  external SVGContext quadraticCurveToTo(num x1, num y1, num x, num y);
  external SVGContext arc(num x, num y, num radius, num startAngle,
      num endAngle, bool antiClockwise);
  external SVGContext closePath();
  external SVGContext glow();
  external SVGContext fill();
  external SVGContext stroke();
  external Rect measureText(String text);
  external dynamic /*{x : number, y : number, width : number, height : number}*/ ieMeasureTextFix(
      Rect bbox, String text);
  external SVGContext fillText(String text, num x, num y);
  external SVGContext save();
  external SVGContext restore();
}

@JS("Vex.Flow.TabNote")
class TabNote extends StemmableNote {
  // @Ignore
  TabNote.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes
  /*external Note setStave(Stave stave);*/
  /*external TabNote setStave(Stave stave);*/
  external dynamic /*Note|TabNote*/ setStave(Stave stave);
  /*external {x : number, y : number} getModifierStartXY();*/
  /*external {x : number, y : number} getModifierStartXY(enum Modifier.Position position, num index);*/
  external dynamic /*{x : number, y : number}*/ getModifierStartXY(
      [num /*enum Modifier.Position*/ position, num index]);
  external factory TabNote(
      dynamic /*{positions : {str : number, fret : number}[], type? : string, dots? : number, duration : string, stem_direction? : boolean}*/ tab_struct,
      [bool draw_stem]);
  external String getCategory();
  external TabNote setGhost(bool ghost);
  external bool hasStem();
  external num getStemExtension();
  external TabNote addDot();
  external void updateWidth();
  external List<dynamic /*{str : number, fret : number}*/ > getPositions();
  external TabNote addToModifierContext(ModifierContext mc);
  external num getTieRightX();
  external num getTieLeftX();
  external num getLineForRest();
  external void preFormat();
  external num getStemX();
  external num getStemY();
  external dynamic /*{topY : number, baseY : number}*/ getStemExtents();
  external void drawFlag();
  external void drawModifiers();
  external void drawStemThrough();
  external void draw();
}

@JS("Vex.Flow.TabSlide")
class TabSlide extends TabTie {
  // @Ignore
  TabSlide.fakeConstructor$() : super.fakeConstructor$();
  external factory TabSlide(
      dynamic /*{first_note: Note, last_note: Note, first_indices : number[], last_indices : number[]}*/ notes,
      [num direction]);
  external static TabSlide createSlideUp(
      dynamic /*{first_note: Note, last_note: Note, first_indices : number[], last_indices : number[]}*/ notes);
  external static TabSlide createSlideDown(
      dynamic /*{first_note: Note, last_note: Note, first_indices : number[], last_indices : number[]}*/ notes);
  external void renderTie(
      dynamic /*{first_ys : number[], last_ys : number[], last_x_px : number, first_x_px : number, direction : number}*/ params);
}

// Module TabSlide
@JS("Vex.Flow.TabSlide.SLIDE_UP")
external num get SLIDE_UP;
@JS("Vex.Flow.TabSlide.SLIDE_DOWN")
external num get SLIDE_DOWN;

// End module TabSlide
@JS("Vex.Flow.TabStave")
class TabStave extends Stave {
  // @Ignore
  TabStave.fakeConstructor$() : super.fakeConstructor$();
  external factory TabStave(num x, num y, num width,
      [dynamic /*{vertical_bar_width? : number, glyph_spacing_px? : number, num_lines? : number, fill_style? : string, spacing_between_lines_px? : number, space_above_staff_ln? : number, space_below_staff_ln? : number, top_text_position? : number}*/ options]);
  external num getYForGlyphs();
  external TabStave addTabGlyph();
}

@JS("Vex.Flow.TabTie")
class TabTie extends StaveTie {
  // @Ignore
  TabTie.fakeConstructor$() : super.fakeConstructor$();
  external factory TabTie(
      dynamic /*{first_note: Note, last_note: Note, first_indices : number[], last_indices : number[]}*/ notes,
      [String text]);
  external TabTie createHammeron(
      dynamic /*{first_note: Note, last_note: Note, first_indices : number[], last_indices : number[]}*/ notes);
  external TabTie createPulloff(
      dynamic /*{first_note: Note, last_note: Note, first_indices : number[], last_indices : number[]}*/ notes);
  external bool draw();
}

@JS("Vex.Flow.TextBracket")
class TextBracket {
  // @Ignore
  TextBracket.fakeConstructor$();
  external factory TextBracket(
      dynamic /*{start : Note, stop : Note, text? : string, superscript? : string, position? : TextBracket.Positions}*/ bracket_data);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external TextBracket applyStyle(IRenderContext context);
  external TextBracket setDashed(bool dashed, [List<num> dash]);
  external TextBracket setFont(
      dynamic /*{family : string, size : number, weight : string}*/ font);
  external TextBracket setContext(IRenderContext context);
  external TextBracket setLine(num line);
  external void draw();
}

// Module TextBracket
@JS("Vex.Flow.TextBracket.Positions")
class Positions {
  external static num get TOP;
  external static num get BOTTOM;
}

// End module TextBracket
@JS("Vex.Flow.TextDynamics")
class TextDynamics extends Note {
  // @Ignore
  TextDynamics.fakeConstructor$() : super.fakeConstructor$();
  external factory TextDynamics(
      dynamic /*{duration : string, text : string, line? : number}*/ text_struct);
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external TextDynamics setLine(num line);
  external TextDynamics preFormat();
  external void draw();
}

@JS("Vex.Flow.TextNote")
class TextNote extends Note {
  // @Ignore
  TextNote.fakeConstructor$() : super.fakeConstructor$();
  external factory TextNote(
      dynamic /*{duration : string, text? : string, superscript? : boolean, subscript? : boolean, glyph? : string, font? : {family : string, size : number, weight : string}, line? : number, smooth? : boolean, ignore_ticks? : boolean}*/ text_struct);
  external TextNote setJustification(num /*enum TextNote.Justification*/ just);
  external TextNote setLine(num line);
  external void preFormat();
  external void draw();
}

// Module TextNote
@JS("Vex.Flow.TextNote.Justification")
class Justification {
  external static num get LEFT;
  external static num get CENTER;
  external static num get RIGHT;
}

@JS("Vex.Flow.TextNote.GLYPHS")
external dynamic /*JSMap of <String,{code : string, point : number, x_shift : number, y_shift : number}>*/ get TextNote_GLYPHS;

// End module TextNote
@anonymous
@JS()
abstract class Tickable {
  external void setContext(IRenderContext context);
  external BoundingBox getBoundingBox();
  external Fraction getTicks();
  external bool shouldIgnoreTicks();
  external num getWidth();
  external Tickable setXShift(num x);
  external num getCenterXShift();
  external bool isCenterAligned();
  external Tickable setCenterAlignment(bool align_center);
  external Voice getVoice();
  external void setVoice(Voice voice);
  external Tuplet getTuplet();
  external Tickable setTuplet(Tuplet tuplet);
  external void addToModifierContext(ModifierContext mc);
  external Tickable addModifier(Modifier mod);
  external void setTickContext(TickContext tc);
  external void preFormat();
  external Tickable postFormat();
  external Fraction getIntrinsicTicks();
  external void setIntrinsicTicks(Fraction intrinsicTicks);
  external Fraction getTickMultiplier();
  external void applyTickMultiplier(num numerator, num denominator);
  external void setDuration(Fraction duration);
}

@JS("Vex.Flow.TickContext")
class TickContext {
  // @Ignore
  TickContext.fakeConstructor$();
  external void setContext(IRenderContext context);
  external IRenderContext getContext();
  external bool shouldIgnoreTicks();
  external num getWidth();
  external num getX();
  external TickContext setX(num x);
  external num getPixelsUsed();
  external TickContext setPixelsUsed(num pixelsUsed);
  external TickContext setPadding(num padding);
  external num getMaxTicks();
  external num getMinTicks();
  external List<Tickable> getTickables();
  external List<Tickable> getCenterAlignedTickables();
  external dynamic /*{width : number, notePx : number, extraLeftPx : number, extraRightPx : number}*/ getMetrics();
  external Fraction getCurrentTick();
  external void setCurrentTick(Fraction tick);
  external dynamic /*{left: number, right: number, extraLeft : number, extraRight : number}*/ getExtraPx();
  external TickContext addTickable(Tickable tickable);
  external TickContext preFormat();
  external TickContext postFormat();
  external static TickContext getNextContext(TickContext tContext);
}

@JS("Vex.Flow.TimeSignature")
class TimeSignature extends StaveModifier {
  // @Ignore
  TimeSignature.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes
  /*external void addModifier();*/
  /*external void addModifier(Stave stave);*/
  external void addModifier([Stave stave]);
  /*external void addEndModifier();*/
  /*external void addEndModifier(Stave stave);*/
  external void addEndModifier([Stave stave]);
  external factory TimeSignature(String timeSpec, [num customPadding]);
  external dynamic /*{num : number, glyph : Glyph}*/ parseTimeSpec(
      String timeSpec);
  external Glyph makeTimeSignatureGlyph(List<num> topNums, List<num> botNums);
  external dynamic /*{num : number, glyph : Glyph}*/ getTimeSig();
}

// Module TimeSignature
@JS("Vex.Flow.TimeSignature.glyphs")
external dynamic /*JSMap of <String,{code : string, point : number, line : number}>*/ get glyphs;

// End module TimeSignature
@JS("Vex.Flow.TimeSigNote")
class TimeSigNote extends Note {
  // @Ignore
  TimeSigNote.fakeConstructor$() : super.fakeConstructor$();

  /// TODO remove the following lines once TypeScript allows subclass overrides with type changes or type inconsistencies mentioned below are fixed
  /*external Note setStave(Stave stave);*/
  /*external void setStave(Stave stave);*/
  external dynamic /*Note|Null*/ setStave(Stave stave);
  external factory TimeSigNote(String timeSpec, num customPadding);
  external BoundingBox getBoundingBox();
  external TimeSigNote addToModifierContext();
  external TimeSigNote preFormat();
  external void draw();
}

@JS("Vex.Flow.Tremolo")
class Tremolo extends Modifier {
  // @Ignore
  Tremolo.fakeConstructor$() : super.fakeConstructor$();
  external factory Tremolo(num num);
  external String getCategory();
  external void draw();
}

@JS("Vex.Flow.Tuning")
class Tuning {
  // @Ignore
  Tuning.fakeConstructor$();
  external factory Tuning([String tuningString]);
  external num noteToInteger(String noteString);
  external void setTuning(String tuningString);
  external num getValueForString(String stringNum);
  external num getValueForFret(String fretNum, String stringNum);
  external String getNoteForFret(String fretNum, String stringNum);
}

// Module Tuning
@JS("Vex.Flow.Tuning.names")
external dynamic /*JSMap of <String,String>*/ get names;

// End module Tuning
@JS("Vex.Flow.Tuplet")
class Tuplet {
  // @Ignore
  Tuplet.fakeConstructor$();
  external factory Tuplet(List<StaveNote> notes,
      dynamic /*{num_notes? : number, beats_occupied? : number}*/ options);
  external void attach();
  external void detach();
  external Tuplet setContext(IRenderContext context);
  external Tuplet setBracketed(bool bracketed);
  external Tuplet setRatioed(bool ratioed);
  external Tuplet setTupletLocation(num location);
  external List<StaveNote> getNotes();
  external num getNoteCount();
  external num getBeatsOccupied();
  external void setBeatsOccupied(num beats);
  external void resolveGlyphs();
  external void draw();
}

// Module Tuplet
@JS("Vex.Flow.Tuplet.LOCATION_TOP")
external num get LOCATION_TOP;
@JS("Vex.Flow.Tuplet.LOCATION_BOTTOM")
external num get LOCATION_BOTTOM;

// End module Tuplet
@JS("Vex.Flow.Vibrato")
class Vibrato extends Modifier {
  // @Ignore
  Vibrato.fakeConstructor$() : super.fakeConstructor$();
  external static bool format(
      List<Vibrato> vibratos,
      dynamic /*{left_shift : number, right_shift : number, text_line : number}*/ state,
      ModifierContext context);
  external Vibrato setHarsh(bool harsh);
  external Vibrato setVibratoWidth(num width);
  external void draw();
}

// Module Vibrato
@JS("Vex.Flow.Vibrato.CATEGORY")
external String get Vibrato_CATEGORY;

// End module Vibrato
@JS("Vex.Flow.Voice")
class Voice {
  // @Ignore
  Voice.fakeConstructor$();
  external factory Voice(
      dynamic /*{num_beats? : number, beat_value? : number, resolution? : number}*/ time);
  external Fraction getTotalTicks();
  external Fraction getTicksUsed();
  external num getLargestTickWidth();
  external Fraction getSmallestTickCount();
  external List<Tickable> getTickables();
  external num getMode();
  external Voice setMode(num mode);
  external num getResolutionMultiplier();
  external num getActualResolution();
  external Voice setStave(Stave stave);
  external BoundingBox getBoundingBox();
  external VoiceGroup getVoiceGroup();
  external Voice setVoiceGroup(VoiceGroup g);
  external Voice setStrict(bool strict);
  external bool isComplete();
  external Voice addTickable(Tickable tickable);
  external Voice addTickables(List<Tickable> tickables);
  external Voice preFormat();
  external void draw(IRenderContext context, [Stave stave]);
}

// Module Voice
@JS("Vex.Flow.Voice.Mode")
class Mode {
  external static num get STRICT;
  external static num get SOFT;
  external static num get FULL;
}

// End module Voice
@JS("Vex.Flow.VoiceGroup")
class VoiceGroup {
  // @Ignore
  VoiceGroup.fakeConstructor$();
  external List<Voice> getVoices();
  external List<ModifierContext> getModifierContexts();
  external void addVoice(Voice voice);
}

@JS("Vex.Flow.Volta")
class Volta extends StaveModifier {
  // @Ignore
  Volta.fakeConstructor$() : super.fakeConstructor$();
  external factory Volta(
      num /*enum Volta.type*/ type, num number, num x, num y_shift);
  external String getCategory();
  external Volta setShiftY(num y);
  external Volta draw(Stave stave, num x);
}

// Module Volta
@JS("Vex.Flow.Volta.type")
class voltaType {
  external static num get NONE;
  external static num get BEGIN;
  external static num get MID;
  external static num get END;
  external static num get BEGIN_END;
}
// End module Volta

// End module Flow

// End module Vex

// Module vexflow
/* WARNING: export assignment not yet supported. */

// End module vexflow

