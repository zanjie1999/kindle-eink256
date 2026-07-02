.class public final Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;
.super Landroid/widget/LinearLayout;
.source "CSPageIndicatorView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private arrowSize:F

.field private bgColor:I

.field private oldTextViewHeight:I

.field private oldTextViewWidth:I

.field private shadowColor:I

.field private shadowOffset:F

.field private shadowRadius:F

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->bgColor:I

    const/high16 p1, -0x1000000

    .line 26
    iput p1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowColor:I

    const/high16 p1, 0x40400000    # 3.0f

    .line 27
    iput p1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowRadius:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 28
    iput p1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowOffset:F

    const/high16 p1, 0x41800000    # 16.0f

    .line 29
    iput p1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->arrowSize:F

    return-void
.end method

.method private final setShadowBackground()V
    .locals 10

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const-string v2, "textView"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 78
    iget-object v3, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->textView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 79
    iget v2, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowRadius:F

    iget v3, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowOffset:F

    add-float/2addr v2, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float v3, v3, v2

    add-float v4, v0, v3

    .line 81
    iget v5, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->arrowSize:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    add-float/2addr v3, v1

    float-to-double v7, v3

    .line 82
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v3, v7

    float-to-int v3, v3

    .line 83
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "Bitmap.createBitmap(bitm\u2026 Bitmap.Config.ARGB_8888)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x1

    .line 87
    invoke-virtual {p0, v7, v5}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 88
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget v7, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->bgColor:I

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget v7, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowRadius:F

    iget v8, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowOffset:F

    iget v9, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowColor:I

    invoke-virtual {v5, v7, v8, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 94
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 95
    invoke-virtual {v7, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v8, v2, v1

    .line 96
    invoke-virtual {v7, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v0, v2

    .line 97
    invoke-virtual {v7, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    iget v8, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->arrowSize:F

    add-float/2addr v8, v1

    mul-float v8, v8, v6

    add-float/2addr v8, v2

    invoke-virtual {v7, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 99
    iget v8, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->arrowSize:F

    mul-float v8, v8, v6

    add-float/2addr v8, v0

    mul-float v9, v1, v6

    add-float/2addr v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 100
    iget v8, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->arrowSize:F

    sub-float/2addr v1, v8

    mul-float v1, v1, v6

    add-float/2addr v1, v2

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    invoke-virtual {v7, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 102
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 103
    invoke-virtual {v4, v7, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 105
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 78
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateTextSize()V
    .locals 4

    .line 110
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const-string v3, "textView"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v1, v0

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .line 44
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 46
    sget v0, Lcom/amazon/kindle/krl/R$id;->page_indicator_text_view:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.page_indicator_text_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->textView:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->cs_page_indicator_shadow_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowOffset:F

    .line 49
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->cs_page_indicator_arrow_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->arrowSize:F

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 51
    sget v1, Lcom/amazon/kindle/krl/R$attr;->csPageIndicatorBackgroundColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/amazon/kindle/krl/R$attr;->csPageIndicatorShadowColor:I

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 52
    sget v1, Lcom/amazon/kindle/krl/R$attr;->csPageIndicatorShadowRadius:I

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttributes(attrs)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->bgColor:I

    const/high16 v1, -0x1000000

    .line 55
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowColor:I

    const/high16 v1, 0x40400000    # 3.0f

    .line 56
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowRadius:F

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 60
    iget v1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowOffset:F

    iget v2, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->shadowRadius:F

    add-float v3, v1, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 61
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 63
    invoke-direct {p0}, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->updateTextSize()V

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "textView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 67
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 69
    iget p1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->oldTextViewWidth:I

    iget-object p2, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->textView:Landroid/widget/TextView;

    const/4 p3, 0x0

    const-string p4, "textView"

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    if-ne p1, p2, :cond_1

    iget p1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->oldTextViewHeight:I

    iget-object p2, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->textView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result p2

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 70
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->oldTextViewWidth:I

    .line 71
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->oldTextViewHeight:I

    .line 72
    invoke-direct {p0}, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->setShadowBackground()V

    :cond_2
    return-void

    .line 71
    :cond_3
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 70
    :cond_4
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 69
    :cond_5
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3
.end method

.method public final setPageText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "textView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
