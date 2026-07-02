.class Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eA:Landroid/os/Bundle;

.field final synthetic eZ:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;Landroid/os/Bundle;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1$1;->eZ:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1$1;->eA:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "AuthChallengeHandleActivity"

    const-string v1, "Successfully get actor token with failure context!"

    .line 256
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1$1;->eZ:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;->eY:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fc:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1$1;->eA:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->onSuccess(Landroid/os/Bundle;)V

    .line 258
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1$1;->eZ:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3$1;->eY:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity$3;->eX:Lcom/amazon/identity/auth/device/activity/AuthChallengeHandleActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
