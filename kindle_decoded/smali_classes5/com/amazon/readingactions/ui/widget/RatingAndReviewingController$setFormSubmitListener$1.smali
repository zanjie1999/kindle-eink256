.class final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormSubmitListener$1;
.super Ljava/lang/Object;
.source "RatingAndReviewingController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setFormSubmitListener()V
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

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormSubmitListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "SubmitReviewMessage"

    .line 317
    invoke-static {p1}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 319
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result p1

    const-string v0, "HasNetworkConnectivity"

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    const-string p1, "WidgetTag"

    .line 320
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormSubmitListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getModel()Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/M;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "DidAnything"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 323
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormSubmitListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReview()Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazon/ea/reviews/data/Review;->setTimeStamp(Ljava/util/Date;)V

    .line 324
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormSubmitListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReview()Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1

    const-string v0, "NEW_REVIEW"

    invoke-virtual {p1, v0}, Lcom/amazon/ea/reviews/data/Review;->setReviewState(Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormSubmitListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormSubmit()Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 328
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormSubmitListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormTitle()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 329
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormSubmitListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormBody()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 332
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormSubmitListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$submitReview(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    throw p1
.end method
