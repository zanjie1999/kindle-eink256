.class Lcom/amazon/identity/auth/device/AuthPortalUIActivity$13;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->k(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eK:Landroid/os/Bundle;

.field final synthetic eL:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

.field final synthetic ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V
    .locals 0

    .line 2402
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$13;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$13;->eK:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$13;->eL:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2407
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$13;->eK:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2409
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$13;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->finish()V

    return-void

    .line 2413
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$13;->eL:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    if-eqz v1, :cond_1

    .line 2415
    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->onError(Landroid/os/Bundle;)V

    .line 2417
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$13;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->G(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    return-void
.end method
