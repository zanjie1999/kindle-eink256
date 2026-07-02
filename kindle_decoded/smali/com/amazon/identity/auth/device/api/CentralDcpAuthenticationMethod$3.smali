.class Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$3;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic W:Lcom/amazon/identity/auth/device/bl;

.field final synthetic fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;Lcom/amazon/identity/auth/device/bl;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$3;->fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$3;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$3;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$3;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
