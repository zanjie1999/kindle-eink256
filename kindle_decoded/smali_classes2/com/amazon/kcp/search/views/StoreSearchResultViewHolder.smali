.class public Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StoreSearchResultViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$ClickHandler;
    }
.end annotation


# instance fields
.field private author:Landroid/widget/TextView;

.field private clickHandler:Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$ClickHandler;

.field private coverImage:Landroid/widget/ImageView;

.field private divider:Landroid/view/View;

.field private imageSizeType:Lcom/amazon/kindle/cover/ImageSizes$Type;

.field private kuBadge:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCoverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

.field private mDefaultCover:Landroid/graphics/drawable/Drawable;

.field private mTheme:Lcom/amazon/kindle/krx/theme/Theme;

.field private ratingBar:Landroid/widget/RatingBar;

.field private result:Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;

.field private reviewsCount:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/amazon/kcp/cover/ICoverCacheManager;Landroid/graphics/drawable/Drawable;Lcom/amazon/kindle/krx/theme/Theme;Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$ClickHandler;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->mContext:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->mCoverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

    .line 60
    iput-object p4, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->mDefaultCover:Landroid/graphics/drawable/Drawable;

    .line 61
    iput-object p5, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->mTheme:Lcom/amazon/kindle/krx/theme/Theme;

    .line 62
    iput-object p6, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->clickHandler:Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$ClickHandler;

    .line 65
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 66
    sget-object p2, Lcom/amazon/kindle/cover/ImageSizes$Type;->EXPLORE:Lcom/amazon/kindle/cover/ImageSizes$Type;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->imageSizeType:Lcom/amazon/kindle/cover/ImageSizes$Type;

    goto :goto_0

    .line 68
    :cond_0
    sget-object p2, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->imageSizeType:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 76
    :goto_0
    sget p2, Lcom/amazon/kcp/search/R$id;->search_result_stub:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    .line 77
    sget p3, Lcom/amazon/kcp/search/R$layout;->wayfinder_ruby_search_result_store_content:I

    if-eqz p2, :cond_1

    .line 79
    invoke-virtual {p2, p3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 80
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_1
    const/4 p2, 0x1

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 84
    sget p2, Lcom/amazon/kcp/search/R$id;->search_result_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->divider:Landroid/view/View;

    .line 85
    sget p2, Lcom/amazon/kcp/search/R$id;->store_book_row_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->title:Landroid/widget/TextView;

    .line 86
    sget p2, Lcom/amazon/kcp/search/R$id;->store_book_row_author:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->author:Landroid/widget/TextView;

    .line 87
    sget p2, Lcom/amazon/kcp/search/R$id;->store_cover_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->coverImage:Landroid/widget/ImageView;

    .line 88
    sget p2, Lcom/amazon/kcp/search/R$id;->store_result_ku_badge:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->kuBadge:Landroid/widget/ImageView;

    .line 89
    sget p2, Lcom/amazon/kcp/search/R$id;->star_rating:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RatingBar;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->ratingBar:Landroid/widget/RatingBar;

    .line 90
    sget p2, Lcom/amazon/kcp/search/R$id;->store_reviews_count:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->reviewsCount:Landroid/widget/TextView;

    if-eqz p6, :cond_2

    .line 93
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->coverImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->mDefaultCover:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private setContentDescription(Lcom/amazon/kcp/search/store/StoreContentMetadata;)V
    .locals 8

    .line 186
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAuthors()Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->book_reviews:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getRating()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getReviewCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->isKU()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v7, v6}, Lcom/amazon/kcp/util/LibraryUtils;->getLocalizedSubscriptionBadgeDescriptionId(ZZ)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 194
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCover(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->mCoverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

    iget-object v4, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->imageSizeType:Lcom/amazon/kindle/cover/ImageSizes$Type;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v0 .. v8}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;IZLjava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    .line 148
    new-instance p2, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$1;-><init>(Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;)V

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    return-void
.end method

.method private setKUBadge(Lcom/amazon/kcp/search/store/StoreContentMetadata;)V
    .locals 2

    .line 166
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->isKU()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->kuBadge:Landroid/widget/ImageView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->mTheme:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-static {v1}, Lcom/amazon/kcp/util/LibraryUtils;->getKUBadgeDrawable(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->kuBadge:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setRatings(Lcom/amazon/kcp/search/store/StoreContentMetadata;)V
    .locals 4

    .line 174
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getReviewCount()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->lib_book_row_1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 177
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->reviewsCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getReviewCount()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;IZ)V
    .locals 8

    .line 104
    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->getStoreItem()Lcom/amazon/kcp/search/store/StoreContentMetadata;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAuthors()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->getImageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->getImageExtension()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move v5, p2

    .line 105
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->setCover(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->author:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAuthors()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->setKUBadge(Lcom/amazon/kcp/search/store/StoreContentMetadata;)V

    .line 110
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->setRatings(Lcom/amazon/kcp/search/store/StoreContentMetadata;)V

    .line 111
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->setContentDescription(Lcom/amazon/kcp/search/store/StoreContentMetadata;)V

    .line 112
    iget-object p2, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->divider:Landroid/view/View;

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iput-object p1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->result:Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;

    return-void
.end method

.method public cancelCoverUpdates()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/amazon/kcp/cover/UpdatableCover;->cancelUpdates()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->clickHandler:Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$ClickHandler;

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->result:Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->getStoreItem()Lcom/amazon/kcp/search/store/StoreContentMetadata;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$ClickHandler;->onClick(Lcom/amazon/kcp/search/store/StoreContentMetadata;)V

    :cond_0
    return-void
.end method
