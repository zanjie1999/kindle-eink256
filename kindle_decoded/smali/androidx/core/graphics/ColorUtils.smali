.class public final Landroidx/core/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "outXyz"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 444
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move/from16 v1, p0

    int-to-double v1, v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    const-wide v5, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v7, 0x4003333333333333L    # 2.4

    const-wide v9, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v11, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v13, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v15, v1, v13

    if-gez v15, :cond_0

    div-double/2addr v1, v5

    goto :goto_0

    :cond_0
    add-double/2addr v1, v11

    div-double/2addr v1, v9

    .line 449
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    :goto_0
    move/from16 v15, p1

    int-to-double v7, v15

    div-double/2addr v7, v3

    cmpg-double v15, v7, v13

    if-gez v15, :cond_1

    div-double/2addr v7, v5

    goto :goto_1

    :cond_1
    add-double/2addr v7, v11

    div-double/2addr v7, v9

    const-wide v9, 0x4003333333333333L    # 2.4

    .line 451
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    :goto_1
    move/from16 v15, p2

    int-to-double v9, v15

    div-double/2addr v9, v3

    cmpg-double v3, v9, v13

    if-gez v3, :cond_2

    div-double/2addr v9, v5

    goto :goto_2

    :cond_2
    add-double/2addr v9, v11

    const-wide v3, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v9, v3

    const-wide v3, 0x4003333333333333L    # 2.4

    .line 453
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    :goto_2
    const/4 v3, 0x0

    const-wide v4, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double v4, v4, v1

    const-wide v11, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double v11, v11, v7

    add-double/2addr v4, v11

    const-wide v11, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double v11, v11, v9

    add-double/2addr v4, v11

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v11

    .line 455
    aput-wide v4, v0, v3

    const/4 v3, 0x1

    const-wide v4, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v4, v4, v1

    const-wide v13, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v13, v13, v7

    add-double/2addr v4, v13

    const-wide v13, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v13, v13, v9

    add-double/2addr v4, v13

    mul-double v4, v4, v11

    .line 456
    aput-wide v4, v0, v3

    const/4 v3, 0x2

    const-wide v4, 0x3f93c36113404ea5L    # 0.0193

    mul-double v1, v1, v4

    const-wide v4, 0x3fbe83e425aee632L    # 0.1192

    mul-double v7, v7, v4

    add-double/2addr v1, v7

    const-wide v4, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double v9, v9, v4

    add-double/2addr v1, v9

    mul-double v1, v1, v11

    .line 457
    aput-wide v1, v0, v3

    return-void

    .line 445
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static calculateContrast(II)D
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "foreground",
            "background"
        }
    .end annotation

    .line 159
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 163
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 165
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 168
    :cond_0
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 169
    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide p0

    add-double/2addr p0, v2

    .line 172
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2

    .line 160
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background can not be translucent: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateLuminance(I)D
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 145
    invoke-static {}, Landroidx/core/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v0

    .line 146
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->colorToXYZ(I[D)V

    const/4 p0, 0x1

    .line 148
    aget-wide v1, v0, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static colorToXYZ(I[D)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "outXyz"
        }
    .end annotation

    .line 421
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroidx/core/graphics/ColorUtils;->RGBToXYZ(III[D)V

    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "foregroundAlpha",
            "backgroundAlpha"
        }
    .end annotation

    rsub-int p1, p1, 0xff

    rsub-int p0, p0, 0xff

    mul-int p1, p1, p0

    .line 131
    div-int/lit16 p1, p1, 0xff

    rsub-int p0, p1, 0xff

    return p0
.end method

.method public static compositeColors(II)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "foreground",
            "background"
        }
    .end annotation

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 54
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 55
    invoke-static {v1, v0}, Landroidx/core/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    .line 57
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 57
    invoke-static {v3, v1, v4, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    .line 59
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 60
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 59
    invoke-static {v4, v1, v5, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 61
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 62
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 61
    invoke-static {p0, v1, p1, v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result p0

    .line 64
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static compositeComponent(IIIII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fgC",
            "fgA",
            "bgC",
            "bgA",
            "a"
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    mul-int/lit16 p0, p0, 0xff

    mul-int p0, p0, p1

    mul-int p2, p2, p3

    rsub-int p1, p1, 0xff

    mul-int p2, p2, p1

    add-int/2addr p0, p2

    mul-int/lit16 p4, p4, 0xff

    .line 136
    div-int/2addr p0, p4

    return p0
.end method

.method private static getTempDouble3Array()[D
    .locals 2

    .line 678
    sget-object v0, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 681
    sget-object v1, Landroidx/core/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static setAlphaComponent(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "alpha"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 366
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
