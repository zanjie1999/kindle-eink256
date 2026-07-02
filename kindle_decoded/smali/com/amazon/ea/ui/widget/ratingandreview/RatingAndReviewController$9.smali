.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Lcom/amazon/ea/util/MessageSender$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->submitRatingToAmazon(I)V
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

    .line 768
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    iput p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;->val$rating:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 2

    .line 771
    invoke-static {}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error fetching csrf token."

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 773
    new-instance p1, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$1;

    invoke-direct {p1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$1;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;)V

    invoke-static {p1}, Lcom/amazon/ea/metrics/M;->asyncWithMetrics(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "csrfToken"

    .line 788
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 789
    invoke-static {}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "csrfToken fetch successful"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    iget v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;->val$rating:I

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$1100(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;ILjava/lang/String;)V

    .line 795
    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$2;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 804
    invoke-static {}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error parsing response."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;->failure(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
