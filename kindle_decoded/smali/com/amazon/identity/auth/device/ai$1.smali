.class Lcom/amazon/identity/auth/device/ai$1;
.super Lcom/amazon/dcp/sso/IWebserviceCallback$Stub;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/ai;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/t;Lcom/amazon/identity/auth/device/ej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cE:Lcom/amazon/identity/auth/device/t;

.field final synthetic cH:Lcom/amazon/identity/auth/device/ai;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ai;Lcom/amazon/identity/auth/device/t;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ai$1;->cH:Lcom/amazon/identity/auth/device/ai;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ai$1;->cE:Lcom/amazon/identity/auth/device/t;

    invoke-direct {p0}, Lcom/amazon/dcp/sso/IWebserviceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationFailed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ai$1;->cE:Lcom/amazon/identity/auth/device/t;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/t;->onAuthenticationFailed()V

    return-void
.end method

.method public onBadResponse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ai$1;->cE:Lcom/amazon/identity/auth/device/t;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/t;->onBadResponse()V

    return-void
.end method

.method public onInvalidRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ai$1;->cE:Lcom/amazon/identity/auth/device/t;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/t;->onInvalidRequest()V

    return-void
.end method

.method public onNetworkError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ai$1;->cE:Lcom/amazon/identity/auth/device/t;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/t;->onNetworkError()V

    return-void
.end method

.method public onResponseReceived(JLjava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/ai;->a(JLjava/util/Map;[B)Lcom/amazon/identity/auth/device/ky;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ai$1;->cE:Lcom/amazon/identity/auth/device/t;

    invoke-interface {p2, p1}, Lcom/amazon/identity/auth/device/t;->c(Lcom/amazon/identity/auth/device/ky;)V

    return-void
.end method
