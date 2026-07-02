.class public Lcom/amazon/android/docviewer/KindleDocLineSettings;
.super Ljava/lang/Object;
.source "KindleDocLineSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;,
        Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;,
        Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;
    }
.end annotation


# static fields
.field private static final FALLBACK_MARGIN_SIZE:I = 0x15

.field private static final defaultLength:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

.field private static final defaultLineSpacing:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

.field private static final defaultTextAlignment:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

.field private static typeRampSpacing:[I


# instance fields
.field private horizontalMarginsArrayId:I

.field private horizontalTextBottomMarginId:I

.field private horizontalTextTopMarginId:I

.field protected resources:Landroid/content/res/Resources;

.field private twoColumnMarginsArrayId:I

.field private verticalTextLeftMarginId:I

.field private verticalTextMarginsArrayId:I

.field private verticalTextRightMarginId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 164
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NONE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->defaultLength:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    .line 165
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->NARROW:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->defaultLineSpacing:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    .line 166
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->JUSTIFY:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->defaultTextAlignment:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 9

    .line 219
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultHorizontalMarginsArrayId()I

    move-result v2

    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultTwoColumnMarginsArrayId()I

    move-result v3

    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultVerticalTextMarginsArrayId()I

    move-result v4

    .line 220
    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultHorizontalTextTopMarginId()I

    move-result v5

    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultHorizontalTextBottomMarginId()I

    move-result v6

    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultVerticalTextLeftMarginId()I

    move-result v7

    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getDefaultVerticalTextRightMarginId()I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    .line 219
    invoke-direct/range {v0 .. v8}, Lcom/amazon/android/docviewer/KindleDocLineSettings;-><init>(Landroid/content/res/Resources;IIIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIIIII)V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    .line 241
    iput p2, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->horizontalMarginsArrayId:I

    .line 242
    iput p3, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->twoColumnMarginsArrayId:I

    .line 243
    iput p4, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->verticalTextMarginsArrayId:I

    .line 245
    iput p5, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->horizontalTextTopMarginId:I

    .line 246
    iput p6, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->horizontalTextBottomMarginId:I

    .line 247
    iput p7, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->verticalTextLeftMarginId:I

    .line 248
    iput p8, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->verticalTextRightMarginId:I

    return-void
.end method

.method private getAdditionalSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;Z)I
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_3

    .line 303
    sget-object p2, Lcom/amazon/android/docviewer/KindleDocLineSettings$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocLineSettings$LineSpacingOptions:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->extra_line_spacing_wide:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->extra_line_spacing_default:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 305
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->extra_line_spacing_narrow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    move v3, p1

    goto :goto_1

    .line 317
    :cond_3
    sget-object p2, Lcom/amazon/android/docviewer/KindleDocLineSettings$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocLineSettings$LineSpacingOptions:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    goto :goto_1

    .line 327
    :cond_4
    iget-object p1, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->extra_line_spacing_wide:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 323
    :cond_5
    iget-object p1, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->extra_line_spacing_ja_vert_default:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 319
    :cond_6
    iget-object p1, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->extra_line_spacing_narrow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_1
    return v3
.end method

.method public static getDefaultHorizontalMarginsArrayId()I
    .locals 1

    .line 108
    sget v0, Lcom/amazon/kindle/krl/R$array;->page_margins_user_settings:I

    return v0
.end method

.method public static getDefaultHorizontalTextBottomMarginId()I
    .locals 1

    .line 124
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    sget v0, Lcom/amazon/kindle/krl/R$dimen;->reader_bottom_margin_v2:I

    return v0

    .line 127
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$dimen;->reader_bottom_margin:I

    return v0
.end method

.method public static getDefaultHorizontalTextTopMarginId()I
    .locals 1

    .line 120
    sget v0, Lcom/amazon/kindle/krl/R$dimen;->reader_top_margin:I

    return v0
.end method

