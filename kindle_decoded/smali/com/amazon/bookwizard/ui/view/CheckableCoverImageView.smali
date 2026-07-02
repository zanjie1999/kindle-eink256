.class public Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;
.super Lcom/amazon/bookwizard/ui/view/CoverImageView;
.source "CheckableCoverImageView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static checkMark:Landroid/graphics/Bitmap;

.field private static checkMarkBackgroundPaint:Landroid/graphics/Paint;


# instance fields
.field private isChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/view/CoverImageView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->initializeDrawables()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/amazon/bookwizard/ui/view/CoverImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->initializeDrawables()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/bookwizard/ui/view/CoverImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->initializeDrawables()V

    return-void
.end method

.method private drawCheckMark(Landroid/graphics/Canvas;)V
    .locals 11

    .line 97
    sget-object v0, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->checkMark:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/graphics/Canvas;)I

    move-result v0

    .line 98
    sget-object v1, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->checkMark:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1}, Landroid/graphics/Bitmap;->getScaledHeight(Landroid/graphics/Canvas;)I

    move-result v1

    .line 99
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/CoverImageView;->getImageSize()Landroid/graphics/Point;

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    iget v3, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->placeholderWidth:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v6, p0, Lcom/amazon/bookwizard/ui/view/CoverImageView;->placeholderHeight:I

    iget v7, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v6, v4

    div-float/2addr v6, v5

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float v8, v3, v4

    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float v9, v3, v4

    sget-object v10, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->checkMarkBackgroundPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    sget-object v3, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->checkMark:Landroid/graphics/Bitmap;

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private initializeDrawables()V
    .locals 3

    .line 43
    sget-object v0, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->checkMark:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->checkMarkBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$drawable;->bookwizard_book_selected_check:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->checkMark:Landroid/graphics/Bitmap;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->checkMarkBackgroundPaint:Landroid/graphics/Paint;

    .line 46
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/bookwizard/R$color;->black_fifty_transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->isChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/amazon/bookwizard/ui/view/CoverImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 86
    iget-boolean v0, p0, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->isChecked:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->drawCheckMark(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 110
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 111
    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_item_selected_description:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_item_not_selected_description:I

    .line 115
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->isChecked:Z

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->isChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;->setChecked(Z)V

    return-void
.end method
