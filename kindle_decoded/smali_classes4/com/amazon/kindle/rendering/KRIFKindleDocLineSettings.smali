.class public Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;
.super Lcom/amazon/android/docviewer/KindleDocLineSettings;
.source "KRIFKindleDocLineSettings.java"


# static fields
.field private static typeRampSpacingNarrow:[I

.field private static typeRampSpacingNormal:[I

.field private static typeRampSpacingWide:[I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIIIII)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p8}, Lcom/amazon/android/docviewer/KindleDocLineSettings;-><init>(Landroid/content/res/Resources;IIIIIII)V

    return-void
.end method

.method private static loadTypeRampSpacing(Landroid/content/res/Resources;)V
    .locals 4

    .line 19
    sget v0, Lcom/amazon/kindle/renderingmodule/R$array;->yj_typeface_ramp_spacing_array_narrow:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingNarrow:[I

    .line 20
    sget v0, Lcom/amazon/kindle/renderingmodule/R$array;->yj_typeface_ramp_spacing_array_normal:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingNormal:[I

    .line 21
    sget v0, Lcom/amazon/kindle/renderingmodule/R$array;->yj_typeface_ramp_spacing_array_wide:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingWide:[I

    .line 24
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v0

    array-length v0, v0

    .line 25
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingNarrow:[I

    array-length v1, v1

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingNormal:[I

    array-length v1, v1

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingWide:[I

    array-length v1, v1

    if-ne v1, v0, :cond_1

    .line 32
    sget v1, Lcom/amazon/kindle/renderingmodule/R$bool;->font_sizes_in_pixels:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    .line 38
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingNarrow:[I

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingNarrow:[I

    aget v3, v3, p0

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v2

    aput v2, v1, p0

    .line 39
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingNormal:[I

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingNormal:[I

    aget v3, v3, p0

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v2

    aput v2, v1, p0

    .line 40
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingWide:[I

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingWide:[I

    aget v3, v3, p0

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v2

    aput v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 28
    :cond_1
    const-class p0, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;

    invoke-static {p0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "The number of font sizes and number of ramp spacings are not the same!"

    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getLineSpacing(Lcom/amazon/android/docviewer/KindleDocLineSettings$LineSpacingOptions;IZ)I
    .locals 2

    .line 56
    sget-object p3, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingNarrow:[I

    if-nez p3, :cond_0

    .line 57
    iget-object p3, p0, Lcom/amazon/android/docviewer/KindleDocLineSettings;->resources:Landroid/content/res/Resources;

    invoke-static {p3}, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->loadTypeRampSpacing(Landroid/content/res/Resources;)V

    .line 60
    :cond_0
    sget-object p3, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingNarrow:[I

    array-length v0, p3

    const/4 v1, 0x1

    if-lt p2, v0, :cond_1

    .line 61
    array-length p2, p3

    sub-int/2addr p2, v1

    .line 63
    :cond_1
    sget-object p3, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings$1;->$SwitchMap$com$amazon$android$docviewer$KindleDocLineSettings$LineSpacingOptions:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    if-eq p1, v1, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    .line 70
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingNormal:[I

    aget p1, p1, p2

    return p1

    .line 67
    :cond_2
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingWide:[I

    aget p1, p1, p2

    return p1

    .line 65
    :cond_3
    sget-object p1, Lcom/amazon/kindle/rendering/KRIFKindleDocLineSettings;->typeRampSpacingNarrow:[I

    aget p1, p1, p2

    return p1
.end method
