.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6$1;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;->success(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;

.field final synthetic val$response:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;Lorg/json/JSONObject;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6$1;->val$response:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6$1;->val$response:Lorg/json/JSONObject;

    const-string v2, "csrfToken"

    .line 528
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$802(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;Ljava/lang/String;)Ljava/lang/String;

    .line 529
    invoke-static {}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "csrfToken prefetch successful"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$900(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 533
    invoke-static {}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6$1;->val$response:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;

    invoke-virtual {v1, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;->failure(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
