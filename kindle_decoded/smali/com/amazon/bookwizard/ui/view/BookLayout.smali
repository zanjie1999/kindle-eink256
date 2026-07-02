.class public Lcom/amazon/bookwizard/ui/view/BookLayout;
.super Landroid/widget/RelativeLayout;
.source "BookLayout.java"


# instance fields
.field private coverImageView:Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/bookwizard/R$layout;->bookwizard_book_layout:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 30
    sget p1, Lcom/amazon/bookwizard/R$id;->cover_image:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;

    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookLayout;->coverImageView:Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    .line 38
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 39
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/BookLayout;->coverImageView:Lcom/amazon/bookwizard/ui/view/CheckableCoverImageView;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ui/view/CoverImageView;->getImageSize()Landroid/graphics/Point;

    move-result-object p1

    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/amazon/bookwizard/R$id;->cover_image:I

    if-ne v2, v3, :cond_1

    sub-int v2, p4, p2

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v4, p5, p3

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/amazon/bookwizard/R$id;->details_icon:I

    if-ne v2, v3, :cond_2

    sub-int v2, p4, p2

    .line 50
    iget v3, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v3, p5, p3

    .line 51
    iget v4, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
