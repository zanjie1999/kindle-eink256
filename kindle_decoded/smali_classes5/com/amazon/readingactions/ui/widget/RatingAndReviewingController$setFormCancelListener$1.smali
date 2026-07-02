.class final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormCancelListener$1;
.super Ljava/lang/Object;
.source "RatingAndReviewingController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setFormCancelListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormCancelListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 407
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormCancelListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$clearReviewForm(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    .line 409
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormCancelListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReview()Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ea/reviews/data/Review;->isSubmitted()Z

    move-result p1

    if-nez p1, :cond_2

    .line 411
    sget-object p1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_CANCEL:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    .line 412
    sget-object v0, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager;->Companion:Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/reviews/ReviewsLogicManager$Companion;->isGrokWidget()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    sget-object p1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_CANCEL_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    goto :goto_0

    .line 415
    :cond_0
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    sget-object p1, Lcom/amazon/ea/metrics/RatingAndReviewingActions;->CLICK_CANCEL_ONLY_GR:Lcom/amazon/ea/metrics/RatingAndReviewingActions;

    .line 419
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormCancelListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getModel()Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;->REVIEW_PAGE:Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;

    invoke-static {v0, p1, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;Lcom/amazon/ea/metrics/GeneralWidgetActionsSuffix;)V

    .line 422
    :cond_2
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormCancelListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$bindToCreateReview(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    return-void
.end method
