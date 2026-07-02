.class Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;->k(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eK:Landroid/os/Bundle;

.field final synthetic eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$2;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$2;->eK:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$2;->eK:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$2;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fc:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->onError(Landroid/os/Bundle;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$2;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fc:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->OPERATION_CANCELLED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v2, "Operation canceled by customer"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundle(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->onError(Landroid/os/Bundle;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$2;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
