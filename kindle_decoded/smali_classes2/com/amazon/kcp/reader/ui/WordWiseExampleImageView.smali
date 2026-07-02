.class public Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;
.super Landroid/view/View;
.source "WordWiseExampleImageView.java"


# static fields
.field protected static final EXAMPLE_HINT_SIZE:I

.field protected static final EXAMPLE_TEXT_SIZE:I

.field protected static final INDICATOR_CARET_HEIGHT:I

.field protected static final INDICATOR_CARET_WIDTH:I

.field protected static final INDICATOR_SPACING:I

.field public static final WORDWISE_EXAMPLE_HINT_CN:Ljava/lang/String;

.field public static final WORDWISE_EXAMPLE_HINT_EN:Ljava/lang/String;

.field protected static final WORDWISE_EXAMPLE_TEXT:Ljava/lang/String;


# instance fields
.field protected exampleTextPaint:Landroid/graphics/Paint;

.field protected exampleTextRect:Landroid/graphics/Rect;

.field protected height:I

.field protected hintTextPaint:Landroid/graphics/Paint;

.field protected hintTextRect:Landroid/graphics/Rect;

.field protected hintToDispay:Ljava/lang/String;

.field protected indicatorPaint:Landroid/graphics/Paint;

.field protected path:Landroid/graphics/Path;

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    sget v1, Lcom/amazon/kindle/ww/R$dimen;->wordwise_exampleImageView_example_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->EXAMPLE_TEXT_SIZE:I

    .line 46
    sget v1, Lcom/amazon/kindle/ww/R$dimen;->wordwise_exampleImageView_example_hint_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->EXAMPLE_HINT_SIZE:I

    .line 47
    sget v1, Lcom/amazon/kindle/ww/R$dimen;->wordwise_exampleImageView_indicator_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->INDICATOR_SPACING:I

    .line 48
    sget v1, Lcom/amazon/kindle/ww/R$dimen;->wordwise_exampleImageView_indicator_caret_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->INDICATOR_CARET_WIDTH:I

    .line 49
    sget v1, Lcom/amazon/kindle/ww/R$dimen;->wordwise_exampleImageView_indicator_caret_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->INDICATOR_CARET_HEIGHT:I

    .line 50
    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_example_image_view_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->WORDWISE_EXAMPLE_TEXT:Ljava/lang/String;

    .line 51
    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_example_image_view_hint_en:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->WORDWISE_EXAMPLE_HINT_EN:Ljava/lang/String;

    .line 52
    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_example_image_view_hint_cn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->WORDWISE_EXAMPLE_HINT_CN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextRect:Landroid/graphics/Rect;

    .line 62
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextRect:Landroid/graphics/Rect;

    .line 73
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextRect:Landroid/graphics/Rect;

    .line 85
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextPaint:Landroid/graphics/Paint;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->indicatorPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextPaint:Landroid/graphics/Paint;

    sget v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->EXAMPLE_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextPaint:Landroid/graphics/Paint;

    sget v2, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->EXAMPLE_HINT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->indicatorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->path:Landroid/graphics/Path;

    .line 103
    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSelectedWordWiseLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->WORDWISE_EXAMPLE_HINT_CN:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintToDispay:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->WORDWISE_EXAMPLE_HINT_EN:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintToDispay:Ljava/lang/String;

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->WORDWISE_EXAMPLE_TEXT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 161
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 164
    iget v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->width:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 166
    sget-object v2, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->WORDWISE_EXAMPLE_TEXT:Ljava/lang/String;

    int-to-float v3, v0

    iget v4, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->height:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 170
    iget v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->height:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v2, v1

    sget v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->INDICATOR_SPACING:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 171
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 173
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 174
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->path:Landroid/graphics/Path;

    sget v4, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->INDICATOR_CARET_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 175
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->path:Landroid/graphics/Path;

    sget v4, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->INDICATOR_CARET_HEIGHT:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->path:Landroid/graphics/Path;

    sget v4, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->INDICATOR_CARET_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v3, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 181
    iget v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->width:I

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 182
    sget v2, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->INDICATOR_CARET_HEIGHT:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->INDICATOR_SPACING:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 183
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintToDispay:Ljava/lang/String;

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 128
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintToDispay:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 130
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextRect:Landroid/graphics/Rect;

    .line 131
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_0
    add-int/2addr v2, v0

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->exampleTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    sget v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->INDICATOR_CARET_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->INDICATOR_SPACING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 135
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 136
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 137
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 138
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_1

    .line 141
    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->width:I

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    .line 143
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->width:I

    goto :goto_1

    .line 145
    :cond_2
    iput v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->width:I

    :goto_1
    if-ne v3, v5, :cond_3

    .line 149
    iput p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->height:I

    goto :goto_2

    :cond_3
    if-ne v3, v4, :cond_4

    .line 151
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->height:I

    goto :goto_2

    .line 153
    :cond_4
    iput v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->height:I

    .line 156
    :goto_2
    iget p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->width:I

    iget p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->height:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setHintToDispay(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseExampleImageView;->hintToDispay:Ljava/lang/String;

    return-void
.end method
