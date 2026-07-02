.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;
.super Ljava/lang/Object;
.source "ReviewBookOptionsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

.field final synthetic val$isAmazonChecked:Z

.field final synthetic val$isGoodreadsChecked:Z

.field final synthetic val$saveButtonEnabled:Z


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;ZZZ)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    iput-boolean p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;->val$isAmazonChecked:Z

    iput-boolean p3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;->val$isGoodreadsChecked:Z

    iput-boolean p4, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;->val$saveButtonEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->access$000(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;->val$isAmazonChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->access$100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;->val$isGoodreadsChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 112
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->access$400(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-boolean v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;->val$saveButtonEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$3;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->access$500(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)V

    return-void
.end method
