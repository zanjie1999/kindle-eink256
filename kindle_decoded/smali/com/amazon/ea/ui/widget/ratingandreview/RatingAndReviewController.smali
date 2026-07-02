.class public Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;
.super Lcom/amazon/ea/ui/widget/WidgetController;
.source "RatingAndReviewController.java"


# static fields
.field private static final SOCIAL_SHARING_ENTRY_POINT_END_ACTIONS_RATING_WIDGET:Ljava/lang/String; = "END_ACTIONS_RATING_WIDGET"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.widget.ratingandreview.RatingAndReviewController"


# instance fields
.field private bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

.field private csrfToken:Ljava/lang/String;

.field private final endActionsActivity:Landroid/app/Activity;

.field private final goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

.field private goodreadsShelfComponent:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

.field private lastSubmittedRating:I

.field private final model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

.field private postOnLabel:Landroid/widget/TextView;

.field private publicName:Ljava/lang/String;

.field private ratingBar:Landroid/widget/RatingBar;

.field private ratingBarClear:Landroid/widget/ImageView;

.field private ratingComponentContainer:Landroid/view/View;

.field private reviewActionLabel:Landroid/widget/TextView;

.field private shouldSubmitPublicName:Z

.field private toast:Landroid/widget/Toast;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/WidgetController;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    .line 111
    iput-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    .line 113
    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->toast:Landroid/widget/Toast;

    .line 115
    iget-object p1, p2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {p1}, Lcom/amazon/ea/reviews/data/BookInfo;->createInstance(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/reviews/data/BookInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    const/4 p1, 0x1

    .line 116
    invoke-static {p1}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->onShareClick()V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->publicName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;ILjava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->submitRatingToAmazonHelper(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->toggleBlockingOverlay(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->showRatingSubmissionError()V

    return-void
.end method

.method static synthetic access$1400(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->showRatingSubmissionSuccess(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->submitRating(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->startCreateReviewActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Landroid/app/Activity;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Landroid/widget/RatingBar;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->startPublishedReviewActivity()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->csrfToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->csrfToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->submitPublicName()V

    return-void
.end method

.method private bindToCreateReview()V
    .locals 5

    .line 365
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-boolean v1, v1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->reviewActionLabel:Landroid/widget/TextView;

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_rate_book:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 370
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->reviewActionLabel:Landroid/widget/TextView;

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_rate_book:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->reviewActionLabel:Landroid/widget/TextView;

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_review_book:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 373
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->reviewActionLabel:Landroid/widget/TextView;

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_review_book_content_description:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 379
    :goto_0
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-boolean v1, v1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    goto :goto_1

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v1, v4}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 386
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    new-instance v2, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$2;

    invoke-direct {v2, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$2;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 406
    :goto_1
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBarClear:Landroid/widget/ImageView;

    new-instance v2, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$3;

    invoke-direct {v2, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$3;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingComponentContainer:Landroid/view/View;

    new-instance v2, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$4;

    invoke-direct {v2, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$4;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    iput-boolean v4, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldSubmitPublicName:Z

    .line 428
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    invoke-static {v1}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->getLastSubmittedPublicName(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->publicName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    invoke-static {v1}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->getOptInPublicName(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->publicName:Ljava/lang/String;

    .line 431
    iput-boolean v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldSubmitPublicName:Z

    :cond_2
    const/4 v1, 0x0

    .line 436
    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    invoke-static {v2}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->isGrokWidget(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-boolean v2, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    if-eqz v2, :cond_3

    goto :goto_2

    .line 445
    :cond_3
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_on_amazon_as:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->publicName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 437
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldPostRatingsToAmazon()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldPostRatingsToGoodreads()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 438
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_on_amazon_and_goodreads:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->publicName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 439
    :cond_5
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldPostRatingsToAmazon()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 440
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_on_amazon_as:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->publicName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 441
    :cond_6
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldPostRatingsToGoodreads()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 442
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_on_goodreads:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->postOnLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bindToPublishedReview()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->reviewActionLabel:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_see_your_review:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 456
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingComponentContainer:Landroid/view/View;

    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$5;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$5;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 470
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->postOnLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private displayReviewToastMessage()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    invoke-static {v1}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->isGrokWidget(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 480
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_review_thank_you_amazon_and_goodreads:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_0
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_review_thank_you_amazon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 484
    :cond_1
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 485
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_review_thank_you_goodreads:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 489
    :cond_2
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_review_thank_you_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_3
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_review_thank_you_amazon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->displayToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method private displayToastMessage(Ljava/lang/String;)V
    .locals 4

    .line 499
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->endactions_review_toast_message_themed:I

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    sget v3, Lcom/amazon/kindle/ea/R$id;->endactions_review_toast_message_themed:I

    .line 500
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 499
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 501
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_review_toast_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 503
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->toast:Landroid/widget/Toast;

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 506
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->toast:Landroid/widget/Toast;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 507
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private initAutoShelvingMetrics()V
    .locals 4

    .line 262
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v1, 0x1

    const-string v2, "DisplayedGoodreadsShelf"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 263
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 265
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v1, v0, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v2, "DisplayedGoodreadsShelfComponent"

    invoke-static {v2, v1, v0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getEndActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object v0

    const-string v1, "DisplayedWidget"

    const-string v2, "GoodredsShelf"

    .line 270
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initSharingDisabledMetrics()V
    .locals 4

    .line 285
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DisplayedRatingShareWithFriendComponent"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 286
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    return-void
.end method

.method private initSharingMetrics()V
    .locals 4

    .line 274
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DisplayedRatingShareWithFriendComponent"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 275
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 277
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "RatingShareWithFriendComponentButtonClicked"

    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/ea/metrics/Profiler;->initCount(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v2, v0, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onShareClick()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v1, v0, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->refTagFeatureIdPartial:Ljava/lang/String;

    const-string/jumbo v2, "ss"

    invoke-static {v1, v0, v2}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTagWithAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "END_ACTIONS_RATING_WIDGET"

    invoke-static {v0, v1}, Lcom/amazon/ea/ui/helper/ShareHelper;->shareBook(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "RatingShareWithFriendComponentButtonClicked"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 297
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v3, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 298
    invoke-static {v2}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v2, "MetricsTag"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v2, "AnyActionsRatingWidget"

    const-string v3, "Recommend"

    .line 301
    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private prefetchCsrfToken()V
    .locals 2

    .line 511
    sget-object v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->TAG:Ljava/lang/String;

    const-string v1, "Prefetching csrfToken"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v0, Lcom/amazon/ea/reviews/submission/SubmissionRequirementsAjaxMessage;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/ea/reviews/submission/SubmissionRequirementsAjaxMessage;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    invoke-static {v0, v1}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    return-void
.end method

.method private shouldPostRatingsToAmazon()Z
    .locals 1

    .line 590
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldPostRatingsToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private shouldPostRatingsToGoodreads()Z
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showRatingSubmissionError()V
    .locals 2

    .line 546
    iget v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->lastSubmittedRating:I

    invoke-virtual {p0, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->updateRatingBar(I)V

    .line 547
    invoke-virtual {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->updateRatingClearLabel()V

    .line 549
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RateAndReviewUtil;->showRatingErrorDialog(Landroid/app/Activity;)V

    .line 550
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->setUpdateFailureThatOccurredForBook(Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    return-void
.end method

.method private showRatingSubmissionSuccess(I)V
    .locals 9

    .line 560
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcom/amazon/ea/reviews/data/Review;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/amazon/ea/reviews/data/Review;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lcom/amazon/ea/reviews/ReviewsLocalStorageManager;->saveReview(Ljava/lang/String;Lcom/amazon/ea/reviews/data/Review;)V

    .line 562
    iput p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->lastSubmittedRating:I

    .line 564
    invoke-virtual {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->updateRatingClearLabel()V

    .line 566
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p1, :cond_0

    .line 569
    sget p1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_removed:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 570
    :cond_0
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldPostRatingsToAmazon()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldPostRatingsToGoodreads()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 571
    sget p1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_posted_on_amazon_and_goodreads:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 572
    :cond_1
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldPostRatingsToAmazon()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 573
    sget p1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_posted_on_amazon:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 574
    :cond_2
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldPostRatingsToGoodreads()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 575
    sget p1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_posted_on_goodreads:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 579
    :cond_3
    sget p1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_posted:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 581
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->displayToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method private startCreateReviewActivity()V
    .locals 15

    .line 606
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    const-class v2, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    .line 609
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v2, v2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/reviews/ReviewsLocalStorageManager;->getReview(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v5

    .line 612
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object v2, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_CREATE_REVIEW:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 613
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v2, 0x0

    const/4 v14, 0x1

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "CreateReviewSourceStored"

    invoke-virtual {v1, v3, v4}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 614
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    if-nez v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v4, "CreateReviewSourceNew"

    invoke-virtual {v1, v3, v4}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 615
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v3, "ClickedCreateReview"

    invoke-virtual {v1, v3, v14}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 616
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v3, "DidAnything"

    invoke-virtual {v1, v3, v14}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 620
    new-instance v1, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;

    iget-object v4, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iget-object v6, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->publicName:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldSubmitPublicName:Z

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    .line 621
    invoke-virtual {v3}, Landroid/widget/RatingBar;->getRating()F

    move-result v3

    float-to-int v8, v3

    iget v9, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->lastSubmittedRating:I

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v10, v3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    iget-object v11, v3, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->preferredMarketplace:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    .line 622
    invoke-virtual {v3}, Landroid/widget/RatingBar;->isIndicator()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v3}, Landroid/widget/RatingBar;->getRating()F

    move-result v3

    const/4 v12, 0x0

    cmpl-float v3, v3, v12

    if-lez v3, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    .line 623
    invoke-static {v2}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->isGrokWidget(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Z

    move-result v13

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;-><init>(Lcom/amazon/ea/reviews/data/BookInfo;Lcom/amazon/ea/reviews/data/Review;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 625
    invoke-virtual {v1, v0}, Lcom/amazon/ea/reviews/data/ReviewBookActivityData;->addToIntent(Landroid/content/Intent;)V

    .line 627
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 628
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startPublishedReviewActivity()V
    .locals 5

    .line 636
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    const-class v2, Lcom/amazon/ea/ui/widget/ratingandreview/PublishedReviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 638
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    invoke-static {v1}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->getLastSubmittedReview(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v1

    .line 640
    new-instance v2, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iget-object v4, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v4, v4, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v4}, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;-><init>(Lcom/amazon/ea/reviews/data/BookInfo;Lcom/amazon/ea/reviews/data/Review;Ljava/lang/String;)V

    .line 642
    invoke-virtual {v2, v0}, Lcom/amazon/ea/reviews/data/PublishedReviewActivityData;->addToIntent(Landroid/content/Intent;)V

    .line 645
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v2, 0x1

    const-string v3, "ClickedPublishedReview"

    invoke-virtual {v1, v3, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 646
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v3, "DidAnything"

    invoke-virtual {v1, v3, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 649
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private submitPublicName()V
    .locals 3

    .line 654
    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldSubmitPublicName:Z

    if-eqz v0, :cond_0

    .line 655
    sget-object v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->TAG:Ljava/lang/String;

    const-string v1, "Submitting public name"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    new-instance v0, Lcom/amazon/ea/reviews/submission/PenNameAjaxMessage;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->publicName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->csrfToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ea/reviews/submission/PenNameAjaxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$7;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$7;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    invoke-static {v0, v1}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    const/4 v0, 0x0

    .line 671
    iput-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldSubmitPublicName:Z

    :cond_0
    return-void
.end method

.method private submitRating(I)V
    .locals 7

    .line 683
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/KRXDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/KRXDialogType;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    .line 686
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$string;->error_message_connection:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 685
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->showDialog(Lcom/amazon/kindle/krx/application/KRXDialogType;Ljava/lang/String;)Z

    .line 687
    iget p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->lastSubmittedRating:I

    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->updateRatingBar(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 691
    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->toggleBlockingOverlay(Z)V

    .line 692
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldPostRatingsToGoodreads()Z

    move-result v1

    if-nez v1, :cond_1

    .line 694
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->submitRatingToAmazon(I)V

    return-void

    .line 698
    :cond_1
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getInstance()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    move-result-object v1

    .line 700
    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-virtual {v1, v2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_4

    const-string/jumbo v3, "none"

    .line 702
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 705
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    sget-object v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->TAG:Ljava/lang/String;

    const-string v1, "Clearing rating, but book already not on user\'s profile; will not make Goodreads rating call"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_2
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldPostRatingsToAmazon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->submitRatingToAmazon(I)V

    goto :goto_0

    .line 711
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->showRatingSubmissionSuccess(I)V

    :goto_0
    return-void

    .line 716
    :cond_4
    invoke-static {v2, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RateAndReviewUtil;->getShelfForRating(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 718
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 719
    sget-object v3, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v2, v4, v0

    const-string v0, "Updating Goodreads rating to: %s; updating shelf to %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    sget-object v3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->EA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->updateRatingAndShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method private submitRatingToAmazon(I)V
    .locals 3

    const-string v0, "SubmitRating"

    .line 750
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 752
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    const-string v1, "HasNetworkConnectivity"

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    const-string v0, "WidgetTag"

    .line 753
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DidAnything"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 756
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->csrfToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 758
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$8;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$8;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;I)V

    sget-object p1, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->MEDIUM:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    .line 759
    invoke-static {v1, p1}, Lcom/amazon/ea/metrics/M;->asyncWithMetrics(Ljava/util/concurrent/Callable;Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;)Lcom/amazon/kindle/krx/application/IAsyncTask;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 768
    :cond_0
    new-instance v0, Lcom/amazon/ea/reviews/submission/SubmissionRequirementsAjaxMessage;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/ea/reviews/submission/SubmissionRequirementsAjaxMessage;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;

    invoke-direct {v1, p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;I)V

    invoke-static {v0, v1}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    :goto_0
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 812
    throw p1
.end method

.method private submitRatingToAmazonHelper(ILjava/lang/String;)V
    .locals 2

    .line 824
    new-instance v0, Lcom/amazon/ea/reviews/submission/RatingAjaxMessage;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/ea/reviews/submission/RatingAjaxMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance p2, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;

    invoke-direct {p2, p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;I)V

    invoke-static {v0, p2}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    return-void
.end method

.method private toggleBlockingOverlay(Z)V
    .locals 2

    .line 870
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/ui/helper/BlockingOverlayHelper;->toggleBlockingOverlay(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private useManualShelfExperienceForGoodreadsShelfComponent()V
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsShelfComponent:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->useManualShelfExperience()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 122
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 123
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    if-nez p2, :cond_a

    .line 124
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/ea/R$layout;->endactions_review_mini:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    .line 126
    sget p2, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_rate_and_review_component_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingComponentContainer:Landroid/view/View;

    .line 127
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->anyactions_rating_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    .line 128
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_rating_bar_clear:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBarClear:Landroid/widget/ImageView;

    .line 129
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_rating_bar_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->reviewActionLabel:Landroid/widget/TextView;

    .line 130
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_mini_post_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->postOnLabel:Landroid/widget/TextView;

    .line 133
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object p2, p1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->goodreadsShelfData:Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->bookItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;-><init>(Ljava/lang/String;)V

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object p3, p3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->tryCreate(Landroid/content/Context;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Ljava/lang/String;)Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsShelfComponent:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 139
    iget-object p3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_goodreads_shelf_component_container:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    .line 140
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    sget v2, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_subtle_jit_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 141
    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsShelfComponent:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    .line 142
    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 141
    invoke-virtual {v2, p3, v1, v3, p4}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->createView(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p4

    .line 143
    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->initAutoShelvingMetrics()V

    .line 149
    :cond_2
    invoke-static {}, Lcom/amazon/ea/ui/helper/ShareHelper;->isSharingSupported()Z

    move-result p3

    .line 155
    iget-object p4, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-boolean p4, p4, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->showShareComponent:Z

    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    if-nez p1, :cond_4

    .line 156
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_share_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 157
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_share_button:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 160
    iget-object p3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object p3, p3, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareTitle:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/16 p3, 0x8

    .line 161
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 163
    :cond_3
    iget-object p3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object p3, p3, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareTitle:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_2
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->shareButtonText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    sget p3, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_share_component_container:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    new-instance p1, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$1;

    invoke-direct {p1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$1;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->initSharingMetrics()V

    goto :goto_3

    :cond_4
    xor-int/lit8 p1, p3, 0x1

    const-string p2, "RatingShareWithFriendComponentUnsupported"

    .line 177
    invoke-static {p1, p2}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz p1, :cond_6

    .line 178
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 179
    sget-object p1, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->TAG:Ljava/lang/String;

    const-string p2, "Sharing component invalidated; share with friend is not supported."

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_5
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->initSharingDisabledMetrics()V

    .line 185
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-boolean p1, p1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    if-nez p1, :cond_7

    .line 186
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    sget p2, Lcom/amazon/kindle/ea/R$id;->endactions_review_widget_rating_bar_right_caret:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 189
    :cond_7
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->prefetchCsrfToken()V

    .line 191
    :goto_4
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    invoke-static {p1}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->getLastSubmittedReview(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 196
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-boolean p2, p2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    if-eqz p2, :cond_8

    goto :goto_5

    .line 204
    :cond_8
    invoke-virtual {p1}, Lcom/amazon/ea/reviews/data/Review;->getRating()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->updateRatingBar(I)V

    .line 206
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->bindToPublishedReview()V

    goto :goto_6

    .line 198
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    invoke-static {p1}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->getLastSubmittedRating(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)I

    move-result p1

    iput p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->lastSubmittedRating:I

    .line 199
    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->updateRatingBar(I)V

    .line 200
    invoke-virtual {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->updateRatingClearLabel()V

    .line 202
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->bindToCreateReview()V

    :goto_6
    const/4 p1, 0x2

    .line 209
    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p1

    .line 210
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object p2, p2, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string p3, "MetricsTag"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {p2}, Landroid/widget/RatingBar;->getRating()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Rating"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 214
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object p2, p1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string p3, "DisplayedRatingWidget"

    .line 215
    invoke-static {p3, p2, p1}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_a
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsShelfComponent:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    if-nez p2, :cond_b

    sget-object p2, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    goto :goto_7

    :cond_b
    sget-object p2, Lcom/amazon/ea/metrics/RatingAndReviewActions;->RENDER_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    :goto_7
    invoke-static {p1, p2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 222
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->view:Landroid/view/View;

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 308
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 313
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    invoke-static {p1}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->getLastSubmittedReview(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1

    .line 316
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    invoke-static {p2}, Lcom/amazon/ea/reviews/ReviewsLogicManager;->getLastSubmittedRating(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->updateRatingBar(I)V

    if-eqz p1, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->displayReviewToastMessage()V

    .line 323
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->bindToPublishedReview()V

    .line 324
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->reviewActionLabel:Landroid/widget/TextView;

    sget p2, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_see_your_review:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->bindToCreateReview()V

    :goto_0
    if-eqz p3, :cond_1

    const/4 p1, 0x0

    const-string p2, "com.amazon.ea.ui.widget.ratingandreview.ReviewBookActivity.GOODREADS_SHELF_WIDGET_NEEDS_UPDATE"

    .line 330
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->useManualShelfExperienceForGoodreadsShelfComponent()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 245
    invoke-super {p0}, Lcom/amazon/ea/ui/widget/WidgetController;->onDestroy()V

    .line 246
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsShelfComponent:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->onDestroy(Z)V

    :cond_0
    return-void
.end method

.method public onGoodreadsProfileEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 726
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_RATING_AND_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 728
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->shouldPostRatingsToAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRating()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->submitRatingToAmazon(I)V

    goto :goto_0

    .line 732
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRating()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->showRatingSubmissionSuccess(I)V

    .line 734
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRating()I

    move-result p1

    if-lez p1, :cond_2

    .line 735
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->useManualShelfExperienceForGoodreadsShelfComponent()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 738
    invoke-direct {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->toggleBlockingOverlay(Z)V

    .line 739
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->showRatingSubmissionError()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 227
    invoke-super {p0}, Lcom/amazon/ea/ui/widget/WidgetController;->onPause()V

    .line 229
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsShelfComponent:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 236
    invoke-super {p0}, Lcom/amazon/ea/ui/widget/WidgetController;->onResume()V

    .line 238
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsShelfComponent:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 255
    invoke-super {p0, p1}, Lcom/amazon/ea/ui/widget/WidgetController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 256
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->goodreadsShelfComponent:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public updateRatingBar(I)V
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 346
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_review_accessibility_selected_rating:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateRatingClearLabel()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    iget-boolean v0, v0, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBarClear:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->ratingBarClear:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
