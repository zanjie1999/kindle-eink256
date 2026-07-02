.class Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment$2;
.super Ljava/lang/Object;
.source "NetworkUnavailableDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment$2;->this$0:Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment;

    iput-object p2, p0, Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 44
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment$2;->this$0:Lcom/amazon/bookwizard/ui/fragment/NetworkUnavailableDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$color;->bookwizard_amazon_orange:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
