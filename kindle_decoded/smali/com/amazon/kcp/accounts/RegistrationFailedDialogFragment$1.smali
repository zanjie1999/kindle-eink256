.class Lcom/amazon/kcp/accounts/RegistrationFailedDialogFragment$1;
.super Ljava/lang/Object;
.source "RegistrationFailedDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/accounts/RegistrationFailedDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/accounts/RegistrationFailedDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/accounts/RegistrationFailedDialogFragment;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/accounts/RegistrationFailedDialogFragment$1;->this$0:Lcom/amazon/kcp/accounts/RegistrationFailedDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/amazon/kcp/accounts/RegistrationFailedDialogFragment$1;->this$0:Lcom/amazon/kcp/accounts/RegistrationFailedDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
