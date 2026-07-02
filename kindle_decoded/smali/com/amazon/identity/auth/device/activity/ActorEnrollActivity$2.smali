.class Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity;->k(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eK:Landroid/os/Bundle;

.field final synthetic eQ:Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity$2;->eQ:Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity$2;->eK:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity$2;->eK:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity$2;->eQ:Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fc:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->onError(Landroid/os/Bundle;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity$2;->eQ:Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->fc:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->OPERATION_CANCELLED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v2, 0x1

    const-string v3, "Operation canceled by customer"

    invoke-static {v1, v3, v2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->onError(Landroid/os/Bundle;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity$2;->eQ:Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
