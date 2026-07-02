.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$3;
.super Ljava/lang/Object;
.source "ReviewBookEditPublicNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

.field final synthetic val$okButtonEnabled:Z


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;Z)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    iput-boolean p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$3;->val$okButtonEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->access$100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->access$100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 99
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->access$300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$3;->val$okButtonEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
