.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Lcom/amazon/ea/util/MessageSender$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->prefetchCsrfToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 1

    .line 516
    invoke-static {}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to prefetch csrfToken."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1

    .line 522
    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6$1;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$6;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
