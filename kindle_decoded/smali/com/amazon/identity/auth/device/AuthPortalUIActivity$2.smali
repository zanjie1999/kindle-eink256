.class Lcom/amazon/identity/auth/device/AuthPortalUIActivity$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eA:Landroid/os/Bundle;

.field final synthetic ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

.field final synthetic ez:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;Landroid/os/Bundle;)V
    .locals 0

    .line 2461
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$2;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$2;->ez:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$2;->eA:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2466
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$2;->ez:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    if-eqz v0, :cond_0

    .line 2468
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$2;->eA:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->onSuccess(Landroid/os/Bundle;)V

    .line 2470
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$2;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->finish()V

    return-void
.end method
