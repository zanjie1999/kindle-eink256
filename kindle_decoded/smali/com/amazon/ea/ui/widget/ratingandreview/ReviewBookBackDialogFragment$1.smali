.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment$1;
.super Ljava/lang/Object;
.source "ReviewBookBackDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment$1;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment$1;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment$1;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-virtual {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->saveReviewAndFinish()V

    :cond_0
    return-void
.end method