.method public static getDefaultLineSpacing(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;
    .locals 1

    if-eqz p0, :cond_0

    .line 200
    sget v0, Lcom/amazon/kindle/krl/R$integer;->default_line_spacing_serialization_value:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {p0}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    move-result-object p0

    return-object p0

    .line 202
    :cond_0
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->defaultLineSpacing:Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    return-object p0
.end method

.method public static getDefaultMargin(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
    .locals 1

    if-eqz p0, :cond_0

    .line 187
    sget v0, Lcom/amazon/kindle/krl/R$integer;->default_margin_serialization_value:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {p0}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object p0

    return-object p0

    .line 190
    :cond_0
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->defaultLength:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    return-object p0
.end method

.method public static getDefaultTextAlignment(Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;
    .locals 1

    if-eqz p0, :cond_0

    .line 213
    sget v0, Lcom/amazon/kindle/krl/R$integer;->default_text_alignment_serialization_value:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {p0}, Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    move-result-object p0

    return-object p0

    .line 215
    :cond_0
    sget-object p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->defaultTextAlignment:Lcom/amazon/android/docviewer/KindleDocLineSettings$TextAlignment;

    return-object p0
.end method

.method public static getDefaultTwoColumnMarginsArrayId()I
    .locals 1

    .line 112
    sget v0, Lcom/amazon/kindle/krl/R$array;->two_page_margins_user_settings:I

    return v0
.end method

.method public static getDefaultVerticalTextLeftMarginId()I
    .locals 1

    .line 131
    sget v0, Lcom/amazon/kindle/krl/R$dimen;->reader_left_margin:I

    return v0
.end method

.method public static getDefaultVerticalTextMarginsArrayId()I
    .locals 1

    .line 116
    sget v0, Lcom/amazon/kindle/krl/R$array;->vertical_page_margins_user_settings:I

    return v0
.end method

.method public static getDefaultVerticalTextRightMarginId()I
    .locals 1

    .line 135
    sget v0, Lcom/amazon/kindle/krl/R$dimen;->reader_right_margin:I

    return v0
.end method

.method private getMarginValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I
    .locals 1

    if-nez p1, :cond_0

    .line 379
    sget-object p1, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NONE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 384
    invoke-static {p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->access$000(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I

    move-result p1

    const/16 v0, 0x15

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 385
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private static loadTypeRampSpacing(Landroid/content/res/Resources;)V
    .locals 3

    .line 145
    sget v0, Lcom/amazon/kindle/krl/R$array;->typeface_ramp_spacing_array:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->typeRampSpacing:[I

    .line 148
    array-length v0, v0

    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 153
    sget v0, Lcom/amazon/kindle/krl/R$bool;->font_sizes_in_pixels:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 158
    :goto_0
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->typeRampSpacing:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 159
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/KindleDocLineSettings;->typeRampSpacing:[I

    aget v2, v2, p0

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v1

    aput v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 149
    :cond_1
    const-class p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;

    invoke-static {p0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "The number of font sizes and number of ramp spacings are not the same!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBottomMarginValueForContinuousScroll()I
    .locals 2

    .line 446
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->reader_continuous_scroll_bottom_margin_v2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->reader_continuous_scroll_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getBottomMarginValueForHorizontalText()I
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->horizontalTextBottomMarginId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getCalculatedHorizontalMargins(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I
    .locals 1

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 395
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->twoPageMarginTypeToValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I

    move-result p1

    return p1

    .line 397
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->marginTypeToValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I

    move-result p1

    return p1
.end method

.method public getLeftMarginValueForVerticalText()I
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->verticalTextLeftMarginId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getLineSpacing(IIZ)I
    .locals 0

    .line 269
    invoke-static {p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;->fromSerializationValue(I)Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getLineSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;IZ)I

    move-result p1

    return p1
.end method

.method public getLineSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;IZ)I
    .locals 1

    .line 290
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->typeRampSpacing:[I

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->loadTypeRampSpacing(Landroid/content/res/Resources;)V

    .line 294
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->typeRampSpacing:[I

    aget p2, v0, p2

    .line 295
    invoke-direct {p0, p1, p3}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getAdditionalSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method public getMarginIncreaseForFastNav()I
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->cs_fast_navigation_margin_increase:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getRightMarginValueForVerticalText()I
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->verticalTextRightMarginId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTopMarginValueForContinuousScroll()I
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->reader_continuous_scroll_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTopMarginValueForHorizontalText()I
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->horizontalTextTopMarginId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public marginTypeToValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I
    .locals 1

    .line 355
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->horizontalMarginsArrayId:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getMarginValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I

    move-result p1

    return p1
.end method

.method public twoPageMarginTypeToValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I
    .locals 1

    .line 374
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->twoColumnMarginsArrayId:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getMarginValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I

    move-result p1

    return p1
.end method

.method public verticalMarginTypeToValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I
    .locals 1

    .line 364
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->verticalTextMarginsArrayId:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getMarginValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I

    move-result p1

    return p1
.end method
