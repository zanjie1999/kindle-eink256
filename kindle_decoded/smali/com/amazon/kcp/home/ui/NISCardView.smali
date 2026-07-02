.class public final Lcom/amazon/kcp/home/ui/NISCardView;
.super Lcom/amazon/kcp/home/ui/HomeCardView;
.source "NISCardView.kt"


# instance fields
.field public bookAuthorView:Landroid/widget/TextView;

.field public bookInfoView:Landroid/widget/TextView;

.field public bookTitleView:Landroid/widget/TextView;

.field public buyButton:Landroid/widget/Button;

.field public buyInfoView:Landroid/widget/TextView;

.field public download:Ljava/lang/String;

.field public downloading:Ljava/lang/String;

.field public incompleteDownload:Ljava/lang/String;

.field public nisCover:Lcom/amazon/kcp/cover/BadgeableCover;

.field public ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

.field public readNow:Ljava/lang/String;

.field public reviewCountView:Landroid/widget/TextView;

.field public seeAllView:Landroid/widget/TextView;

.field public subTitleTextView:Landroid/widget/TextView;

.field public titleTextView:Landroid/widget/TextView;

.field public unableToDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/ui/HomeCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/ui/HomeCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final initializeStrings()V
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->read_now:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resources.getString(R.string.read_now)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->readNow:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->download:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resources.getString(R.string.download)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->download:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->downloading_in_readNow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resources.getString(R.st\u2026g.downloading_in_readNow)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->downloading:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->unable_download:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resources.getString(R.string.unable_download)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->unableToDownload:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->incomplete_download:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resources.getString(R.string.incomplete_download)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->incompleteDownload:Ljava/lang/String;

    return-void
.end method

.method private final setupBadgeableCover(Lcom/amazon/kcp/cover/BadgeableCover;)V
    .locals 4

    .line 68
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryViewType;->CAROUSEL:Lcom/amazon/kindle/krx/library/LibraryViewType;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->setViewType(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    .line 69
    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->setSizeType(Lcom/amazon/kindle/cover/ImageSizes$Type;)V

    .line 70
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_book_cover_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 71
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_book_cover_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 72
    invoke-virtual {p1, v0, v2}, Lcom/amazon/kcp/cover/BadgeableCover;->setDefaultSize(II)V

    .line 73
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->badge_padding_small:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 74
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->setPadding(I)V

    .line 75
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->download_progress_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 76
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/cover/BadgeableCover;->setDownloadProgressHeight(I)V

    return-void
.end method


# virtual methods
.method public final getBookAuthorView()Landroid/widget/TextView;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->bookAuthorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookAuthorView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBookInfoView()Landroid/widget/TextView;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->bookInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookInfoView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBookTitleView()Landroid/widget/TextView;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->bookTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookTitleView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBuyButton()Landroid/widget/Button;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->buyButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "buyButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBuyInfoView()Landroid/widget/TextView;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->buyInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "buyInfoView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getDownload()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->download:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "download"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getDownloading()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->downloading:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "downloading"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getIncompleteDownload()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->incompleteDownload:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "incompleteDownload"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getNisCover()Lcom/amazon/kcp/cover/BadgeableCover;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->nisCover:Lcom/amazon/kcp/cover/BadgeableCover;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "nisCover"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getRatingView()Lcom/amazon/kcp/home/ui/RatingBarButton;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ratingView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReadNow()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->readNow:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "readNow"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReviewCountView()Landroid/widget/TextView;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->reviewCountView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewCountView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSeeAllView()Landroid/widget/TextView;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->seeAllView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "seeAllView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSubTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "subTitleTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "titleTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getUnableToDownload()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->unableToDownload:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "unableToDownload"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/amazon/kcp/home/ui/HomeCardView;->onFinishInflate()V

    .line 43
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.home_card_header_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->titleTextView:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_desc:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.home_card_header_desc)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->subTitleTextView:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->nis_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.nis_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->bookTitleView:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->nis_author:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.nis_author)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->bookAuthorView:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->book_rating:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.book_rating)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/kcp/home/ui/RatingBarButton;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

    .line 48
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->reviews_count:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.reviews_count)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->reviewCountView:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->nis_info:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.nis_info)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->bookInfoView:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->seeall_link:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.seeall_link)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->seeAllView:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->nis_book_cover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.nis_book_cover)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/kcp/cover/BadgeableCover;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->nisCover:Lcom/amazon/kcp/cover/BadgeableCover;

    .line 52
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->nis_buy_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.nis_buy_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->buyButton:Landroid/widget/Button;

    .line 53
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->nis_buy_info:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.nis_buy_info)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->buyInfoView:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/NISCardView;->nisCover:Lcom/amazon/kcp/cover/BadgeableCover;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/home/ui/NISCardView;->setupBadgeableCover(Lcom/amazon/kcp/cover/BadgeableCover;)V

    .line 55
    invoke-direct {p0}, Lcom/amazon/kcp/home/ui/NISCardView;->initializeStrings()V

    return-void

    :cond_0
    const-string/jumbo v0, "nisCover"

    .line 54
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setBookAuthorView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->bookAuthorView:Landroid/widget/TextView;

    return-void
.end method

.method public final setBookInfoView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->bookInfoView:Landroid/widget/TextView;

    return-void
.end method

.method public final setBookTitleView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->bookTitleView:Landroid/widget/TextView;

    return-void
.end method

.method public final setBuyButton(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->buyButton:Landroid/widget/Button;

    return-void
.end method

.method public final setBuyInfoView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->buyInfoView:Landroid/widget/TextView;

    return-void
.end method

.method public final setDownload(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->download:Ljava/lang/String;

    return-void
.end method

.method public final setDownloading(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->downloading:Ljava/lang/String;

    return-void
.end method

.method public final setIncompleteDownload(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->incompleteDownload:Ljava/lang/String;

    return-void
.end method

.method public final setNisCover(Lcom/amazon/kcp/cover/BadgeableCover;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->nisCover:Lcom/amazon/kcp/cover/BadgeableCover;

    return-void
.end method

.method public final setRatingView(Lcom/amazon/kcp/home/ui/RatingBarButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->ratingView:Lcom/amazon/kcp/home/ui/RatingBarButton;

    return-void
.end method

.method public final setReadNow(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->readNow:Ljava/lang/String;

    return-void
.end method

.method public final setReviewCountView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->reviewCountView:Landroid/widget/TextView;

    return-void
.end method

.method public final setSeeAllView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->seeAllView:Landroid/widget/TextView;

    return-void
.end method

.method public final setSubTitleTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->subTitleTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setTitleTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->titleTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setUnableToDownload(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/NISCardView;->unableToDownload:Ljava/lang/String;

    return-void
.end method
