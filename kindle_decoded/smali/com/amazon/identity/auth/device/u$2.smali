.class Lcom/amazon/identity/auth/device/u$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Lcom/amazon/identity/auth/device/s;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic bA:Lcom/amazon/identity/auth/device/u;

.field final synthetic by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/u;Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/amazon/identity/auth/device/u$2;->bA:Lcom/amazon/identity/auth/device/u;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/u$2;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/u$2;->H:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/amazon/identity/auth/device/ky;)V
    .locals 3

    .line 552
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Getting response for the child application registration. Storing results."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$2;->bA:Lcom/amazon/identity/auth/device/u;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u$2;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/u$2;->H:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/u;Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Lcom/amazon/identity/auth/device/ky;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 558
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteException when credentials was received for registerChildApplication"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 570
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authentication error when registering the child app."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$2;->bA:Lcom/amazon/identity/auth/device/u;

    const-string v1, "Authentication error during register"

    .line 572
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/u;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lcom/amazon/identity/auth/device/u$2;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    invoke-interface {v1, v0}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 578
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteException during authentication failure callback for registerChildApplication"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBadResponse()V
    .locals 3

    .line 606
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bad response when registering the child app."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$2;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    const/4 v1, 0x5

    const-string v2, "Received bad response"

    invoke-interface {v0, v1, v2}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 612
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteException during invalid response callback for registerChildApplication"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInvalidRequest()V
    .locals 3

    .line 621
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bad request when registering the child app."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$2;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    const/16 v1, 0x8

    const-string v2, "Received bad request"

    invoke-interface {v0, v1, v2}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 626
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteException during bad request callback for registerChildApplication"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNetworkError()V
    .locals 3

    .line 588
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network error when registering the child app."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NetworkError13:DMSSubAuthenticator"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 592
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$2;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    const/4 v1, 0x3

    const-string v2, "Network error"

    invoke-interface {v0, v1, v2}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 597
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteException during network failure callback for registerChildApplication"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
