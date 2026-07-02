.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$5;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->bindToPublishedReview()V
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

    .line 456
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 460
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$000(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    move-result-object p1

    iget-boolean p1, p1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    if-nez p1, :cond_0

    .line 461
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$600(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    :cond_0
    return-void
.end method
