.class public Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;
.super Landroid/app/DialogFragment;
.source "ReviewBookBackDialogFragment.java"


# instance fields
.field private dialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 21
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_have_not_submitted:I

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_return_to_review:I

    .line 23
    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment$2;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$string;->endactions_reviews_save_for_later:I

    .line 31
    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment$1;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookBackDialogFragment;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method
