.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$2;
.super Ljava/lang/Object;
.source "ReviewBookOptionsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->access$000(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-static {p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->access$100(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->setDestinations(ZZ)V

    .line 61
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-static {p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->access$300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->submitPublicName(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$2;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-static {p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->access$300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->updatePublicName(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
