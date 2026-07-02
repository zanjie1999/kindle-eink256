.class public Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;
.super Ljava/lang/Object;
.source "TextDrawer.java"

# interfaces
.implements Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;


# static fields
.field private static final DEFAULT_ALPHA:I = 0xff

.field private static final DEFAULT_FONT:Lcom/mobipocket/android/drawing/FontFamily;

.field private static final DEFAULT_TEXT_SCALE_X:I = 0x1


# instance fields
.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/mobipocket/android/drawing/FontFamily;->HELVETICA:Lcom/mobipocket/android/drawing/FontFamily;

    sput-object v0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->DEFAULT_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initPaint()V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->paint:Landroid/graphics/Paint;

    .line 73
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->DEFAULT_FONT:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v0, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krxsdk/R$dimen;->line_decoration_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public drawText(Landroid/graphics/Canvas;Ljava/lang/String;IFF)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 28
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IFFF)V

    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;Ljava/lang/String;IFFF)V
    .locals 2

    .line 34
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->initPaint()V

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p3, 0x0

    cmpl-float p3, p6, p3

    if-eqz p3, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48
    invoke-virtual {p1, p6, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 50
    :cond_1
    iget-object p6, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_2

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 1

    .line 62
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->initPaint()V

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method
