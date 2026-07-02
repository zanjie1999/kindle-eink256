.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;
.super Ljava/lang/Object;
.source "ReviewBookActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->reviewSubmissionErrorDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 756
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$400(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 757
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$500(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 760
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amazon/ea/reviews/data/Review;->setReviewState(Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 764
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_resubmit:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$1800(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_error_message:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$10;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$1902(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;Z)Z

    return-void
.end method
