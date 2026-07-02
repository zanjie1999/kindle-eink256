.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Lcom/amazon/ea/util/MessageSender$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->submitRatingToAmazonHelper(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

.field final synthetic val$rating:I


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;I)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    iput p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;->val$rating:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 1

    .line 827
    invoke-static {}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failure sending rating message. "

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    new-instance p1, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$1;

    invoke-direct {p1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$1;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;)V

    invoke-static {p1}, Lcom/amazon/ea/metrics/M;->asyncWithMetrics(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 0

    .line 843
    new-instance p1, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$2;

    invoke-direct {p1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$2;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;)V

    invoke-static {p1}, Lcom/amazon/ea/metrics/M;->asyncWithMetrics(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
