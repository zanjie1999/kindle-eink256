.class Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;
.super Lcom/amazon/identity/auth/device/df;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->a([BLjava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/bl;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic W:Lcom/amazon/identity/auth/device/bl;

.field final synthetic fK:Lcom/amazon/identity/auth/device/ms;

.field final synthetic fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

.field final synthetic fR:[B

.field final synthetic fS:Landroid/os/Bundle;

.field final synthetic k:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;Landroid/content/Context;Landroid/content/Intent;Lcom/amazon/identity/auth/device/ms;[BLcom/amazon/identity/auth/device/bl;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->fK:Lcom/amazon/identity/auth/device/ms;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->fR:[B

    iput-object p6, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->W:Lcom/amazon/identity/auth/device/bl;

    iput-object p7, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->fS:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->k:Lcom/amazon/identity/auth/device/api/Callback;

    iput-object p9, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->H:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/amazon/identity/auth/device/df;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public serviceDisconnected()V
    .locals 3

    .line 382
    sget-object v0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v1, "AuthenticatedRequestService is disconnected. It\'s probably crashed."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->W:Lcom/amazon/identity/auth/device/bl;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    return-void
.end method

.method public useService(Landroid/os/IBinder;)V
    .locals 6

    .line 345
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->fK:Lcom/amazon/identity/auth/device/ms;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 347
    sget-object v0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->fJ:Ljava/lang/String;

    const-string/jumbo v1, "signCorpusByDirectedIdWrapper"

    .line 348
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->fR:[B

    .line 1392
    invoke-static {p1}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;

    move-result-object p1

    .line 1395
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->av:Lcom/amazon/identity/auth/device/co;

    sget-object v3, Lcom/amazon/identity/auth/device/features/Feature;->DirectedIdSupported:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "SHA256WithRSA"

    if-eqz v2, :cond_0

    .line 1397
    :try_start_1
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->H:Ljava/lang/String;

    invoke-interface {p1, v3, v2, v1}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;->signCorpusByDirectedId(Ljava/lang/String;Ljava/lang/String;[B)Lcom/amazon/dcp/sso/ReturnValueOrError;

    move-result-object p1

    goto :goto_1

    .line 1401
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->H:Ljava/lang/String;

    .line 1402
    invoke-static {v2, v4}, Lcom/amazon/identity/auth/device/hr;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1403
    iget-object v5, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    if-eqz v2, :cond_2

    .line 1404
    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1405
    :cond_2
    invoke-interface {p1, v3, v5, v4, v1}, Lcom/amazon/dcp/sso/IRequestAuthenticationMethod;->signCorpus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/amazon/dcp/sso/ReturnValueOrError;

    move-result-object p1

    .line 1408
    :goto_1
    sget-object v1, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->fQ:Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->W:Lcom/amazon/identity/auth/device/bl;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->fR:[B

    iget-object v4, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->fS:Landroid/os/Bundle;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->a(Lcom/amazon/dcp/sso/ReturnValueOrError;Lcom/amazon/identity/auth/device/bl;[BLandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    :goto_2
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 374
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/df;->unbind()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 366
    :try_start_2
    sget-object v1, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v2, "Unknown error during signCorpus execution."

    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->W:Lcom/amazon/identity/auth/device/bl;

    const/4 v2, 0x5

    .line 369
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-static {v1, v2, p1}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v1, "Cannot receive corpus authentication from dcp! Connection to DCP has been lost."

    .line 359
    sget-object v2, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;->W:Lcom/amazon/identity/auth/device/bl;

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 373
    :goto_3
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 374
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/df;->unbind()V

    .line 375
    throw p1
.end method
