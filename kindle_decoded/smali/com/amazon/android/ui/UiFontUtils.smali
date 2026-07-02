.class public final Lcom/amazon/android/ui/UiFontUtils;
.super Ljava/lang/Object;
.source "UiFontUtils.kt"


# static fields
.field private static final ATTRIB_FONTFAMILY:Ljava/lang/String; = "fontFamily"

.field public static final INSTANCE:Lcom/amazon/android/ui/UiFontUtils;

.field private static final NAMESPACE_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final TAG:Ljava/lang/String;

.field private static final fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

.field private static final fontFamilyAttrs:[I

.field private static final textAppearanceAndFontFamilyAttrs:[I

.field private static final typefaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/amazon/android/ui/UiFontUtils;

    invoke-direct {v0}, Lcom/amazon/android/ui/UiFontUtils;-><init>()V

    sput-object v0, Lcom/amazon/android/ui/UiFontUtils;->INSTANCE:Lcom/amazon/android/ui/UiFontUtils;

    .line 23
    const-class v1, Lcom/amazon/android/ui/UiFontUtils;

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils.getTag(UiFontUtils::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/android/ui/UiFontUtils;->TAG:Ljava/lang/String;

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    .line 28
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    sput-object v1, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const v2, 0x1010034

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 33
    sget v2, Lcom/amazon/kindle/krl/R$attr;->ruby_font_family:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sput-object v1, Lcom/amazon/android/ui/UiFontUtils;->textAppearanceAndFontFamilyAttrs:[I

    new-array v1, v4, [I

    aput v2, v1, v3

    .line 34
    sput-object v1, Lcom/amazon/android/ui/UiFontUtils;->fontFamilyAttrs:[I

    .line 39
    invoke-direct {v0}, Lcom/amazon/android/ui/UiFontUtils;->initFonts()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getRubyFontFamily(Landroid/util/AttributeSet;Landroid/content/Context;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 3

    .line 121
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->textAppearanceAndFontFamilyAttrs:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.obtainStyledAttr\u2026aranceAndFontFamilyAttrs)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->fontFamilyAttrs:[I

    invoke-virtual {p2, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v0, "context.obtainStyledAttr\u2026s(resId, fontFamilyAttrs)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 131
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private final initFonts()V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_BOLD:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontFamily.ROBOTO_BOLD.typeFaceName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_BOLD:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v2, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "fontFactory.getTypeFace(FontFamily.ROBOTO_BOLD)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_ITALIC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontFamily.ROBOTO_ITALIC.typeFaceName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_ITALIC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v2, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "fontFactory.getTypeFace(FontFamily.ROBOTO_ITALIC)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_LIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontFamily.ROBOTO_LIGHT.typeFaceName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_LIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v2, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "fontFactory.getTypeFace(FontFamily.ROBOTO_LIGHT)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_MEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontFamily.ROBOTO_MEDIUM.typeFaceName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_MEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v2, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "fontFactory.getTypeFace(FontFamily.ROBOTO_MEDIUM)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_REGULAR:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontFamily.ROBOTO_REGULAR.typeFaceName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->ROBOTO_REGULAR:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v2, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "fontFactory.getTypeFace(FontFamily.ROBOTO_REGULAR)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 54
    :cond_0
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontFamily.EMBER.typeFaceName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v2, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "fontFactory.getTypeFace(FontFamily.EMBER)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBERLIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontFamily.EMBERLIGHT.typeFaceName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->EMBERLIGHT:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v2, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "fontFactory.getTypeFace(FontFamily.EMBERLIGHT)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->BOOKERLY:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontFamily.BOOKERLY.typeFaceName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->BOOKERLY:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v2, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "fontFactory.getTypeFace(FontFamily.BOOKERLY)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->BOOKERLYDISPLAY:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontFamily.BOOKERLYDISPLAY.typeFaceName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->BOOKERLYDISPLAY:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v2, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "fontFactory.getTypeFace(\u2026ntFamily.BOOKERLYDISPLAY)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBERMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontFamily.EMBERMEDIUM.typeFaceName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->EMBERMEDIUM:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v2, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "fontFactory.getTypeFace(FontFamily.EMBERMEDIUM)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/mobipocket/android/drawing/FontFamily;->EMBERITALIC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FontFamily.EMBERITALIC.typeFaceName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    sget-object v3, Lcom/mobipocket/android/drawing/FontFamily;->EMBERITALIC:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v2, v3}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    const-string v3, "fontFactory.getTypeFace(FontFamily.EMBERITALIC)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static final setUiFont(Landroid/util/AttributeSet;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const-string/jumbo v0, "textView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "fontFamily"

    .line 79
    invoke-interface {p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 84
    sget-object v0, Lcom/amazon/android/ui/UiFontUtils;->INSTANCE:Lcom/amazon/android/ui/UiFontUtils;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/android/ui/UiFontUtils;->getRubyFontFamily(Landroid/util/AttributeSet;Landroid/content/Context;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/StyleUtils;->getStyledFontFamily(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_4

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Attempting to set font for TextView: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    sget-object p0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 98
    sget-object p0, Lcom/amazon/android/ui/UiFontUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Typeface not found in map: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - attempting to load."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v0}, Lcom/mobipocket/android/drawing/FontFamily;->fromTypeFaceName(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p0

    const-string p1, "FontFamily.fromTypeFaceName(fontFamily)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 p1, 0x2

    new-array v1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Loaded font \"%s\" for name \"%s\"."

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object p1, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/amazon/android/ui/UiFontUtils;->fontFactory:Lcom/mobipocket/android/drawing/AndroidFontFactory;

    invoke-virtual {v1, p0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p0

    const-string v1, "fontFactory.getTypeFace(ff)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_3
    sget-object p0, Lcom/amazon/android/ui/UiFontUtils;->typefaceMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting TypeFace on TextView: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4
    return-void
.end method
