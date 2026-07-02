.class public Lcom/amazon/kcp/cover/CollectionThumbnail;
.super Lcom/amazon/kcp/cover/CheckableFrameLayout;
.source "CollectionThumbnail.java"

# interfaces
.implements Lcom/amazon/kcp/cover/ICollectionThumbnail;


# static fields
.field private static final NUM_THUMBNAILS:I = 0x4


# instance fields
.field private collectionTitleView:Landroid/widget/TextView;

.field private itemCountView:Landroid/widget/TextView;

.field private left_column:Landroid/widget/LinearLayout;

.field private right_column:Landroid/widget/LinearLayout;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/cover/CheckableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private resetThumbnail()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->left_column:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x4

    if-ge v1, v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->left_column:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->right_column:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->right_column:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setBooks(Lcom/amazon/kcp/cover/ThumbnailData;I)V
    .locals 7

    .line 88
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/ThumbnailData;->getItemCount()I

    move-result v0

    .line 89
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->item_count_desc_singular:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->item_count_desc:I

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->title:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 89
    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->itemCountView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    .line 99
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->left_column:Landroid/widget/LinearLayout;

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->right_column:Landroid/widget/LinearLayout;

    .line 100
    :goto_2
    div-int/lit8 v5, v2, 0x2

    .line 101
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 102
    sget v5, Lcom/amazon/kindle/librarymodule/R$id;->badgeable_cover:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/cover/BadgeableCover;

    if-ge v2, v0, :cond_2

    .line 104
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 105
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/ThumbnailData;->getTopBooks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v1, v3, v6, v6, p2}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kindle/model/content/IBookID;III)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v3

    .line 106
    invoke-virtual {v5, v6}, Lcom/amazon/kcp/cover/BadgeableCover;->reset(Z)V

    .line 107
    invoke-virtual {v5, v3}, Lcom/amazon/kcp/cover/BadgeableCover;->setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;)V

    goto :goto_3

    .line 109
    :cond_2
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 38
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->collection_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->collectionTitleView:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->item_count:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->itemCountView:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->left_collection_thumbnails_column:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->left_column:Landroid/widget/LinearLayout;

    .line 41
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->right_collection_thumbnails_column:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->right_column:Landroid/widget/LinearLayout;

    return-void
.end method

.method public reset()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->collectionTitleView:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->itemCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iput-object v1, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->title:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49
    invoke-direct {p0}, Lcom/amazon/kcp/cover/CollectionThumbnail;->resetThumbnail()V

    return-void
.end method

.method public setCollectionData(Lcom/amazon/kindle/collections/dto/ICollection;I)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/CollectionThumbnail;->reset()V

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->collectionTitleView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->title:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->getInstance()Lcom/amazon/kcp/cover/CollectionThumbnailCache;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0, p2}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->getThumbnailData(Ljava/lang/String;Lcom/amazon/kcp/cover/ICollectionThumbnail;I)V

    return-void
.end method

.method public setThumbnailData(Lcom/amazon/kcp/cover/ThumbnailData;I)V
    .locals 2

    .line 69
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 70
    new-instance v0, Lcom/amazon/kcp/cover/CollectionThumbnail$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/cover/CollectionThumbnail$1;-><init>(Lcom/amazon/kcp/cover/CollectionThumbnail;Lcom/amazon/kcp/cover/ThumbnailData;I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/cover/CollectionThumbnail;->setBooks(Lcom/amazon/kcp/cover/ThumbnailData;I)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/cover/CollectionThumbnail;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    invoke-direct {p0}, Lcom/amazon/kcp/cover/CollectionThumbnail;->resetThumbnail()V

    :goto_0
    return-void
.end method
