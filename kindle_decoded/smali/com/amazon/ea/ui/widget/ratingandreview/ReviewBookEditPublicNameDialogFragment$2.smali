.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$2;
.super Ljava/lang/Object;
.source "ReviewBookEditPublicNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 55
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->access$000(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-static {p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->access$100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Landroid/widget/EditText;

    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->updatePublicName(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-static {p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;->access$100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 65
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->submitPublicName(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
