.class public final Lcom/amazon/kcp/home/ui/ChartsCardView;
.super Lcom/amazon/kcp/home/ui/HomeCardView;
.source "ChartsCardView.kt"


# instance fields
.field public bookAuthorView1:Landroid/widget/TextView;

.field public bookAuthorView2:Landroid/widget/TextView;

.field public bookAuthorView3:Landroid/widget/TextView;

.field public bookNumTextView1:Landroid/widget/TextView;

.field public bookNumTextView2:Landroid/widget/TextView;

.field public bookNumTextView3:Landroid/widget/TextView;

.field public bookTitleView1:Landroid/widget/TextView;

.field public bookTitleView2:Landroid/widget/TextView;

.field public bookTitleView3:Landroid/widget/TextView;

.field public coverView1:Landroid/widget/ImageView;

.field public coverView2:Landroid/widget/ImageView;

.field public coverView3:Landroid/widget/ImageView;

.field public ratingView1:Lcom/amazon/kcp/home/ui/RatingBarButton;

.field public ratingView2:Lcom/amazon/kcp/home/ui/RatingBarButton;

.field public ratingView3:Lcom/amazon/kcp/home/ui/RatingBarButton;

.field public reviewCountView1:Landroid/widget/TextView;

.field public reviewCountView2:Landroid/widget/TextView;

.field public reviewCountView3:Landroid/widget/TextView;

.field public seeFullChartButton:Landroid/widget/Button;

.field public subTitleTextView:Landroid/widget/TextView;

