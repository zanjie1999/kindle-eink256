.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$7;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Lcom/amazon/ea/util/MessageSender$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->submitPublicName()V
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

    .line 659
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$7;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 1

    .line 662
    invoke-static {}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Public name submit error"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 2

    .line 667
    invoke-static {}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Public name submit success"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$7;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$1000(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amazon/ea/reviews/PublicNameLocalStorageManager;->setPublicName(Ljava/lang/String;J)Z

    return-void
.end method
