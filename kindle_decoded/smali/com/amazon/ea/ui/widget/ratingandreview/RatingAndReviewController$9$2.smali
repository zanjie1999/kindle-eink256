.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$2;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;->success(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;

.field final synthetic val$localCsrfToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;Ljava/lang/String;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$2;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$2;->val$localCsrfToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$2;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$2;->val$localCsrfToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$802(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;Ljava/lang/String;)Ljava/lang/String;

    .line 800
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9$2;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$900(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    return-void
.end method
