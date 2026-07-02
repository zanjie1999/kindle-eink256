.class Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;
.super Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/ADPCorpusSigningAuthenticationMethod;


# static fields
.field static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.CentralDcpAuthenticationMethod"

.field static final fJ:Ljava/lang/String; = "CentralDcpAuthenticationMethod"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a([BLjava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "You cannot authenticate this corpus on the main thread!"

    .line 294
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->aE(Ljava/lang/String;)V

    .line 296
    new-instance v5, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v5, p4}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    if-nez p1, :cond_0

    .line 299
    sget-object p1, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {v5, p1}, Lcom/amazon/identity/auth/device/hm;->b(Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)V

    return-object v5

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->fH:Ljava/lang/String;

    .line 303
    sget-object v1, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 305
    sget-object p3, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 307
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->getValue()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x1

    aput-object v0, p1, p2

    const-string p2, "Only support authentication type: %s. Cannot sign the corpus with invalid authentication type: %s"

    .line 306
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 309
    sget-object p2, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x3

    .line 310
    invoke-static {v5, p2, p1}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    return-object v5

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 315
    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->a([BLjava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/bl;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method private a([BLjava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/bl;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/bl;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p4

    .line 325
    iget-object v0, v10, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    .line 326
    invoke-static {v0}, Lcom/amazon/identity/auth/device/o;->d(Landroid/content/Context;)Lcom/amazon/identity/auth/device/o;

    move-result-object v0

    const/4 v12, 0x1

    if-nez v0, :cond_0

    const-string v0, "A Central device credential location cannot be found."

    .line 330
    sget-object v1, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {v11, v12, v0}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    return-object v11

    .line 335
    :cond_0
    sget-object v1, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->fJ:Ljava/lang/String;

    const-string v2, "bind"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v4

    .line 337
    new-instance v13, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;

    iget-object v2, v10, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    .line 339
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/o;->r()Landroid/content/Intent;

    move-result-object v3

    move-object v0, v13

    move-object v1, p0

    move-object v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$2;-><init>(Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;Landroid/content/Context;Landroid/content/Intent;Lcom/amazon/identity/auth/device/ms;[BLcom/amazon/identity/auth/device/bl;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v13}, Lcom/amazon/identity/auth/device/df;->call()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to bind to AuthenticatedRequestService."

    .line 416
    sget-object v1, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {v11, v12, v0}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    :cond_1
    return-object v11
.end method

.method private aE(Ljava/lang/String;)V
    .locals 5

    .line 274
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 275
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    return-void

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Lcom/amazon/dcp/sso/ReturnValueOrError;Lcom/amazon/identity/auth/device/bl;[BLandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "Connection to SSO timeout."

    .line 432
    sget-object p3, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    return-void

    .line 437
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/dcp/sso/ReturnValueOrError;->isError()Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    invoke-virtual {p1}, Lcom/amazon/dcp/sso/ReturnValueOrError;->getResponse()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p3, "token"

    .line 7500
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "digest"

    .line 7501
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7502
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "adp_token"

    .line 7503
    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "adp_signature"

    .line 7504
    invoke-virtual {p4, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7505
    invoke-virtual {p2, p4}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V

    return-void

    .line 443
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/dcp/sso/ReturnValueOrError;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-virtual {p1}, Lcom/amazon/dcp/sso/ReturnValueOrError;->getResponseCode()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p4, 0x4

    if-eq p1, p4, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_2

    const/4 p1, 0x5

    .line 471
    invoke-static {p2, p1, v1}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    return-void

    .line 460
    :cond_2
    invoke-static {p2, v0, v1}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    return-void

    .line 465
    :cond_3
    invoke-static {p2, p3, v1}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    return-void

    :cond_4
    if-eqz p4, :cond_5

    const/4 p1, 0x0

    const-string v0, "UseFallBackCredentials"

    .line 448
    invoke-virtual {p4, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8479
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    .line 8481
    new-instance v0, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$3;

    invoke-direct {v0, p0, p2}, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$3;-><init>(Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;Lcom/amazon/identity/auth/device/bl;)V

    invoke-direct {p0, p3, p1, p4, v0}, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->a([BLjava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void

    .line 454
    :cond_5
    invoke-static {p2, v2, v1}, Lcom/amazon/identity/auth/device/hm;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;)V

    return-void
.end method

.method protected getAuthenticationBundle(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/bl;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            "[B",
            "Lcom/amazon/identity/auth/device/bl;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    const-string v0, "You cannot authenticate this request on the main thread!"

    .line 67
    invoke-direct {v10, v0}, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->aE(Ljava/lang/String;)V

    .line 69
    iget-object v0, v10, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    .line 70
    invoke-static {v0}, Lcom/amazon/identity/auth/device/o;->d(Landroid/content/Context;)Lcom/amazon/identity/auth/device/o;

    move-result-object v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_8

    .line 81
    new-instance v14, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v14}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 82
    sget-object v1, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->fJ:Ljava/lang/String;

    const-string v2, "bind"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v4

    .line 84
    new-instance v15, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;

    iget-object v2, v10, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    .line 86
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/o;->r()Landroid/content/Intent;

    move-result-object v3

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object v9, v14

    invoke-direct/range {v0 .. v9}, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod$1;-><init>(Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;Landroid/content/Context;Landroid/content/Intent;Lcom/amazon/identity/auth/device/ms;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLjava/util/concurrent/atomic/AtomicReference;)V

    .line 176
    sget-wide v0, Lcom/amazon/identity/auth/device/jm;->rw:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "GetAuthenticationParameters"

    invoke-virtual {v15, v0, v1, v2}, Lcom/amazon/identity/auth/device/bk;->run(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/dcp/sso/ReturnValueOrError;

    .line 2191
    invoke-static {}, Lcom/amazon/identity/auth/device/fl;->eD()V

    if-eqz v0, :cond_7

    .line 2200
    invoke-virtual {v0}, Lcom/amazon/dcp/sso/ReturnValueOrError;->isError()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2202
    invoke-virtual {v0}, Lcom/amazon/dcp/sso/ReturnValueOrError;->getResponse()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v11, :cond_0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v11, v0}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V

    :cond_0
    return-object v11

    .line 2205
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/dcp/sso/ReturnValueOrError;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    .line 2206
    invoke-virtual {v0}, Lcom/amazon/dcp/sso/ReturnValueOrError;->getResponseCode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v0, 0x3

    if-eq v2, v0, :cond_4

    const/4 v0, 0x5

    const/4 v3, 0x6

    if-eq v2, v0, :cond_3

    if-eq v2, v3, :cond_2

    .line 7288
    invoke-static {v11, v3, v1, v13}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4288
    :cond_2
    invoke-static {v11, v12, v1, v13}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2240
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5288
    :cond_3
    invoke-static {v11, v3, v1, v13}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2247
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x4

    .line 6288
    invoke-static {v11, v0, v1, v13}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2211
    :cond_5
    invoke-virtual {v0}, Lcom/amazon/dcp/sso/ReturnValueOrError;->getResponse()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "com.amazon.identity.mobi.account.recover.context"

    .line 2214
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2217
    invoke-static {v0}, Lcom/amazon/identity/auth/device/fl;->B(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v2

    .line 2221
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/fl;->eC()Landroid/os/Bundle;

    move-result-object v2

    .line 2218
    invoke-static {v11, v3, v1, v2}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2222
    sget-object v2, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v3, "Account is in bad state, throwing AccountNeedsRecoveryException to help account recovery"

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    new-instance v2, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;

    invoke-direct {v2, v1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    throw v2

    .line 2227
    :cond_6
    iget-object v0, v10, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ii;->u(Landroid/content/Context;Ljava/lang/String;)V

    .line 3288
    invoke-static {v11, v3, v1, v13}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2233
    new-instance v0, Lcom/amazon/identity/auth/request/NoCredentialsException;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/request/NoCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v0, "Connection to SSO timeout"

    .line 2288
    invoke-static {v11, v12, v0, v13}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2197
    new-instance v1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string v0, "A Central device credential location cannot be found"

    .line 1288
    invoke-static {v11, v12, v0, v13}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 78
    new-instance v1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public signCorpus([BLandroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bM:Ljava/lang/String;

    .line 286
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/identity/auth/device/api/CentralDcpAuthenticationMethod;->a([BLjava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method
