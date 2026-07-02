.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$5;
.super Ljava/lang/Object;
.source "ReviewBookOptionsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 129
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 133
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 134
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;->access$300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PUBLIC_NAME_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;

    invoke-direct {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookEditPublicNameDialogFragment;-><init>()V

    .line 138
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 139
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookOptionsDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
