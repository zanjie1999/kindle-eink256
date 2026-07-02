.class public Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;
.super Lcom/amazon/ea/ui/widget/WidgetController;
.source "RatingAndReviewingController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRatingAndReviewingController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RatingAndReviewingController.kt\ncom/amazon/readingactions/ui/widget/RatingAndReviewingController\n*L\n1#1,966:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$Companion;

.field private static final NEW_REVIEW_STATE:Ljava/lang/String; = "NEW_REVIEW"

.field private static final RECOMPUTE_HEIGHT_DELAY_MS:J = 0x64L

.field private static final REVIEW_TEXT_EDIT_ON_DEVICE_LIMIT:I = 0x1388

.field private static final REVIEW_TITLE_TEXT_EDIT_ON_DEVICE_LIMIT:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

.field private final endActionsActivity:Landroid/app/Activity;

.field private final fragment:Landroidx/fragment/app/Fragment;

.field private goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

.field private isSubmissionErrorDisplayed:Z

.field private lastSubmittedRating:I

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

.field private publicName:Ljava/lang/String;

.field protected ratingAndTitleContainer:Landroid/view/ViewGroup;

.field protected ratingDescription:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

.field protected ratingReviewDivisor:Landroid/view/View;

.field protected ratingStarsRated:Landroid/widget/RatingBar;

.field protected ratingStarsUnrated:Landroid/widget/RatingBar;

.field protected review:Lcom/amazon/ea/reviews/data/Review;

.field protected reviewFormAuthor:Landroid/widget/TextView;

.field public reviewFormBody:Landroid/widget/EditText;

.field protected reviewFormCancel:Landroid/widget/Button;

.field protected reviewFormContainer:Landroid/view/ViewGroup;

.field public reviewFormOptionsAmazonCheckbox:Landroid/widget/CheckBox;

.field protected reviewFormOptionsContainer:Landroid/view/ViewGroup;

.field public reviewFormOptionsGoodReadsCheckbox:Landroid/widget/CheckBox;

.field protected reviewFormOptionsMustSelect:Landroid/widget/TextView;

.field protected reviewFormOptionsTitle:Landroid/widget/TextView;

.field public reviewFormSubmit:Landroid/widget/Button;

.field public reviewFormTitle:Landroid/widget/EditText;

.field public reviewFormValidation:Landroid/widget/TextView;

.field protected reviewHeader:Landroid/widget/TextView;

.field protected reviewValidator:Lcom/amazon/ea/reviews/validation/ReviewValidator;

.field private storedReview:Lcom/amazon/ea/reviews/data/Review;

