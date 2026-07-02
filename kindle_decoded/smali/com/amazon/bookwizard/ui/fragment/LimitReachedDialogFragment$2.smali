.class Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$2;
.super Ljava/lang/Object;
.source "LimitReachedDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$2;->this$0:Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 65
    iget-object p2, p0, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$2;->this$0:Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-virtual {p2}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getNavigationController()Lcom/amazon/bookwizard/BookWizardNavigationController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/bookwizard/BookWizardNavigationController;->getCurrentController()Lcom/amazon/bookwizard/BookWizardController;

    move-result-object p2

    .line 66
    instance-of v0, p2, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$LimitReachedDialogListener;

    if-eqz v0, :cond_0

    .line 67
    check-cast p2, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$LimitReachedDialogListener;

    invoke-interface {p2}, Lcom/amazon/bookwizard/ui/fragment/LimitReachedDialogFragment$LimitReachedDialogListener;->onOk()V

    .line 69
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
