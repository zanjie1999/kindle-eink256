.class public Lcom/amazon/ea/ui/widget/ratingandreview/RateAndReviewUtil;
.super Ljava/lang/Object;
.source "RateAndReviewUtil.java"


# direct methods
.method private static createAndShowErrorDialog(Landroid/app/Activity;II)V
    .locals 3

    .line 62
    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;

    invoke-direct {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    sget-object v2, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->MESSAGE_RESOURCE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    sget-object p1, Lcom/amazon/ea/ui/widget/ratingandreview/GoodreadsErrorDialogFragment;->BUTTON_TEXT_RESOURCE_ID_KEY:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static getShelfForRating(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "read"

    return-object p0
.end method

.method public static showRatingErrorDialog(Landroid/app/Activity;)V
    .locals 2

    .line 49
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_error_dialog_message:I

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_rating_error_dialog_button:I

    invoke-static {p0, v0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/RateAndReviewUtil;->createAndShowErrorDialog(Landroid/app/Activity;II)V

    .line 51
    sget-object p0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "DisplayedRatingFailureDialog"

    invoke-virtual {p0, v0}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    return-void
.end method
