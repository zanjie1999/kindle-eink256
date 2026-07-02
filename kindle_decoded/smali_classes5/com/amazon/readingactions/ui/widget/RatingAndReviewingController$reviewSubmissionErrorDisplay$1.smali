.class final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;
.super Ljava/lang/Object;
.source "RatingAndReviewingController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->reviewSubmissionErrorDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormTitle()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormBody()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReview()Lcom/amazon/ea/reviews/data/Review;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amazon/ea/reviews/data/Review;->setReviewState(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormSubmit()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormSubmit()Landroid/widget/Button;

    move-result-object v0

    .line 394
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getEndActionsActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 395
    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_resubmit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormValidation()Landroid/widget/TextView;

    move-result-object v0

    .line 398
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getEndActionsActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 399
    sget v3, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_error_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormValidation()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$reviewSubmissionErrorDisplay$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {v0, v1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$setSubmissionErrorDisplayed$p(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;Z)V

    return-void
.end method