.field protected widgetTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->Companion:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$Companion;

    .line 90
    const-class v0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "endActionsActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/WidgetController;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->fragment:Landroidx/fragment/app/Fragment;

    .line 105
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string p2, "EndActionsPlugin.sdk"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    .line 106
    const-class p2, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    const-string p2, "EndActionsPlugin.sdk.pub\u2026viewingModel::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    const/4 p1, 0x1

    .line 107
    invoke-static {p1}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    .line 108
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    invoke-virtual {p1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getBookItem()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ea/reviews/data/BookInfo;->createInstance(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/reviews/data/BookInfo;

    move-result-object p1

    const-string p2, "BookInfo.createInstance(model.bookItem)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    return-void
.end method

.method public static final synthetic access$bindToCreateReview(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->bindToCreateReview()V

    return-void
.end method

.method public static final synthetic access$bindToPublishedReview(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->bindToPublishedReview()V

    return-void
.end method

.method public static final synthetic access$clearReviewForm(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->clearReviewForm()V

    return-void
.end method

.method public static final synthetic access$getBookInfo$p(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)Lcom/amazon/ea/reviews/data/BookInfo;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    return-object p0
.end method

.method public static final synthetic access$getLastSubmittedRating$p(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->lastSubmittedRating:I

    return p0
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$handleRatingChange(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;IZ)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->handleRatingChange(IZ)V

    return-void
.end method

.method public static final synthetic access$handleRatingSubmissionSuccess(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;IZZ)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->handleRatingSubmissionSuccess(IZZ)V

    return-void
.end method

.method public static final synthetic access$hideReviewForm(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->hideReviewForm()V

    return-void
.end method

.method public static final synthetic access$reviewSubmissionErrorDisplay(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewSubmissionErrorDisplay()V

    return-void
.end method

.method public static final synthetic access$saveReview(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->saveReview()V

    return-void
.end method

.method public static final synthetic access$setSubmissionErrorDisplayed$p(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->isSubmissionErrorDisplayed:Z

    return-void
.end method

.method public static final synthetic access$showReviewForm(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->showReviewForm(Z)V

    return-void
.end method

.method public static final synthetic access$submitReview(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->submitReview()V

    return-void
.end method

.method public static final synthetic access$updatePostReviewDescription(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updatePostReviewDescription()V

    return-void
.end method

.method public static final synthetic access$updateRatingPostedDescription(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updateRatingPostedDescription(Z)V

    return-void
.end method

.method private final bindToCreateReview()V
    .locals 7

    .line 542
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    const-string/jumbo v1, "ratingStarsRated"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0x8

    const-string/jumbo v5, "ratingStarsUnrated"

    const/4 v6, 0x0

    cmpg-float v0, v0, v3

    if-eqz v0, :cond_3

    .line 544
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->widgetTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsUnrated:Landroid/widget/RatingBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 548
    invoke-direct {p0, v6}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updateRatingPostedDescription(Z)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 545
    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v0, "widgetTitle"

    .line 544
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 550
    :cond_3
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updatePostReviewDescription()V

    .line 552
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsUnrated:Landroid/widget/RatingBar;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 556
    :goto_0
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->getLastSubmittedPublicName(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publicName:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 558
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->getOptInPublicName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publicName:Ljava/lang/String;

    .line 559
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->submitPublicName()V

    .line 562
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updatePostReviewAuthorDescription()V

    return-void

    .line 553
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 552
    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 542
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final bindToPublishedReview()V
    .locals 4

    .line 819
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updateReviewThankYouDescription()V

    .line 822
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsUnrated:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 824
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->widgetTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 825
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingReviewDivisor:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 827
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setRatingListenerForPublishedReview()V

    .line 828
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publishHeightChange()V

    return-void

    :cond_0
    const-string/jumbo v0, "reviewFormContainer"

    .line 826
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v0, "ratingReviewDivisor"

    .line 825
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "widgetTitle"

    .line 824
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "ratingStarsRated"

    .line 823
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string/jumbo v0, "ratingStarsUnrated"

    .line 822
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final checkLastReview()V
    .locals 9

    .line 227
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->getLastSubmittedReview(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v0

    if-nez v0, :cond_0

    .line 232
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->getLastSubmittedRating(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;)I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->lastSubmittedRating:I

    .line 233
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updateRatingBar(I)V

    .line 235
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->bindToCreateReview()V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/ea/reviews/data/Review;->getRating()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updateRatingBar(I)V

    .line 239
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->bindToPublishedReview()V

    .line 242
    :goto_0
    new-instance v0, Lcom/amazon/ea/reviews/validation/ReviewValidator;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    invoke-virtual {v1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/ea/reviews/validation/ReviewValidator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewValidator:Lcom/amazon/ea/reviews/validation/ReviewValidator;

    .line 243
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    invoke-virtual {v0}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getBookItem()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    invoke-virtual {v1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getBookItem()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/reviews/ReviewsLocalStorageManager;->getReview(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->storedReview:Lcom/amazon/ea/reviews/data/Review;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 245
    :cond_1
    new-instance v0, Lcom/amazon/ea/reviews/data/Review;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getRating()F

    move-result v2

    float-to-int v3, v2

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iget-object v4, v2, Lcom/amazon/ea/reviews/data/BookInfo;->asin:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/ea/reviews/data/Review;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->review:Lcom/amazon/ea/reviews/data/Review;

    .line 247
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewValidator:Lcom/amazon/ea/reviews/validation/ReviewValidator;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Lcom/amazon/ea/reviews/validation/ReviewValidator;->getValidationResultForReview(Lcom/amazon/ea/reviews/data/Review;)Lcom/amazon/ea/reviews/validation/ReviewValidationResult;

    move-result-object v0

    const-string/jumbo v1, "reviewValidator.getValid\u2026onResultForReview(review)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updateValidationTextAndSubmitButton(Lcom/amazon/ea/reviews/validation/ReviewValidationResult;)V

    return-void

    :cond_2
    const-string/jumbo v0, "review"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "reviewValidator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string/jumbo v0, "ratingStarsRated"

    .line 245
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final clearReviewForm()V
    .locals 2

    .line 433
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->hideReviewForm()V

    .line 435
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormTitle:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 436
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    return-void

    :cond_0
    const-string/jumbo v0, "reviewFormBody"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v0, "reviewFormTitle"

    .line 435
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final fillReviewForm()V
    .locals 4

    .line 614
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    invoke-virtual {v0, v1}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->getLastSubmittedReview(Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 615
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormTitle:Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazon/ea/reviews/data/Review;->getReviewTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/amazon/ea/reviews/data/Review;->getReviewText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormAuthor:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 617
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 618
    sget v2, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_review_submitted:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "reviewFormAuthor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v0, "reviewFormBody"

    .line 616
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v0, "reviewFormTitle"

    .line 615
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    return-void
.end method

.method private final handleRatingChange(IZ)V
    .locals 1

    .line 578
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->shouldPostRatingsToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updateGoodReadsRatingAndShelf(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 581
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->handleRatingSubmissionSuccess(IZZ)V

    :goto_0
    return-void
.end method

.method private final handleRatingSubmissionSuccess(IZZ)V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->review:Lcom/amazon/ea/reviews/data/Review;

    const-string/jumbo v1, "review"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/amazon/ea/reviews/data/Review;->setRating(I)V

    .line 647
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->lastSubmittedRating:I

    .line 649
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setRatingSubmitted(IZ)V

    .line 651
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->submitRating(IZ)V

    const/4 p2, 0x1

    if-lez p1, :cond_1

    if-eqz p3, :cond_0

    .line 655
    invoke-direct {p0, p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updateRatingPostedDescription(Z)V

    .line 657
    :cond_0
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string p3, "SubmittedRating"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 660
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updatePostReviewDescription()V

    .line 662
    :cond_2
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string p3, "ClearedRating"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 664
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object p2, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_RATE_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    sget-object p3, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->REVIEW_PAGE:Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    invoke-static {p1, p2, p3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;)V

    .line 667
    :goto_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewValidator:Lcom/amazon/ea/reviews/validation/ReviewValidator;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->review:Lcom/amazon/ea/reviews/data/Review;

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lcom/amazon/ea/reviews/validation/ReviewValidator;->getValidationResultForReview(Lcom/amazon/ea/reviews/data/Review;)Lcom/amazon/ea/reviews/validation/ReviewValidationResult;

    move-result-object p1

    const-string/jumbo p2, "reviewValidator.getValid\u2026onResultForReview(review)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updateValidationTextAndSubmitButton(Lcom/amazon/ea/reviews/validation/ReviewValidationResult;)V

    return-void

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string/jumbo p1, "reviewValidator"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 646
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final hideReviewForm()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingReviewDivisor:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 442
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publishHeightChange()V

    return-void

    :cond_0
    const-string/jumbo v0, "reviewFormContainer"

    .line 441
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v0, "ratingReviewDivisor"

    .line 440
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final manuallySetNewLocalShelf(I)V
    .locals 4

    const/4 v0, 0x1

    .line 736
    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 737
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getInstance()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    move-result-object v2

    .line 738
    invoke-virtual {v2, v1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object v3

    .line 739
    invoke-static {v3, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RateAndReviewUtil;->getShelfForRating(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 740
    invoke-virtual {v2, v1, p1, v0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->setLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private final publishGoodReadsShelfManualEvent()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/readingactions/goodreadsshelf/service/GoodReadsShelfManualEvent;

    invoke-direct {v1}, Lcom/amazon/readingactions/goodreadsshelf/service/GoodReadsShelfManualEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private final publishHeightChange()V
    .locals 4

    .line 956
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final reviewSubmissionErrorDisplay()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final saveReview()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    invoke-virtual {v0}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getBookItem()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->review:Lcom/amazon/ea/reviews/data/Review;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/amazon/ea/reviews/ReviewsLocalStorageManager;->saveReview(Ljava/lang/String;Lcom/amazon/ea/reviews/data/Review;)V

    .line 375
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$saveReview$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$saveReview$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string/jumbo v0, "review"

    .line 372
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final setFormCancelListener()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormCancel:Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormCancelListener$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormCancelListener$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string/jumbo v0, "reviewFormCancel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final setFormCancelListenerForPublishedReview()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormCancel:Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormCancelListenerForPublishedReview$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormCancelListenerForPublishedReview$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string/jumbo v0, "reviewFormCancel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final setFormSubmitListener()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormSubmit:Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormSubmitListener$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormSubmitListener$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string/jumbo v0, "reviewFormSubmit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final setRatingListener()V
    .locals 3

    .line 251
    new-instance v0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    .line 272
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsUnrated:Landroid/widget/RatingBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 273
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    return-void

    :cond_0
    const-string/jumbo v0, "ratingStarsRated"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v0, "ratingStarsUnrated"

    .line 272
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final setRatingListenerForPublishedReview()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    const-string/jumbo v2, "ratingStarsRated"

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 278
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListenerForPublishedReview$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListenerForPublishedReview$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final setRatingSubmitted(IZ)V
    .locals 1

    .line 671
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->shouldPostRatingsToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    .line 674
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publishGoodReadsShelfManualEvent()V

    :cond_0
    if-eqz p2, :cond_1

    .line 682
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->manuallySetNewLocalShelf(I)V

    :cond_1
    return-void
.end method

.method private final setRemoveRatingListener()V
    .locals 6

    .line 446
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_rating_remove:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    .line 465
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingDescription:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    const/4 v3, 0x0

    const-string/jumbo v4, "ratingDescription"

    if-eqz v2, :cond_1

    new-instance v5, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingControllerKt$sam$OnClickListener$83427a0c;

    invoke-direct {v5, v1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingControllerKt$sam$OnClickListener$83427a0c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v0, v5}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingDescription:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingControllerKt$sam$OnClickListener$83427a0c;

    invoke-direct {v3, v1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingControllerKt$sam$OnClickListener$83427a0c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v0, v0, v3}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setAppendLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 465
    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final setTextChangedListeners()V
    .locals 4

    .line 471
    new-instance v0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$reviewFormChangeListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$reviewFormChangeListener$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    .line 491
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormTitle:Landroid/widget/EditText;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 492
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    const-string/jumbo v3, "reviewFormBody"

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 495
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$1;

    invoke-direct {v1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 507
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$2;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$2;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    const-string/jumbo v0, "reviewFormContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 492
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string/jumbo v0, "reviewFormTitle"

    .line 491
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final shouldPostRatingsToAmazon()Z
    .locals 1

    .line 862
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->shouldPostRatingsToGoodreads()Z

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

.method private final shouldPostRatingsToGoodreads()Z
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

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

.method private final showReviewForm(Z)V
    .locals 5

    .line 586
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormContainer:Landroid/view/ViewGroup;

    const-string/jumbo v1, "reviewFormContainer"

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_d

    .line 588
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingReviewDivisor:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 590
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publishHeightChange()V

    if-nez p1, :cond_3

    .line 593
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_CREATE_REVIEW:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 594
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->storedReview:Lcom/amazon/ea/reviews/data/Review;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "CreateReviewSourceStored"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 595
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->storedReview:Lcom/amazon/ea/reviews/data/Review;

    if-nez v0, :cond_2

    const/4 v4, 0x1

    :cond_2
    const-string v0, "CreateReviewSourceNew"

    invoke-virtual {p1, v4, v0}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 596
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "ClickedCreateReview"

    invoke-virtual {p1, v0, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 597
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "DidAnything"

    invoke-virtual {p1, v0, v3}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    goto :goto_2

    .line 599
    :cond_3
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->fillReviewForm()V

    .line 600
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setFormCancelListenerForPublishedReview()V

    .line 602
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormTitle:Landroid/widget/EditText;

    const-string/jumbo v0, "reviewFormTitle"

    if-eqz p1, :cond_a

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 603
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormTitle:Landroid/widget/EditText;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 604
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    const-string/jumbo v0, "reviewFormBody"

    if-eqz p1, :cond_8

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 605
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 606
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormSubmit:Landroid/widget/Button;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 607
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormValidation:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const-string/jumbo p1, "reviewFormOptionsContainer"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string/jumbo p1, "reviewFormValidation"

    .line 607
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string/jumbo p1, "reviewFormSubmit"

    .line 606
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 605
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 604
    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 603
    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 602
    :cond_a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 589
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_c
    const-string/jumbo p1, "ratingReviewDivisor"

    .line 588
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_d
    :goto_2
    return-void

    .line 586
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final submitPublicName()V
    .locals 3

    .line 567
    new-instance v0, Lcom/amazon/ea/reviews/submission/PenNameMessage;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publicName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/ea/reviews/submission/PenNameMessage;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    .line 570
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publicName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/amazon/ea/reviews/PublicNameLocalStorageManager;->setPublicName(Ljava/lang/String;J)Z

    .line 573
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v1, 0x1

    const-string v2, "SubmittedPublicName"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 574
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "DidAnything"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    return-void
.end method

.method private final submitRating(IZ)V
    .locals 3

    const-string v0, "SubmitRating"

    .line 699
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 701
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    const-string v1, "HasNetworkConnectivity"

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    const-string v0, "WidgetTag"

    .line 702
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    new-instance v0, Lcom/amazon/ea/reviews/data/Rating;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iget-object v1, v1, Lcom/amazon/ea/reviews/data/BookInfo;->asin:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/ea/reviews/data/Rating;-><init>(ILjava/lang/String;Ljava/util/Date;)V

    .line 705
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->shouldPostRatingsToAmazon()Z

    move-result p1

    .line 706
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->shouldPostRatingsToGoodreads()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 707
    :goto_0
    new-instance v1, Lcom/amazon/ea/reviews/submission/RatingMessage;

    invoke-direct {v1, v0, p1, p2}, Lcom/amazon/ea/reviews/submission/RatingMessage;-><init>(Lcom/amazon/ea/reviews/data/Rating;ZZ)V

    .line 708
    new-instance p1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$submitRating$1;

    invoke-direct {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$submitRating$1;-><init>()V

    .line 707
    invoke-static {v1, p1}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    .line 724
    new-instance p1, Lcom/amazon/ea/reviews/submission/PersonalizationRatingMessage;

    invoke-direct {p1, v0}, Lcom/amazon/ea/reviews/submission/PersonalizationRatingMessage;-><init>(Lcom/amazon/ea/reviews/data/Rating;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    throw p1
.end method

.method private final submitReview()V
    .locals 5

    .line 340
    new-instance v0, Lcom/amazon/ea/reviews/submission/ReviewMessage;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->review:Lcom/amazon/ea/reviews/data/Review;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v2

    .line 341
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v3

    sget-object v4, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v4}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v4

    .line 340
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/ea/reviews/submission/ReviewMessage;-><init>(Lcom/amazon/ea/reviews/data/Review;ZZZ)V

    .line 342
    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$submitReview$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$submitReview$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    .line 340
    invoke-static {v0, v1}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    return-void

    :cond_0
    const-string/jumbo v0, "review"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final updateGoodReadsRatingAndShelf(I)V
    .locals 4

    const/4 v0, 0x1

    .line 628
    invoke-static {v0}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->getGoodreadsInfo(Z)Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 629
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getInstance()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    move-result-object v1

    .line 630
    invoke-virtual {v1, v0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object v2

    .line 631
    invoke-static {v2, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RateAndReviewUtil;->getShelfForRating(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 632
    sget-object v3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->EA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->updateRatingAndShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    :cond_0
    return-void
.end method

.method private final updatePostReviewDescription()V
    .locals 3

    .line 745
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->shouldPostRatingsToAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->shouldPostRatingsToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 748
    sget v1, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_review_amazon_goodreads:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_0
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->shouldPostRatingsToAmazon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 751
    sget v1, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_review_amazon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 754
    sget v1, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_review_amazon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "if (shouldPostRatingsToA\u2026iew_amazon)\n            }"

    .line 746
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 758
    sget v1, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_review_amazon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "endActionsActivity.resou\u2026re_madread_review_amazon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    :goto_1
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingDescription:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_3
    const-string/jumbo v0, "ratingDescription"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final updateRatingBar(I)V
    .locals 7

    .line 532
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsUnrated:Landroid/widget/RatingBar;

    const-string/jumbo v1, "ratingStarsUnrated"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    int-to-float v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 533
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    const-string/jumbo v4, "ratingStarsRated"

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 535
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 536
    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_review_accessibility_selected_rating:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 537
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsUnrated:Landroid/widget/RatingBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 537
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 533
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 532
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final updateRatingPostedDescription(Z)V
    .locals 3

    .line 765
    sget-object v0, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_RATE:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    .line 766
    sget-object v1, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 767
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    sget-object v0, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_RATE_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    .line 769
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 770
    sget v2, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_rating_posted_amazon_goodreads:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 771
    :cond_0
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 773
    sget v2, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_rating_posted_amazon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 774
    :cond_1
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 775
    sget-object v0, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_RATE_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    .line 776
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 777
    sget v2, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_rating_posted_goodreads:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 781
    :cond_2
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 782
    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_posted:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "if (ReviewsDestinationMa\u2026ing_posted)\n            }"

    .line 767
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 785
    :cond_3
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 786
    sget v2, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_rating_posted_amazon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "endActionsActivity.resou\u2026ead_rating_posted_amazon)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_4

    .line 790
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 793
    :cond_4
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingDescription:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_5
    const-string/jumbo p1, "ratingDescription"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final updateReviewThankYouDescription()V
    .locals 3

    .line 832
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 833
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 835
    sget v1, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_rating_review_thank_you_processing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 836
    :cond_0
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 838
    sget v1, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_rating_review_thank_you_processing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 839
    :cond_1
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 840
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 841
    sget v1, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_rating_review_thank_you_goodreads:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 846
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_review_thank_you_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 849
    :cond_3
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 850
    sget v1, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_rating_review_thank_you_processing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    :goto_0
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingDescription:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_4
    const-string/jumbo v0, "ratingDescription"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method protected buildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 163
    sget v1, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_ea_rating_and_reviewing:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "endActionsActivity.layou\u2026reviewing, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget v0, Lcom/amazon/kindle/ea/R$id;->rating_and_title_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.rating_and_title_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingAndTitleContainer:Landroid/view/ViewGroup;

    .line 167
    sget v0, Lcom/amazon/kindle/ea/R$id;->rating_and_reviewing_widget_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.r\u2026d_reviewing_widget_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->widgetTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "widgetTitle"

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 168
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->widgetTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    sget v0, Lcom/amazon/kindle/ea/R$id;->rating_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.rating_description)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingDescription:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    if-eqz v0, :cond_12

    .line 172
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    sget v0, Lcom/amazon/kindle/ea/R$id;->rating_stars_unrated:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.rating_stars_unrated)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsUnrated:Landroid/widget/RatingBar;

    .line 175
    sget v0, Lcom/amazon/kindle/ea/R$id;->rating_stars_rated:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.rating_stars_rated)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    .line 177
    sget v0, Lcom/amazon/kindle/ea/R$id;->rating_review_divisor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.rating_review_divisor)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingReviewDivisor:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 178
    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_bg_container:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormContainer:Landroid/view/ViewGroup;

    .line 182
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_header)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewHeader:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 183
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormTitle:Landroid/widget/EditText;

    const-string/jumbo v1, "reviewFormTitle"

    if-eqz v0, :cond_f

    .line 186
    sget v3, Lcom/amazon/kindle/ea/R$array;->readingactions_form_edittext:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormTitle:Landroid/widget/EditText;

    if-eqz v0, :cond_e

    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 188
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormTitle:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_secondary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 190
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_body:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_body)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    const-string/jumbo v1, "reviewFormBody"

    if-eqz v0, :cond_c

    .line 191
    sget v3, Lcom/amazon/kindle/ea/R$array;->readingactions_form_edittext:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_secondary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 195
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_validation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_validation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormValidation:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 196
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_author:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_author)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormAuthor:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 199
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_options_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.r\u2026w_form_options_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsContainer:Landroid/view/ViewGroup;

    .line 203
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_options_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_options_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 204
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_options_post_amazon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.r\u2026form_options_post_amazon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsAmazonCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_6

    .line 207
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 209
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_options_post_goodreads:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.r\u2026m_options_post_goodreads)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsGoodReadsCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    .line 210
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 212
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_options_must_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.r\u2026form_options_must_select)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsMustSelect:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 213
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_submit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_submit)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormSubmit:Landroid/widget/Button;

    const-string/jumbo v1, "reviewFormSubmit"

    if-eqz v0, :cond_3

    .line 216
    sget v3, Lcom/amazon/kindle/ea/R$array;->readingactions_contrast_button:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormSubmit:Landroid/widget/Button;

    if-eqz v0, :cond_2

    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_contrast_button_text_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 219
    sget v0, Lcom/amazon/kindle/ea/R$id;->review_form_cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.review_form_cancel)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormCancel:Landroid/widget/Button;

    const-string/jumbo v1, "reviewFormCancel"

    if-eqz v0, :cond_1

    .line 220
    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 221
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormCancel:Landroid/widget/Button;

    if-eqz v0, :cond_0

    sget v1, Lcom/amazon/kindle/ea/R$array;->readingactions_default_button_background:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-object p1

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string/jumbo p1, "reviewFormOptionsMustSelect"

    .line 213
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string/jumbo p1, "reviewFormOptionsGoodReadsCheckbox"

    .line 210
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string/jumbo p1, "reviewFormOptionsAmazonCheckbox"

    .line 207
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string/jumbo p1, "reviewFormOptionsTitle"

    .line 204
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string/jumbo p1, "reviewFormAuthor"

    .line 199
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    const-string/jumbo p1, "reviewFormValidation"

    .line 196
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_10
    const-string/jumbo p1, "reviewHeader"

    .line 183
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_11
    const-string/jumbo p1, "ratingReviewDivisor"

    .line 178
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_12
    const-string/jumbo p1, "ratingDescription"

    .line 172
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method protected final getEndActionsActivity()Landroid/app/Activity;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected final getModel()Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    return-object v0
.end method

.method protected final getRatingDescription()Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingDescription:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ratingDescription"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getRatingReviewDivisor()Landroid/view/View;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingReviewDivisor:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ratingReviewDivisor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getRatingStarsRated()Landroid/widget/RatingBar;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ratingStarsRated"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getRatingStarsUnrated()Landroid/widget/RatingBar;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsUnrated:Landroid/widget/RatingBar;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ratingStarsUnrated"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getReview()Lcom/amazon/ea/reviews/data/Review;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->review:Lcom/amazon/ea/reviews/data/Review;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "review"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getReviewFormAuthor()Landroid/widget/TextView;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormAuthor:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewFormAuthor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReviewFormBody()Landroid/widget/EditText;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewFormBody"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getReviewFormCancel()Landroid/widget/Button;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormCancel:Landroid/widget/Button;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewFormCancel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReviewFormOptionsAmazonCheckbox()Landroid/widget/CheckBox;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsAmazonCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewFormOptionsAmazonCheckbox"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getReviewFormOptionsContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewFormOptionsContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReviewFormOptionsGoodReadsCheckbox()Landroid/widget/CheckBox;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsGoodReadsCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewFormOptionsGoodReadsCheckbox"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getReviewFormOptionsMustSelect()Landroid/widget/TextView;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsMustSelect:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewFormOptionsMustSelect"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getReviewFormOptionsTitle()Landroid/widget/TextView;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewFormOptionsTitle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReviewFormSubmit()Landroid/widget/Button;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormSubmit:Landroid/widget/Button;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewFormSubmit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReviewFormTitle()Landroid/widget/EditText;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormTitle:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewFormTitle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReviewFormValidation()Landroid/widget/TextView;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormValidation:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewFormValidation"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getReviewHeader()Landroid/widget/TextView;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewHeader:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewHeader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected final getReviewValidator()Lcom/amazon/ea/reviews/validation/ReviewValidator;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewValidator:Lcom/amazon/ea/reviews/validation/ReviewValidator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "reviewValidator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string/jumbo p4, "parent"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "format"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "animationCoordinator"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string p3, "EndActionsPlugin.sdk"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->buildView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 144
    sget-object p2, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object p3, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    iget-object p4, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingAndTitleContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p2, p3, p4}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setPaddingOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 145
    sget-object p2, Lcom/amazon/readingactions/ui/helpers/OrientationResizer;->Companion:Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;

    iget-object p3, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    iget-object p4, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormContainer:Landroid/view/ViewGroup;

    if-eqz p4, :cond_0

    invoke-virtual {p2, p3, p4}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;->setPaddingOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 147
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setRatingListener()V

    .line 148
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setFormOptionsListener()V

    .line 149
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setFormSubmitListener()V

    .line 150
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setFormCancelListener()V

    .line 151
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setRemoveRatingListener()V

    .line 152
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setTextChangedListeners()V

    .line 154
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->checkLastReview()V

    .line 156
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->model:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    iget-object p2, p2, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object p3, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, p3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    return-object p1

    :cond_0
    const-string/jumbo p1, "reviewFormContainer"

    .line 145
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo p1, "ratingAndTitleContainer"

    .line 144
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getWidgetTitle()Landroid/widget/TextView;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->widgetTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "widgetTitle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .line 522
    invoke-super {p0}, Lcom/amazon/ea/ui/widget/WidgetController;->onDestroy()V

    .line 523
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public final onGoodreadsProfileEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 941
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_RATING_AND_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 515
    invoke-super {p0}, Lcom/amazon/ea/ui/widget/WidgetController;->onPause()V

    .line 517
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->review:Lcom/amazon/ea/reviews/data/Review;

    const/4 v1, 0x0

    const-string/jumbo v2, "review"

    if-eqz v0, :cond_1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Lcom/amazon/ea/reviews/data/Review;->setTimeStamp(Ljava/util/Date;)V

    .line 518
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->bookInfo:Lcom/amazon/ea/reviews/data/BookInfo;

    iget-object v0, v0, Lcom/amazon/ea/reviews/data/BookInfo;->bookId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->review:Lcom/amazon/ea/reviews/data/Review;

    if-eqz v3, :cond_0

    invoke-static {v0, v3}, Lcom/amazon/ea/reviews/ReviewsLocalStorageManager;->saveReview(Ljava/lang/String;Lcom/amazon/ea/reviews/data/Review;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 517
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public setFormOptionsListener()V
    .locals 5

    .line 287
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsAmazonCheckbox:Landroid/widget/CheckBox;

    const-string/jumbo v2, "reviewFormOptionsAmazonCheckbox"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsGoodReadsCheckbox:Landroid/widget/CheckBox;

    const-string/jumbo v3, "reviewFormOptionsGoodReadsCheckbox"

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    new-instance v0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    .line 310
    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsAmazonCheckbox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    new-instance v2, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingControllerKt$sam$OnCheckedChangeListener$b18d7294;

    invoke-direct {v2, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingControllerKt$sam$OnCheckedChangeListener$b18d7294;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 311
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsGoodReadsCheckbox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingControllerKt$sam$OnCheckedChangeListener$b18d7294;

    invoke-direct {v1, v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingControllerKt$sam$OnCheckedChangeListener$b18d7294;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string/jumbo v0, "reviewFormOptionsContainer"

    .line 289
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_0
    return-void
.end method

.method protected final setRatingAndTitleContainer(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingAndTitleContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method protected final setRatingDescription(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingDescription:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    return-void
.end method

.method protected final setRatingReviewDivisor(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingReviewDivisor:Landroid/view/View;

    return-void
.end method

.method protected final setRatingStarsRated(Landroid/widget/RatingBar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsRated:Landroid/widget/RatingBar;

    return-void
.end method

.method protected final setRatingStarsUnrated(Landroid/widget/RatingBar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->ratingStarsUnrated:Landroid/widget/RatingBar;

    return-void
.end method

.method protected final setReviewFormAuthor(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormAuthor:Landroid/widget/TextView;

    return-void
.end method

.method public final setReviewFormBody(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    return-void
.end method

.method protected final setReviewFormCancel(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormCancel:Landroid/widget/Button;

    return-void
.end method

.method protected final setReviewFormContainer(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setReviewFormOptionsAmazonCheckbox(Landroid/widget/CheckBox;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsAmazonCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method protected final setReviewFormOptionsContainer(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setReviewFormOptionsGoodReadsCheckbox(Landroid/widget/CheckBox;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsGoodReadsCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method protected final setReviewFormOptionsMustSelect(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsMustSelect:Landroid/widget/TextView;

    return-void
.end method

.method protected final setReviewFormOptionsTitle(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsTitle:Landroid/widget/TextView;

    return-void
.end method

.method public final setReviewFormSubmit(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormSubmit:Landroid/widget/Button;

    return-void
.end method

.method public final setReviewFormTitle(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormTitle:Landroid/widget/EditText;

    return-void
.end method

.method public final setReviewFormValidation(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormValidation:Landroid/widget/TextView;

    return-void
.end method

.method protected final setReviewHeader(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewHeader:Landroid/widget/TextView;

    return-void
.end method

.method protected final setWidgetTitle(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->widgetTitle:Landroid/widget/TextView;

    return-void
.end method

.method protected final updatePostReviewAuthorDescription()V
    .locals 5

    .line 797
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 798
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 800
    sget v3, Lcom/amazon/kindle/ea/R$string;->readingactions_kre_madread_review_post_amazon_goodreads:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publicName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 801
    :cond_0
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 803
    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_post_on_amazon:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publicName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 804
    :cond_1
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 806
    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_post_on_goodreads:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 809
    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_post_on_amazon:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publicName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "if (ReviewsDestinationMa\u2026publicName)\n            }"

    .line 798
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 812
    :cond_3
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 813
    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_post_on_amazon:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publicName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "endActionsActivity.resou\u2026st_on_amazon, publicName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    :goto_1
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormAuthor:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const-string/jumbo v0, "reviewFormAuthor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final updateValidationTextAndSubmitButton(Lcom/amazon/ea/reviews/validation/ReviewValidationResult;)V
    .locals 9

    const-string/jumbo v0, "validationResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 884
    iget-object v0, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->issues:Ljava/util/List;

    sget-object v1, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_INVALID_RATING:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_star_rating:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 888
    :goto_0
    iget-object v2, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->issues:Ljava/util/List;

    sget-object v3, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TITLE_NOT_FOUND:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 889
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_ampersand:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 892
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_headline:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 895
    :cond_3
    iget-object v2, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->issues:Ljava/util/List;

    sget-object v5, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TEXT_INVALID:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->moreWordsNeeded:I

    if-lez v2, :cond_6

    .line 896
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 897
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_ampersand:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 899
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/amazon/kindle/ea/R$plurals;->endactions_reviews_more_words:I

    .line 900
    iget v6, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->moreWordsNeeded:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 899
    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_8

    .line 904
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_space_required:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 907
    :cond_8
    iget-object v2, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->issues:Ljava/util/List;

    sget-object v5, Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;->REVIEW_TEXT_INVALID:Lcom/amazon/ea/reviews/validation/ReviewValidationIssuesEnum;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->moreWordsNeeded:I

    if-nez v2, :cond_9

    iget v2, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->moreUniqueWordsNeeded:I

    if-lez v2, :cond_9

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_repeated_words:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 914
    :cond_9
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormTitle:Landroid/widget/EditText;

    const/4 v5, 0x0

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v6, 0x64

    const-string/jumbo v7, "reviewFormBody"

    if-ge v2, v6, :cond_b

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v6, 0x1388

    if-lt v2, v6, :cond_c

    goto :goto_4

    :cond_a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 915
    :cond_b
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_max_length:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 920
    :cond_c
    iget-boolean v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->isSubmissionErrorDisplayed:Z

    const-string/jumbo v6, "reviewFormValidation"

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_f

    .line 921
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormValidation:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_e
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 925
    :cond_f
    :goto_6
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormValidation:Landroid/widget/TextView;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormValidation:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "reviewFormValidation.text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    :goto_7
    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormBody:Landroid/widget/EditText;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string/jumbo v2, "reviewFormBody.text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_12

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    goto :goto_a

    :cond_13
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_14
    :goto_9
    const/16 v1, 0x8

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsAmazonCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 932
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormOptionsGoodReadsCheckbox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 933
    sget-object v2, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v2}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez v0, :cond_16

    if-eqz v1, :cond_15

    goto :goto_b

    :cond_15
    const/4 v0, 0x0

    goto :goto_c

    :cond_16
    :goto_b
    const/4 v0, 0x1

    .line 936
    :goto_c
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewFormSubmit:Landroid/widget/Button;

    if-eqz v1, :cond_18

    iget-object p1, p1, Lcom/amazon/ea/reviews/validation/ReviewValidationResult;->issues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_17

    if-eqz v0, :cond_17

    goto :goto_d

    :cond_17
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_18
    const-string/jumbo p1, "reviewFormSubmit"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_19
    const-string/jumbo p1, "reviewFormOptionsGoodReadsCheckbox"

    .line 932
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_1a
    const-string/jumbo p1, "reviewFormOptionsAmazonCheckbox"

    .line 931
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 926
    :cond_1b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_1c
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 925
    :cond_1d
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_1e
    const-string/jumbo p1, "reviewFormTitle"

    .line 914
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method
