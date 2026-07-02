.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$8;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->submitRatingToAmazon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

.field final synthetic val$rating:I


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;I)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$8;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    iput p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$8;->val$rating:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 759
    invoke-virtual {p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$8;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$8;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    iget v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$8;->val$rating:I

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$800(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$1100(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;ILjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
