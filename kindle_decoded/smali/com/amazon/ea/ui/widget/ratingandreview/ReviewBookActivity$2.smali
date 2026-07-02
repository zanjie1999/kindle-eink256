.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;
.super Ljava/lang/Object;
.source "ReviewBookActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bindElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "SubmitReviewMessage"

    .line 381
    invoke-static {p1}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 383
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result p1

    const-string v0, "HasNetworkConnectivity"

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    const-string p1, "WidgetTag"

    .line 384
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/M;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "DidAnything"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 387
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazon/ea/reviews/data/Review;->setTimeStamp(Ljava/util/Date;)V

    .line 388
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1

    const-string v0, "NEW_REVIEW"

    invoke-virtual {p1, v0}, Lcom/amazon/ea/reviews/data/Review;->setReviewState(Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 392
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$400(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 393
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$500(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 396
    new-instance p1, Lcom/amazon/ea/reviews/submission/ReviewMessage;

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v0

    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToAmazon()Z

    move-result v1

    .line 397
    invoke-static {}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->isPostToGoodreads()Z

    move-result v2

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v3}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$600(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Z

    move-result v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/amazon/ea/reviews/submission/ReviewMessage;-><init>(Lcom/amazon/ea/reviews/data/Review;ZZZ)V

    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2$1;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2$1;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$2;)V

    .line 396
    invoke-static {p1, v0}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 426
    throw p1
.end method
