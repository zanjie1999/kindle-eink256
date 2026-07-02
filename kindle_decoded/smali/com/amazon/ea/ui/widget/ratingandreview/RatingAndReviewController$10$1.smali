.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$1;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;->failure(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 832
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "RatingSubmitError"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 833
    invoke-static {v1}, Lcom/amazon/ea/metrics/M;->addError(Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$1200(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;Z)V

    .line 835
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$1300(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    return-void
.end method
