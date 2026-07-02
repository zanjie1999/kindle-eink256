.class Lcom/amazon/kcp/accounts/SignInHelper$1$1;
.super Ljava/lang/Object;
.source "SignInHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/accounts/SignInHelper$1;->onAppConfigRequestComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/accounts/SignInHelper$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/accounts/SignInHelper$1;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/kcp/accounts/SignInHelper$1$1;->this$1:Lcom/amazon/kcp/accounts/SignInHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/accounts/SignInHelper$1$1;->this$1:Lcom/amazon/kcp/accounts/SignInHelper$1;

    iget-object v0, v0, Lcom/amazon/kcp/accounts/SignInHelper$1;->val$fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "SignInHelper_LoadingDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/accounts/SignInHelper$1$1;->this$1:Lcom/amazon/kcp/accounts/SignInHelper$1;

    iget-object v1, v0, Lcom/amazon/kcp/accounts/SignInHelper$1;->this$0:Lcom/amazon/kcp/accounts/SignInHelper;

    iget-object v2, v0, Lcom/amazon/kcp/accounts/SignInHelper$1;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v3, v0, Lcom/amazon/kcp/accounts/SignInHelper$1;->val$extraOption:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/amazon/kcp/accounts/SignInHelper$1;->val$callback:Lcom/amazon/foundation/IStringCallback;

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/kcp/accounts/SignInHelper;->access$000(Lcom/amazon/kcp/accounts/SignInHelper;Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Lcom/amazon/foundation/IStringCallback;)V

    return-void
.end method
