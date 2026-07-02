.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2$1;
.super Ljava/lang/Object;
.source "ReviewBookActivity.java"

# interfaces
.implements Lcom/amazon/ea/util/MessageSender$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 2

    .line 401
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "ReviewSubmitError"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 402
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addError(Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;

    iget-object p1, p1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$700(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 2

    .line 408
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "ReviewSubmitError"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 409
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "SubmittedReview"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 410
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    .line 412
    sget-object p1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_SUBMIT:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 413
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$600(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    sget-object p1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_SUBMIT_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    goto :goto_0

    .line 416
    :cond_0
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    sget-object p1, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_SUBMIT_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    .line 420
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->REVIEW_PAGE:Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    invoke-static {v0, p1, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;)V

    .line 421
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;

    iget-object p1, p1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-virtual {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->saveReviewAndFinish()V

    return-void
.end method
