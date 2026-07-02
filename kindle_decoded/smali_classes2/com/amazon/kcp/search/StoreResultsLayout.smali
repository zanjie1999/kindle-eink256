.class public Lcom/amazon/kcp/search/StoreResultsLayout;
.super Landroid/widget/LinearLayout;
.source "StoreResultsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/StoreResultsLayout$ClickHandler;
    }
.end annotation


# instance fields
.field private clickHandler:Lcom/amazon/kcp/search/StoreResultsLayout$ClickHandler;

.field private final coverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

.field private final defaultCover:Landroid/graphics/drawable/Drawable;

.field private defaultSpacing:I

.field private defaultWidth:I

.field private extraSpacing:I

.field private maxResults:I

.field private theme:Lcom/amazon/kindle/krx/theme/Theme;

.field private final threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$drawable;->library_book_row_default_cover:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->defaultCover:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    :goto_0
    iput-object p2, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->theme:Lcom/amazon/kindle/krx/theme/Theme;

    .line 59
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    .line 60
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->coverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

    .line 61
    invoke-direct {p0}, Lcom/amazon/kcp/search/StoreResultsLayout;->calculateResultDimensions()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/StoreResultsLayout;Lcom/amazon/kcp/search/store/StoreContentMetadata;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/StoreResultsLayout;->onResultClick(Lcom/amazon/kcp/search/store/StoreContentMetadata;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/StoreResultsLayout;)Lcom/amazon/kcp/cover/ICoverCacheManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->coverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/search/StoreResultsLayout;)Lcom/amazon/kindle/krx/thread/IThreadPoolManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    return-object p0
.end method

.method private calculateResultDimensions()V
    .locals 5

    .line 83
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->search_store_result_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 84
    iput v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->defaultWidth:I

    .line 85
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 86
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 87
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    .line 88
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->search_screen_side_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 89
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/librarymodule/R$dimen;->search_element_spacing:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->defaultSpacing:I

    sub-int/2addr v2, v1

    add-int v1, v2, v3

    add-int v4, v0, v3

    .line 90
    div-int/2addr v1, v4

    iput v1, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->maxResults:I

    mul-int v0, v0, v1

    sub-int/2addr v2, v0

    add-int/lit8 v0, v1, -0x1

    mul-int v3, v3, v0

    sub-int/2addr v2, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    .line 97
    div-int/2addr v2, v1

    iput v2, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->extraSpacing:I

    return-void
.end method

.method private onResultClick(Lcom/amazon/kcp/search/store/StoreContentMetadata;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->clickHandler:Lcom/amazon/kcp/search/StoreResultsLayout$ClickHandler;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1}, Lcom/amazon/kcp/search/StoreResultsLayout$ClickHandler;->onClick(Lcom/amazon/kcp/search/store/StoreContentMetadata;)V

    :cond_0
    return-void
.end method

.method private setAuthor(Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/view/View;)V
    .locals 1

    .line 158
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->author:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 160
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAuthors()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAuthors()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setContentDescription(Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/view/View;)V
    .locals 8

    .line 166
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAuthors()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

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

    .line 170
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->isKU()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {v7, v6}, Lcom/amazon/kcp/util/LibraryUtils;->getLocalizedSubscriptionBadgeDescriptionId(ZZ)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 174
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCoverAsync(Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/view/View;)V
    .locals 2

    .line 193
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->store_result_cover_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->defaultCover:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    new-instance v1, Lcom/amazon/kcp/search/StoreResultsLayout$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/search/StoreResultsLayout$2;-><init>(Lcom/amazon/kcp/search/StoreResultsLayout;Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setKUBadge(Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/view/View;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->isKU()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->store_result_ku_badge:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->theme:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->getKUBadgeDrawable(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setRatingsAndReviewCount(Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/view/View;)V
    .locals 3

    .line 148
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getReviewCount()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->reviews_parent:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->star_rating:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 151
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 152
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->reviews_count:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 153
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getReviewCount()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setResultPadding(Landroid/view/View;)V
    .locals 4

    .line 140
    iget v0, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->defaultSpacing:I

    iget v1, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->extraSpacing:I

    add-int/2addr v0, v1

    .line 141
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget v2, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->defaultWidth:I

    iget v3, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->extraSpacing:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 143
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public addStoreResults(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;)I"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/search/store/StoreContentMetadata;

    .line 106
    iget v3, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->maxResults:I

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/librarymodule/R$layout;->search_result_store_content:I

    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 112
    invoke-direct {p0, v2, v3}, Lcom/amazon/kcp/search/StoreResultsLayout;->setCoverAsync(Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/view/View;)V

    .line 113
    invoke-direct {p0, v2, v3}, Lcom/amazon/kcp/search/StoreResultsLayout;->setKUBadge(Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/view/View;)V

    .line 114
    invoke-direct {p0, v2, v3}, Lcom/amazon/kcp/search/StoreResultsLayout;->setAuthor(Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/view/View;)V

    .line 115
    invoke-direct {p0, v2, v3}, Lcom/amazon/kcp/search/StoreResultsLayout;->setRatingsAndReviewCount(Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/view/View;)V

    .line 116
    invoke-direct {p0, v3}, Lcom/amazon/kcp/search/StoreResultsLayout;->setResultPadding(Landroid/view/View;)V

    .line 117
    invoke-direct {p0, v2, v3}, Lcom/amazon/kcp/search/StoreResultsLayout;->setContentDescription(Lcom/amazon/kcp/search/store/StoreContentMetadata;Landroid/view/View;)V

    .line 119
    new-instance v4, Lcom/amazon/kcp/search/StoreResultsLayout$1;

    invoke-direct {v4, p0, v2}, Lcom/amazon/kcp/search/StoreResultsLayout$1;-><init>(Lcom/amazon/kcp/search/StoreResultsLayout;Lcom/amazon/kcp/search/store/StoreContentMetadata;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public setClickHandler(Lcom/amazon/kcp/search/StoreResultsLayout$ClickHandler;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/kcp/search/StoreResultsLayout;->clickHandler:Lcom/amazon/kcp/search/StoreResultsLayout$ClickHandler;

    return-void
.end method
