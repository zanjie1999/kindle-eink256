.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$1;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;->failure(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$1200(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;Z)V

    .line 777
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$1300(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    return-void
.end method
