.class Lcom/amazon/identity/auth/device/u$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic bA:Lcom/amazon/identity/auth/device/u;

.field final synthetic by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

.field final synthetic bz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/u;Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/amazon/identity/auth/device/u$1;->bA:Lcom/amazon/identity/auth/device/u;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/u$1;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/u$1;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/u$1;->H:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/u$1;->bz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$1;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$1;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    invoke-interface {v0, p1, p2}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 342
    iget-object p1, p0, Lcom/amazon/identity/auth/device/u$1;->N:Lcom/amazon/identity/auth/device/ej;

    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ej;->ea()V

    :cond_0
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$1;->bA:Lcom/amazon/identity/auth/device/u;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u$1;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/u$1;->bz:Ljava/lang/String;

    .line 352
    invoke-static {v0, p1, v1, v2}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/u;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$1;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    invoke-interface {v0, p1}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 356
    iget-object p1, p0, Lcom/amazon/identity/auth/device/u$1;->N:Lcom/amazon/identity/auth/device/ej;

    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ej;->ea()V

    :cond_0
    return-void
.end method
