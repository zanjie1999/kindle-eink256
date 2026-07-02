.class Lcom/amazon/device/ads/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static rotationArray:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 12
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/device/ads/DisplayUtils;->rotationArray:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x9
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x9
        0x8
        0x1
    .end array-data
.end method

.method public static determineCanonicalScreenOrientation(Landroid/content/Context;Lcom/amazon/device/ads/AndroidBuildInfo;)I
    .locals 3

    const-string/jumbo p1, "window"

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 31
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    if-ne p0, v1, :cond_0

    if-eq p1, v2, :cond_0

    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    xor-int/lit8 p0, v0, 0x1

    .line 44
    sget-object v0, Lcom/amazon/device/ads/DisplayUtils;->rotationArray:[[I

    aget-object p0, v0, p0

    aget p0, p0, p1

    return p0
.end method
