.class Lcom/amazon/identity/auth/device/hb$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/hb;->a([Ljava/lang/String;Lcom/amazon/identity/auth/device/hb$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic pF:Ljava/util/Stack;

.field final synthetic pG:Lcom/amazon/identity/auth/device/hb$a;

.field final synthetic pH:Lcom/amazon/identity/auth/device/hb;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/hb;Ljava/util/Stack;Lcom/amazon/identity/auth/device/hb$a;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/identity/auth/device/hb$1;->pH:Lcom/amazon/identity/auth/device/hb;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/hb$1;->pF:Ljava/util/Stack;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/hb$1;->pG:Lcom/amazon/identity/auth/device/hb$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "authtoken"

    .line 171
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hb$1;->pF:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb$1;->pG:Lcom/amazon/identity/auth/device/hb$a;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$TokenError;->FETCH_TOKEN_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$TokenError;

    invoke-interface {v0, v1, p1}, Lcom/amazon/identity/auth/device/hb$a;->a(Lcom/amazon/identity/auth/device/api/MAPError;Landroid/os/Bundle;)V

    return-void

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/hb$1;->pH:Lcom/amazon/identity/auth/device/hb;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/amazon/identity/auth/device/hb;->a(Lcom/amazon/identity/auth/device/hb;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/hb$b;

    .line 186
    iget-object p1, p0, Lcom/amazon/identity/auth/device/hb$1;->pH:Lcom/amazon/identity/auth/device/hb;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb$1;->pH:Lcom/amazon/identity/auth/device/hb;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hb;->a(Lcom/amazon/identity/auth/device/hb;)Landroid/accounts/Account;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb$1;->pF:Ljava/util/Stack;

    invoke-static {p1, v0, p0}, Lcom/amazon/identity/auth/device/hb;->a(Lcom/amazon/identity/auth/device/hb;Ljava/util/Stack;Landroid/accounts/AccountManagerCallback;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 189
    iget-object p1, p0, Lcom/amazon/identity/auth/device/hb$1;->pG:Lcom/amazon/identity/auth/device/hb$a;

    invoke-interface {p1}, Lcom/amazon/identity/auth/device/hb$a;->v()V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 249
    sget-object v0, Lcom/amazon/identity/auth/device/hb;->TAG:Ljava/lang/String;

    const-string v1, "Generic error while fetching Tokens"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb$1;->pG:Lcom/amazon/identity/auth/device/hb$a;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An internal error occurred while fetching token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 256
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/hb$a;->c(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    .line 235
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb$1;->pG:Lcom/amazon/identity/auth/device/hb$a;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalArgumentException occurred with message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    .line 239
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/hb$a;->c(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :catch_2
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hb$1;->pH:Lcom/amazon/identity/auth/device/hb;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/hb;->b(Lcom/amazon/identity/auth/device/hb;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/ii;->u(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "NetworkError7:TokenCache"

    .line 221
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/amazon/identity/auth/device/hb$1;->pG:Lcom/amazon/identity/auth/device/hb$a;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network Error occurred with message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    .line 225
    invoke-interface {v1, v2, p1, v3, v0}, Lcom/amazon/identity/auth/device/hb$a;->c(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :catch_3
    move-exception p1

    .line 207
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb$1;->pG:Lcom/amazon/identity/auth/device/hb$a;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authentication Exception occurred with message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 211
    invoke-virtual {p1}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/hb$a;->c(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :catch_4
    move-exception p1

    .line 197
    iget-object v0, p0, Lcom/amazon/identity/auth/device/hb$1;->pG:Lcom/amazon/identity/auth/device/hb$a;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->OPERATION_CANCELLED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Operation was cancelled with message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 201
    invoke-virtual {p1}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/amazon/identity/auth/device/hb$a;->c(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
