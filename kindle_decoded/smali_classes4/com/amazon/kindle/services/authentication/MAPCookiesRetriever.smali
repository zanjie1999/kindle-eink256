.class public Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;
.super Ljava/lang/Object;
.source "MAPCookiesRetriever.java"


# static fields
.field private static final GET_TIMEOUT_MS:I = 0x2710

.field private static final NUM_GET_RETRIES:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final tokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/amazon/identity/auth/device/api/TokenManagement;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->tokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private fetchIdentityCookies(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const-string v0, "Retrieving identity cookies failed"

    .line 97
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {p2, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->tokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;

    new-instance v5, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever$1;

    invoke-direct {v5, p0}, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever$1;-><init>(Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;)V

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getCookies(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v3

    const-wide/16 v5, 0x2710

    .line 126
    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v5, v6, v7}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "com.amazon.identity.auth.device.api.cookiekeys.all"

    .line 127
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieved identity cookies for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    .line 138
    sget-object v5, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 136
    sget-object v5, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v3

    .line 133
    sget-object v5, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catch_3
    move-exception v3

    .line 131
    sget-object v5, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_3
    return-object v4

    .line 98
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "identity cookies shouldn\'t be fetched in main thread"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getIdentityCookies(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 76
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->fetchIdentityCookies(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->TAG:Ljava/lang/String;

    const-string p2, "Try to get identity cookies for empty account or pfm, this is probably not sign in"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
