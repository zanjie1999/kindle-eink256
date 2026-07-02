.class public final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$submitReview$1;
.super Ljava/lang/Object;
.source "RatingAndReviewingController.kt"

# interfaces
.implements Lcom/amazon/ea/util/MessageSender$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->submitReview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$submitReview$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "ReviewSubmitError"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 346
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addError(Ljava/lang/String;)V

    .line 347
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$submitReview$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$reviewSubmissionErrorDisplay(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "ReviewSubmitError"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 352
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "SubmittedReview"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 353
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    .line 356
    sget-object p1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_SUBMIT:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    .line 357
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    sget-object p1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_SUBMIT_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    goto :goto_0

    .line 360
    :cond_0
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    sget-object p1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_SUBMIT_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    .line 364
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$submitReview$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getModel()Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->REVIEW_PAGE:Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    invoke-static {v0, p1, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;)V

    .line 366
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$submitReview$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$saveReview(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    return-void
.end method
