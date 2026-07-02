.class public Lcom/amazon/nwstd/toc/widget/ArticleRow;
.super Landroid/widget/LinearLayout;
.source "ArticleRow.java"


# instance fields
.field private dividerDrawable:Landroid/graphics/drawable/Drawable;

.field private final dividerHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/amazon/nwstd/toc/widget/ArticleRow;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/newsstand/core/R$dimen;->toc_divider_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/nwstd/toc/widget/ArticleRow;->dividerHeight:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 24
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 26
    iget-object v0, p0, Lcom/amazon/nwstd/toc/widget/ArticleRow;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/amazon/nwstd/toc/widget/ArticleRow;->dividerHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    iget-object v0, p0, Lcom/amazon/nwstd/toc/widget/ArticleRow;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/nwstd/toc/widget/ArticleRow;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
