.class Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment$2;
.super Ljava/lang/Object;
.source "EinkNetworkErrorDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment$2;->this$0:Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment$2;->this$0:Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment$NetworkErrorListener;

    iget-object p2, p0, Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment$2;->this$0:Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment;

    invoke-virtual {p2}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment$NetworkErrorListener;->onRetry(Ljava/lang/String;)V

    return-void
.end method
