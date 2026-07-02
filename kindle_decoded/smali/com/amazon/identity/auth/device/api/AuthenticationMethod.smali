.class public abstract Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/AuthenticationMethod$GetAuthenticationHeadersForRequestError;
    }
.end annotation


# static fields
.field public static final KEY_AUTH_HEADERS:Ljava/lang/String; = "auth.headers"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.AuthenticationMethod"


# instance fields
.field final av:Lcom/amazon/identity/auth/device/co;

.field final bM:Ljava/lang/String;

.field final dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field final fH:Ljava/lang/String;

.field final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V
    .locals 0

    .line 115
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 125
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 126
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bM:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->fH:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    .line 129
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 130
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dV()Lcom/amazon/identity/auth/device/co;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->av:Lcom/amazon/identity/auth/device/co;

    return-void

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must Specify an Authentication Type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_code_key"

    .line 308
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "error_message_key"

    .line 309
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 313
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method static a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 300
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {p1, p2, p3}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bd()V
    :try_end_0
    .catch Lcom/amazon/identity/auth/request/NoCredentialsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-nez p1, :cond_0

    const-string p1, "The serviceUri cannot be null, please check your parameters!"

    .line 3288
    invoke-static {p3, v2, p1, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    return v0

    .line 256
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "The verb of the request cannot be null, please check your parameters!"

    .line 4288
    invoke-static {p3, v2, p1, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    return v0

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->fH:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Please specify an authentication type!"

    .line 5288
    invoke-static {p3, v2, p1, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    return v0

    .line 272
    :cond_2
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->fH:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->parse(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/AuthenticationType;

    move-result-object p1

    .line 274
    sget-object p2, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x5

    const-string p2, "Currently MAP just support ADP and OAuh authentication type for this API. Please check your authentication type."

    .line 6288
    invoke-static {p3, p1, p2, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x2

    const-string p2, "The given directedId does not exist!"

    .line 2288
    invoke-static {p3, p1, p2, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/bl;ILjava/lang/String;Landroid/os/Bundle;)V

    return v0
.end method

.method private bd()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/request/NoCredentialsException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bM:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 428
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->fH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 431
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v1, "OAuth does not support anonymous credentials"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance v0, Lcom/amazon/identity/auth/request/NoCredentialsException;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/request/NoCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 446
    :cond_2
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v1, "The account that this AuthenticationMethod with is no longer registered"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bM:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 448
    new-instance v0, Lcom/amazon/identity/auth/request/NoCredentialsException;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/request/NoCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Lcom/amazon/identity/auth/device/jp;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->bd()V

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAuthenticationBundle"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 140
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->b(Lcom/amazon/identity/auth/device/jp;)Landroid/os/Bundle;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    if-eqz v1, :cond_3

    .line 1321
    invoke-static {v1}, Lcom/amazon/identity/auth/device/jm;->M(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    .line 1322
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1324
    sget-object p1, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 1328
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1330
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/amazon/identity/auth/device/jp;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1332
    sget-object v2, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1333
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Overridding header %s because it is needed for authentication"

    .line 1332
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1335
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lcom/amazon/identity/auth/device/jp;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    .line 145
    :cond_3
    new-instance p1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;

    const-string v0, "Cannot authenticate because we received no token, the getToken call failed"

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Lcom/amazon/identity/auth/device/jp;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    invoke-static {}, Lcom/amazon/identity/auth/device/fl;->eD()V

    if-eqz p1, :cond_3

    .line 361
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/jp;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 362
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/jp;->getHttpVerb()Ljava/lang/String;

    move-result-object v2

    .line 365
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticationType;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->fH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/jp;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 368
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/jp;->getBody()[B

    move-result-object p1

    move-object v4, p1

    move-object v3, v0

    goto :goto_0

    .line 372
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v3, p1

    move-object v4, v0

    .line 378
    :goto_0
    :try_start_0
    new-instance v5, Lcom/amazon/identity/auth/device/bl;

    const/4 p1, 0x0

    invoke-direct {v5, p1}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    move-object v0, p0

    .line 379
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->getAuthenticationBundle(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/bl;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 386
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1

    .line 382
    :cond_1
    new-instance p1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;

    const-string v0, "The future result is null!"

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 412
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v1, "ExecutionException happened when try to get authentication bundle result"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExecutionException happened when try to get authentication bundle. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    .line 406
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 407
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v1, "InterruptedException happened when try to get authentication bundle result"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InterruptedException happened when try to get authentication bundle. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception p1

    .line 391
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.amazon.identity.mobi.account.recover.context"

    .line 392
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Error happened when try to get authentication bundle"

    if-eqz v0, :cond_2

    .line 395
    sget-object p1, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->TAG:Ljava/lang/String;

    const-string v2, "Error happened when try to get authentication bundle. Account needs to be recovered."

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance p1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;

    invoke-direct {p1, v1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    throw p1

    .line 398
    :cond_2
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error happened when try to get authentication bundle, the error message is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ht;->J(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    new-instance p1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;

    invoke-direct {p1, v1}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_3
    new-instance p1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;

    const-string v0, "The request cannot be null!"

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AuthenticationFailureIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract getAuthenticationBundle(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/bl;)Lcom/amazon/identity/auth/device/api/MAPFuture;
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
.end method

.method public getAuthenticationHeadersForRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            "[B",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v6, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v6, p5}, Lcom/amazon/identity/auth/device/bl;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 199
    invoke-direct {p0, p1, p2, v6}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;)Z

    move-result p5

    if-nez p5, :cond_0

    return-object v6

    .line 206
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    const-string v0, "getAuthenticationBundle"

    invoke-static {p5, v0}, Lcom/amazon/identity/auth/device/mn;->aA(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    .line 210
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->getAuthenticationBundle(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/bl;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :goto_0
    invoke-virtual {p5}, Lcom/amazon/identity/auth/device/ms;->stop()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 214
    :catch_0
    :try_start_1
    sget-object p1, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->TAG:Ljava/lang/String;

    const-string p2, "Error happened when trying to sign the request components and get the http headers back!"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v6

    .line 218
    :goto_2
    invoke-virtual {p5}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 219
    throw p1
.end method
