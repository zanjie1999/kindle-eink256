.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$4;
.super Ljava/lang/Object;
.source "ReviewBookEditPublicNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$4;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 117
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$4;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->access$300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$4;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->access$300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method
