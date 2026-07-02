.class Lcom/amazon/identity/auth/device/u$4;
.super Lcom/amazon/identity/auth/device/ke;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/u;->b(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)V
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

    .line 888
    iput-object p1, p0, Lcom/amazon/identity/auth/device/u$4;->bA:Lcom/amazon/identity/auth/device/u;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/u$4;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/u$4;->H:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ke;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 942
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update credential request succeeded"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :try_start_0
    check-cast p1, Lcom/amazon/identity/auth/device/ky;

    .line 947
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$4;->bA:Lcom/amazon/identity/auth/device/u;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u$4;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/u$4;->H:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/u;Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Lcom/amazon/identity/auth/device/ky;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 951
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteException during update credentials call"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 3

    .line 894
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update SubAuthenticator Credentials onNetworkFailure"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NetworkError14:DMSSubAuthenticator"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 897
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$4;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    const/4 v1, 0x3

    const-string v2, "Network failure"

    invoke-interface {v0, v1, v2}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 902
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteException during network failure callback for updateCredentials"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 3

    .line 929
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update SubAuthenticator Credentials onParseError"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$4;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    const/4 v1, 0x5

    const-string v2, "Received bad response"

    invoke-interface {v0, v1, v2}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 935
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteException during invalid response callback for updateCredentials"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 911
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authentication failure when updating the credentials for child app."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$4;->bA:Lcom/amazon/identity/auth/device/u;

    const-string v1, "Authentication error during update credentials"

    .line 914
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/u;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 916
    iget-object v1, p0, Lcom/amazon/identity/auth/device/u$4;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    invoke-interface {v1, v0}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 920
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteException during authentication failure callback for updateCredentials"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
