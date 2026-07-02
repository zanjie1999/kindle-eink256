.class public Lcom/amazon/identity/auth/device/api/TokenManagement;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field public static final ERROR_INVALID_PARAMETER:I = 0x1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACCESS_TOKEN_FROM_CACHE:Ljava/lang/String; = "access_token_from_cache"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ACCOUNT_RECOVER_CONTEXT_BUNDLE:Ljava/lang/String; = "com.amazon.identity.mobi.account.recover.context"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "com.amazon.dcp.sso.ErrorCode"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "com.amazon.dcp.sso.ErrorMessage"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.TokenManagement"

.field public static final VALUE_KEY:Ljava/lang/String; = "value_key"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field private static final fJ:Ljava/lang/String; = "TokenManagement"


# instance fields
.field gJ:Lcom/amazon/identity/auth/device/he;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 111
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/TokenManagement;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized bk()Lcom/amazon/identity/auth/device/he;
    .locals 1

    monitor-enter p0

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/TokenManagement;->gJ:Lcom/amazon/identity/auth/device/he;

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/TokenManagement;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/hf;->af(Landroid/content/Context;)Lcom/amazon/identity/auth/device/he;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/TokenManagement;->gJ:Lcom/amazon/identity/auth/device/he;

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/TokenManagement;->gJ:Lcom/amazon/identity/auth/device/he;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getCookies(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "TokenManagement:GetCookies"

    .line 292
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v6

    .line 293
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/TokenManagement;->mContext:Landroid/content/Context;

    const-string v1, "Time"

    invoke-virtual {v6, v0, v1}, Lcom/amazon/identity/auth/device/ej;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 294
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/TokenManagement;->bk()Lcom/amazon/identity/auth/device/he;

    move-result-object v1

    .line 297
    invoke-static {v6, v0, p4}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 294
    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/he;->f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public getCookiesForActor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "TokenManagement:GetCookiesForActor"

    .line 516
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v7

    .line 517
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/TokenManagement;->mContext:Landroid/content/Context;

    const-string v1, "Time"

    invoke-virtual {v7, v0, v1}, Lcom/amazon/identity/auth/device/ej;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 518
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/TokenManagement;->bk()Lcom/amazon/identity/auth/device/he;

    move-result-object v1

    invoke-static {v7, v0, p5}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/amazon/identity/auth/device/he;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "TokenManagement:GetToken"

    .line 194
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v6

    .line 195
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/TokenManagement;->mContext:Landroid/content/Context;

    const-string v1, "Time"

    invoke-virtual {v6, v0, v1}, Lcom/amazon/identity/auth/device/ej;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 196
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/TokenManagement;->bk()Lcom/amazon/identity/auth/device/he;

    move-result-object v1

    .line 199
    invoke-static {v6, v0, p4}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 196
    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/he;->e(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public getTokenForActor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 10
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "TokenManagement:GetTokenForActor"

    .line 446
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v9

    move-object v0, p0

    .line 447
    iget-object v1, v0, Lcom/amazon/identity/auth/device/api/TokenManagement;->mContext:Landroid/content/Context;

    const-string v2, "Time"

    invoke-virtual {v9, v1, v2}, Lcom/amazon/identity/auth/device/ej;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 448
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/TokenManagement;->bk()Lcom/amazon/identity/auth/device/he;

    move-result-object v2

    move-object/from16 v3, p7

    .line 454
    invoke-static {v9, v1, v3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v8

    move-object v1, v2

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    .line 448
    invoke-interface/range {v1 .. v9}, Lcom/amazon/identity/auth/device/he;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v1

    return-object v1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 538
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    .line 539
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p4, p5, p2}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo p2, "value_key"

    .line 540
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public invalidateCookies(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "TokenManagement:InvalidateCookies"

    .line 324
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v6

    .line 325
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/TokenManagement;->mContext:Landroid/content/Context;

    const-string v1, "Time"

    invoke-virtual {v6, v0, v1}, Lcom/amazon/identity/auth/device/ej;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 326
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/TokenManagement;->bk()Lcom/amazon/identity/auth/device/he;

    move-result-object v1

    .line 329
    invoke-static {v6, v0, p4}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 326
    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/he;->g(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public peekCookies(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "TokenManagement:PeekCookies"

    .line 389
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v6

    .line 390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/TokenManagement;->mContext:Landroid/content/Context;

    const-string v1, "Time"

    invoke-virtual {v6, v0, v1}, Lcom/amazon/identity/auth/device/ej;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 397
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "com.amazon.identity.auth.device.internal.cookiekeys.options.ignorefresh"

    .line 398
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 399
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/TokenManagement;->bk()Lcom/amazon/identity/auth/device/he;

    move-result-object v1

    .line 402
    invoke-static {v6, v0, p3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    .line 399
    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/he;->f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1

    .line 393
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/TokenManagement;->TAG:Ljava/lang/String;

    const-string p2, "Directed Id given was null. Cannot peek cookies for a deregistered device"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