.field public titleImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/ui/HomeCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/ui/HomeCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getBookAuthorView1()Landroid/widget/TextView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookAuthorView1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookAuthorView1"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBookAuthorView2()Landroid/widget/TextView;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookAuthorView2:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookAuthorView2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBookAuthorView3()Landroid/widget/TextView;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookAuthorView3:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookAuthorView3"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBookNumTextView1()Landroid/widget/TextView;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookNumTextView1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookNumTextView1"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBookNumTextView2()Landroid/widget/TextView;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookNumTextView2:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookNumTextView2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBookNumTextView3()Landroid/widget/TextView;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookNumTextView3:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookNumTextView3"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBookTitleView1()Landroid/widget/TextView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookTitleView1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookTitleView1"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBookTitleView2()Landroid/widget/TextView;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookTitleView2:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookTitleView2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getBookTitleView3()Landroid/widget/TextView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookTitleView3:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bookTitleView3"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCoverView1()Landroid/widget/ImageView;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->coverView1:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "coverView1"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCoverView2()Landroid/widget/ImageView;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->coverView2:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "coverView2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCoverView3()Landroid/widget/ImageView;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->coverView3:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "coverView3"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getRatingView1()Lcom/amazon/kcp/home/ui/RatingBarButton;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->ratingView1:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ratingView1"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getRatingView2()Lcom/amazon/kcp/home/ui/RatingBarButton;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->ratingView2:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ratingView2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getRatingView3()Lcom/amazon/kcp/home/ui/RatingBarButton;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->ratingView3:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ratingView3"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReviewCountView1()Landroid/widget/TextView;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->reviewCountView1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewCountView1"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReviewCountView2()Landroid/widget/TextView;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->reviewCountView2:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewCountView2"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReviewCountView3()Landroid/widget/TextView;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->reviewCountView3:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewCountView3"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSeeFullChartButton()Landroid/widget/Button;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->seeFullChartButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "seeFullChartButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSubTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "subTitleTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTitleImageView()Landroid/widget/ImageView;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->titleImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "titleImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 55
    invoke-super {p0}, Lcom/amazon/kcp/home/ui/HomeCardView;->onFinishInflate()V

    .line 56
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.home_card_header_image)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->titleImageView:Landroid/widget/ImageView;

    .line 57
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_desc:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.home_card_header_desc)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->subTitleTextView:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book1_number:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.chart_book1_number)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookNumTextView1:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book1_cover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.chart_book1_cover)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->coverView1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "IMAGE_1"

    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 62
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book1_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book1_title)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookTitleView1:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book1_author:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book1_author)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookAuthorView1:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book1_rating_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book1_rating_bar)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    .line 65
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->book_rating:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "ratingLayout1.findViewById(R.id.book_rating)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/amazon/kcp/home/ui/RatingBarButton;

    iput-object v2, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->ratingView1:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz v2, :cond_a

    const-string v3, "TEXT_11"

    .line 66
    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setTag(Ljava/lang/Object;)V

    .line 67
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->reviews_count:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "ratingLayout1.findViewById(R.id.reviews_count)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->reviewCountView1:Landroid/widget/TextView;

    const-string/jumbo v2, "reviewCountView1"

    if-eqz v0, :cond_9

    const-string v3, "TEXT_14"

    .line 68
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->reviewCountView1:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$style;->Ruby_TextAppearance_Header3_Home_review:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 71
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book2_number:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book2_number)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookNumTextView2:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book2_cover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book2_cover)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->coverView2:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    const-string v2, "IMAGE_2"

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 74
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book2_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book2_title)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookTitleView2:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book2_author:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book2_author)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookAuthorView2:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book2_rating_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book2_rating_bar)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    .line 77
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->book_rating:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "ratingLayout2.findViewById(R.id.book_rating)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/amazon/kcp/home/ui/RatingBarButton;

    iput-object v2, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->ratingView2:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz v2, :cond_6

    const-string v3, "TEXT_12"

    .line 78
    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setTag(Ljava/lang/Object;)V

    .line 79
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->reviews_count:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "ratingLayout2.findViewById(R.id.reviews_count)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->reviewCountView2:Landroid/widget/TextView;

    const-string/jumbo v2, "reviewCountView2"

    if-eqz v0, :cond_5

    const-string v3, "TEXT_15"

    .line 80
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->reviewCountView2:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/librarymodule/R$style;->Ruby_TextAppearance_Header3_Home_review:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 83
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book3_number:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book3_number)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookNumTextView3:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book3_cover:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book3_cover)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->coverView3:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const-string v2, "IMAGE_3"

    .line 85
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 86
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book3_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book3_title)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookTitleView3:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book3_author:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book3_author)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookAuthorView3:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->chart_book3_rating_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.chart_book3_rating_bar)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->book_rating:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "ratingLayout3.findViewById(R.id.book_rating)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/amazon/kcp/home/ui/RatingBarButton;

    iput-object v2, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->ratingView3:Lcom/amazon/kcp/home/ui/RatingBarButton;

    if-eqz v2, :cond_2

    const-string v3, "TEXT_13"

    .line 90
    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setTag(Ljava/lang/Object;)V

    .line 91
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->reviews_count:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "ratingLayout3.findViewById(R.id.reviews_count)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->reviewCountView3:Landroid/widget/TextView;

    const-string/jumbo v2, "reviewCountView3"

    if-eqz v0, :cond_1

    const-string v3, "TEXT_16"

    .line 92
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->reviewCountView3:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$style;->Ruby_TextAppearance_Header3_Home_review:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 95
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_footer_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.home_card_footer_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->seeFullChartButton:Landroid/widget/Button;

    return-void

    .line 93
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "ratingView3"

    .line 90
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "coverView3"

    .line 85
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string/jumbo v0, "ratingView2"

    .line 78
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v0, "coverView2"

    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-string/jumbo v0, "ratingView1"

    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    const-string v0, "coverView1"

    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final setBookAuthorView1(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookAuthorView1:Landroid/widget/TextView;

    return-void
.end method

.method public final setBookAuthorView2(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookAuthorView2:Landroid/widget/TextView;

    return-void
.end method

.method public final setBookAuthorView3(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookAuthorView3:Landroid/widget/TextView;

    return-void
.end method

.method public final setBookNumTextView1(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookNumTextView1:Landroid/widget/TextView;

    return-void
.end method

.method public final setBookNumTextView2(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookNumTextView2:Landroid/widget/TextView;

    return-void
.end method

.method public final setBookNumTextView3(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookNumTextView3:Landroid/widget/TextView;

    return-void
.end method

.method public final setBookTitleView1(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookTitleView1:Landroid/widget/TextView;

    return-void
.end method

.method public final setBookTitleView2(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookTitleView2:Landroid/widget/TextView;

    return-void
.end method

.method public final setBookTitleView3(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->bookTitleView3:Landroid/widget/TextView;

    return-void
.end method

.method public final setCoverView1(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->coverView1:Landroid/widget/ImageView;

    return-void
.end method

.method public final setCoverView2(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->coverView2:Landroid/widget/ImageView;

    return-void
.end method

.method public final setCoverView3(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->coverView3:Landroid/widget/ImageView;

    return-void
.end method

.method public final setRatingView1(Lcom/amazon/kcp/home/ui/RatingBarButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->ratingView1:Lcom/amazon/kcp/home/ui/RatingBarButton;

    return-void
.end method

.method public final setRatingView2(Lcom/amazon/kcp/home/ui/RatingBarButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->ratingView2:Lcom/amazon/kcp/home/ui/RatingBarButton;

    return-void
.end method

.method public final setRatingView3(Lcom/amazon/kcp/home/ui/RatingBarButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->ratingView3:Lcom/amazon/kcp/home/ui/RatingBarButton;

    return-void
.end method

.method public final setReviewCountView1(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->reviewCountView1:Landroid/widget/TextView;

    return-void
.end method

.method public final setReviewCountView2(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->reviewCountView2:Landroid/widget/TextView;

    return-void
.end method

.method public final setReviewCountView3(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->reviewCountView3:Landroid/widget/TextView;

    return-void
.end method

.method public final setSeeFullChartButton(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->seeFullChartButton:Landroid/widget/Button;

    return-void
.end method

.method public final setSubTitleTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->subTitleTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setTitleImageView(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ChartsCardView;->titleImageView:Landroid/widget/ImageView;

    return-void
.end method
