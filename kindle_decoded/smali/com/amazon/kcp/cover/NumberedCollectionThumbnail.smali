.class public Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;
.super Lcom/amazon/kcp/cover/CheckableFrameLayout;
.source "NumberedCollectionThumbnail.java"

# interfaces
.implements Lcom/amazon/kcp/cover/ICollectionThumbnail;


# instance fields
.field private collectionTitleView:Landroid/widget/TextView;

.field private itemCountView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/cover/CheckableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 30
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->collection_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;->collectionTitleView:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->item_count_number_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;->itemCountView:Landroid/widget/TextView;

    return-void
.end method

.method public reset()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;->collectionTitleView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;->itemCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCollectionData(Lcom/amazon/kindle/collections/dto/ICollection;I)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;->reset()V

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;->collectionTitleView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-static {}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->getInstance()Lcom/amazon/kcp/cover/CollectionThumbnailCache;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0, p2}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->getThumbnailData(Ljava/lang/String;Lcom/amazon/kcp/cover/ICollectionThumbnail;I)V

    return-void
.end method

.method public setThumbnailData(Lcom/amazon/kcp/cover/ThumbnailData;I)V
    .locals 0

    .line 50
    new-instance p2, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail$1;-><init>(Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;Lcom/amazon/kcp/cover/ThumbnailData;)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateThumbnail(Lcom/amazon/kcp/cover/ThumbnailData;)V
    .locals 5

    .line 60
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/ThumbnailData;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x270f

    const/4 v1, 0x0

    if-le p1, v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;->itemCountView:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->item_count_number_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;->itemCountView:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->item_count_number:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 72
    :goto_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#,###,###"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;->itemCountView:Landroid/widget/TextView;

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method
