.class Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$1;
.super Ljava/lang/Object;
.source "RatingAndReviewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 167
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$1;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$1;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$000(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/RatingAndReviewActions;->CLICK_RECOMMEND:Lcom/amazon/ea/metrics/RatingAndReviewActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 171
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController$1;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;->access$100(Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;)V

    return-void
.end method
