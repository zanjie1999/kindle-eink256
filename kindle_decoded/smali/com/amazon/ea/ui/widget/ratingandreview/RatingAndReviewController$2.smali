.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$2;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->bindToCreateReview()V
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

    .line 386
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 3

    if-eqz p3, :cond_1

    .line 390
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$000(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    move-result-object p1

    iget-boolean p1, p1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;->ratingOnlyExperience:Z

    if-eqz p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    float-to-int p3, p2

    invoke-static {p1, p3}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$200(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;I)V

    goto :goto_0

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$300(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    .line 399
    :goto_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$500(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Landroid/widget/RatingBar;

    move-result-object p1

    iget-object p3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {p3}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$400(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_review_accessibility_selected_rating:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    float-to-int p2, p2

    .line 400
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 399
    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
