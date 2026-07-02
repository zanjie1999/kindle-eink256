.class public Lcom/amazon/kcp/reader/ui/PinYinExampleImageView;
.super Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;
.source "PinYinExampleImageView.java"


# static fields
.field private static final PINYIN_EXAMPLE_HINT:Ljava/lang/String;

.field private static final PINYIN_EXAMPLE_TEXT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 29
    sget v1, Lcom/amazon/kindle/ww/R$string;->pinyin_example_image_view_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/reader/ui/PinYinExampleImageView;->PINYIN_EXAMPLE_TEXT:Ljava/lang/String;

    .line 30
    sget v1, Lcom/amazon/kindle/ww/R$string;->pinyin_example_image_view_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/PinYinExampleImageView;->PINYIN_EXAMPLE_HINT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/amazon/kcp/reader/ui/PinYinExampleImageView;->PINYIN_EXAMPLE_TEXT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/amazon/kcp/reader/ui/PinYinExampleImageView;->PINYIN_EXAMPLE_HINT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 69
    iget v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->width:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 71
    sget-object v2, Lcom/amazon/kcp/reader/ui/PinYinExampleImageView;->PINYIN_EXAMPLE_TEXT:Ljava/lang/String;

    int-to-float v0, v0

    iget v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->height:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 74
    iget v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->width:I

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 75
    iget v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->height:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v2, v1

    sget v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->INDICATOR_SPACING:I

    sub-int/2addr v2, v1

    .line 76
    sget-object v1, Lcom/amazon/kcp/reader/ui/PinYinExampleImageView;->PINYIN_EXAMPLE_HINT:Ljava/lang/String;

    int-to-float v0, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
