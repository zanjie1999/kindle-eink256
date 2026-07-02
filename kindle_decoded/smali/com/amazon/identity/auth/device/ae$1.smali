.class Lcom/amazon/identity/auth/device/ae$1;
.super Lcom/amazon/identity/auth/device/ke;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/ae;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic cA:Lcom/amazon/identity/auth/device/ae;

.field final synthetic cz:Ljava/lang/String;

.field final synthetic k:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ae;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ae$1;->cA:Lcom/amazon/identity/auth/device/ae;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ae$1;->k:Lcom/amazon/identity/auth/device/api/Callback;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/ae$1;->cz:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/ae$1;->H:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ke;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 12

    .line 148
    invoke-static {}, Lcom/amazon/identity/auth/device/ae;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Completed the rename device request"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    check-cast p1, Lcom/amazon/identity/auth/device/lf;

    if-nez p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ae$1;->cA:Lcom/amazon/identity/auth/device/ae;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ae$1;->k:Lcom/amazon/identity/auth/device/api/Callback;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v4, 0x7

    const-string v3, "Received a null response from the server"

    const-string v5, " Unrecognized response from server"

    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/ae;->a(Lcom/amazon/identity/auth/device/ae;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/lf;->ie()I

    move-result v10

    .line 163
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/lf;->bE()Ljava/lang/String;

    move-result-object v11

    .line 164
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/lf;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v8

    .line 165
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/lf;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    if-nez v10, :cond_1

    .line 168
    invoke-static {}, Lcom/amazon/identity/auth/device/ae;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successfully completed the rename device request"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ae$1;->cA:Lcom/amazon/identity/auth/device/ae;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/ae$1;->cz:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ae;->a(Lcom/amazon/identity/auth/device/ae;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ae$1;->cA:Lcom/amazon/identity/auth/device/ae;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ae;->a(Lcom/amazon/identity/auth/device/ae;)Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ae$1;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v11}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/amazon/identity/auth/device/ae;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RenameDevice completed successfully."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics;->eA()V

    .line 173
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ae$1;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-static {v11}, Lcom/amazon/identity/auth/device/ae;->aa(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void

    .line 178
    :cond_1
    iget-object v6, p0, Lcom/amazon/identity/auth/device/ae$1;->cA:Lcom/amazon/identity/auth/device/ae;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/ae$1;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-static/range {v6 .. v11}, Lcom/amazon/identity/auth/device/ae;->a(Lcom/amazon/identity/auth/device/ae;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ae$1;->cA:Lcom/amazon/identity/auth/device/ae;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ae$1;->k:Lcom/amazon/identity/auth/device/api/Callback;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    .line 118
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "Network failure performing rename device request"

    .line 116
    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/ae;->a(Lcom/amazon/identity/auth/device/ae;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ae$1;->cA:Lcom/amazon/identity/auth/device/ae;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ae$1;->k:Lcom/amazon/identity/auth/device/api/Callback;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "A parsing error occurred while performing the rename device request"

    const/4 v4, 0x4

    const-string v5, "Parsing failure performing rename device request"

    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/ae;->a(Lcom/amazon/identity/auth/device/ae;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ae$1;->cA:Lcom/amazon/identity/auth/device/ae;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ae$1;->k:Lcom/amazon/identity/auth/device/api/Callback;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->AUTHENTICATION_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 129
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "Authentication failure performing rename device request"

    .line 127
    invoke-static/range {v0 .. v5}, Lcom/amazon/identity/auth/device/ae;->a(Lcom/amazon/identity/auth/device/ae;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
