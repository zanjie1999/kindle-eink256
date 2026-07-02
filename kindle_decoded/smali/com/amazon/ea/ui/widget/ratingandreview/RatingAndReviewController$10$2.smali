.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$2;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;->success(Lorg/json/JSONObject;)V
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

    .line 843
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$2;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 846
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v1, 0x0

    const-string v2, "RatingSubmitError"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 847
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v2, 0x1

    const-string v3, "SubmittedRating"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 849
    invoke-static {v2}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 850
    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$2;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;

    iget-object v2, v2, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {v2}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$000(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string v3, "MetricsTag"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$2;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;

    iget v2, v2, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;->val$rating:I

    if-nez v2, :cond_0

    const-string v2, "ClearRating"

    goto :goto_0

    :cond_0
    const-string v2, "SubmitRating"

    .line 853
    :goto_0
    sget-object v3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v3

    const-string v4, "AnyActionsRatingWidget"

    invoke-interface {v3, v4, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 856
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$2;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {v0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$1200(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;Z)V

    .line 857
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10$2;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;

    iget-object v1, v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    iget v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$10;->val$rating:I

    invoke-static {v1, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$1400(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;I)V

    return-void
.end method
