.class public Lcom/amazon/nwstd/utils/NewsstandUIUtils;
.super Ljava/lang/Object;
.source "NewsstandUIUtils.java"


# direct methods
.method public static areSoftKeysVisible(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const-string/jumbo v1, "window"

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    .line 96
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    .line 97
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 99
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 100
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 102
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 103
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 105
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 106
    invoke-virtual {p0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    iget p0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 109
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, v3

    if-gtz v1, :cond_2

    sub-int/2addr v2, p0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p0

    const/4 v1, 0x4

    .line 114
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez p0, :cond_0

    if-nez v1, :cond_0

    :cond_2
    :goto_0
    return v0
.end method

.method public static getActionBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 27
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 29
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public static getHtmlColor(I)Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xffffff

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNavigationBarPosition(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const-string/jumbo v0, "window"

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_1

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 135
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 137
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 138
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 140
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 141
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 143
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 144
    invoke-virtual {p0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 146
    iget p0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 147
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_0

    const-string/jumbo p0, "right"

    return-object p0

    :cond_0
    sub-int/2addr v1, p0

    if-lez v1, :cond_1

    const-string p0, "bottom"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
