.class public Lcom/amazon/kindle/speedreading/doubletime/FontSettings;
.super Ljava/lang/Object;
.source "FontSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.speedreading.doubletime.FontSettings"

.field private static final bigWord:Ljava/lang/String; = "wwHonororificabilitudin"

.field private static instance:Lcom/amazon/kindle/speedreading/doubletime/FontSettings;


# instance fields
.field private maxTextSize:I

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;

    invoke-direct {v0}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;-><init>()V

    sput-object v0, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->instance:Lcom/amazon/kindle/speedreading/doubletime/FontSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->maxTextSize:I

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/speedreading/doubletime/FontSettings;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->instance:Lcom/amazon/kindle/speedreading/doubletime/FontSettings;

    return-object v0
.end method


# virtual methods
.method public getTextSize(Z)I
    .locals 9

    .line 59
    iget v0, p0, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->maxTextSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_2

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 67
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 68
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/speedreading/R$integer;->dt_speed_reading_box_ideal_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 71
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/amazon/kindle/speedreading/R$integer;->dt_speed_reading_box_ideal_height:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    .line 73
    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr p1, v0

    mul-float p1, p1, v2

    float-to-int p1, p1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p1, p1, v0

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v3, 0x1

    int-to-float v4, v3

    .line 78
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v4, "wwHonororificabilitudin"

    .line 80
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v6, v7

    const/4 v7, 0x1

    :goto_0
    cmpg-float v5, v5, v2

    if-gez v5, :cond_1

    cmpg-float v5, v6, p1

    if-gez v5, :cond_1

    add-int/lit8 v7, v7, 0x1

    int-to-float v5, v7

    .line 86
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 87
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v6

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v6, v8

    goto :goto_0

    :cond_1
    sub-int/2addr v7, v3

    .line 91
    iput v7, p0, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->maxTextSize:I

    .line 94
    :cond_2
    iget p1, p0, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->maxTextSize:I

    return p1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v0

    .line 46
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getReaderSettings()Lcom/amazon/kindle/krx/reader/IReaderSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderSettings;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public setReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method
