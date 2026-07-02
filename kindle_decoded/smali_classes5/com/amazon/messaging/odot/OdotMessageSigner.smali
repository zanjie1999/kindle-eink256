.class final Lcom/amazon/messaging/odot/OdotMessageSigner;
.super Ljava/lang/Object;
.source "OdotMessageSigner.java"

# interfaces
.implements Lcom/amazon/messaging/odot/IOdotMessageSigner;


# static fields
.field private static final DUMMY_CORPUS:[B

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/messaging/odot/IOdotMessageSigner;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/messaging/odot/OdotMessageSigner;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/OdotMessageSigner;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 26
    sput-object v0, Lcom/amazon/messaging/odot/OdotMessageSigner;->DUMMY_CORPUS:[B

    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/amazon/messaging/odot/OdotMessageSigner;->instance:Lcom/amazon/messaging/odot/IOdotMessageSigner;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/messaging/odot/OdotMessageSigner;->context:Landroid/content/Context;

    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/messaging/odot/IOdotMessageSigner;
    .locals 2

    const-class v0, Lcom/amazon/messaging/odot/OdotMessageSigner;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/amazon/messaging/odot/OdotMessageSigner;->instance:Lcom/amazon/messaging/odot/IOdotMessageSigner;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/amazon/messaging/odot/OdotMessageSigner;

    invoke-direct {v1, p0}, Lcom/amazon/messaging/odot/OdotMessageSigner;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/messaging/odot/OdotMessageSigner;->instance:Lcom/amazon/messaging/odot/IOdotMessageSigner;

    .line 36
    :cond_0
    sget-object p0, Lcom/amazon/messaging/odot/OdotMessageSigner;->instance:Lcom/amazon/messaging/odot/IOdotMessageSigner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private signCorpus([BLcom/amazon/identity/auth/device/api/ADPCorpusSigningAuthenticationMethod;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const-string v0, "Exception when trying to generate signature via MAP: "

    .line 94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p2, p1, v1, v2}, Lcom/amazon/identity/auth/device/api/ADPCorpusSigningAuthenticationMethod;->signCorpus([BLandroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    .line 98
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 110
    sget-object p2, Lcom/amazon/messaging/odot/OdotMessageSigner;->TAG:Ljava/lang/String;

    const-string v0, "Exception when trying to generate signature via MAP"

    invoke-static {p2, v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    throw p1

    :catch_1
    move-exception p1

    .line 107
    sget-object p2, Lcom/amazon/messaging/odot/OdotMessageSigner;->TAG:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    throw p1

    :catch_2
    move-exception p1

    .line 101
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "error_code_key"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 102
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_message_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    sget-object v2, Lcom/amazon/messaging/odot/OdotMessageSigner;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    sget-object v0, Lcom/amazon/messaging/odot/OdotMessageSigner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", Error message: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    throw p1
.end method


# virtual methods
.method public generateMessageSignatureViaMAP(Ljava/lang/String;Ljava/lang/String;[BJLjava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/messaging/odot/OdotClientException;,
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    iget-object v1, p0, Lcom/amazon/messaging/odot/OdotMessageSigner;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p6}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    sget-object p6, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 51
    invoke-virtual {v0, p6}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object p6

    check-cast p6, Lcom/amazon/identity/auth/device/api/ADPCorpusSigningAuthenticationMethod;

    .line 60
    sget-object v0, Lcom/amazon/messaging/odot/OdotMessageSigner;->DUMMY_CORPUS:[B

    invoke-direct {p0, v0, p6}, Lcom/amazon/messaging/odot/OdotMessageSigner;->signCorpus([BLcom/amazon/identity/auth/device/api/ADPCorpusSigningAuthenticationMethod;)Landroid/os/Bundle;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/amazon/messaging/odot/OdotMessageSigner;->getAdpTokenFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/amazon/messaging/odot/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, v0

    .line 68
    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getCorpus(Ljava/lang/String;Ljava/lang/String;[BJLjava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    invoke-direct {p0, p1, p6}, Lcom/amazon/messaging/odot/OdotMessageSigner;->signCorpus([BLcom/amazon/identity/auth/device/api/ADPCorpusSigningAuthenticationMethod;)Landroid/os/Bundle;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/OdotMessageSigner;->getAdpTokenFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-static {v0, p2}, Lcom/amazon/messaging/odot/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 77
    :cond_0
    new-instance p1, Lcom/amazon/messaging/odot/OdotClientException;

    const-string p2, "ADP token changed while signing message"

    invoke-direct {p1, p2}, Lcom/amazon/messaging/odot/OdotClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 70
    sget-object p2, Lcom/amazon/messaging/odot/OdotMessageSigner;->TAG:Ljava/lang/String;

    const-string p3, "Corpus generation failed!"

    invoke-static {p2, p3, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    throw p1

    .line 63
    :cond_1
    new-instance p1, Lcom/amazon/messaging/odot/OdotClientException;

    const-string p2, "ADP token is null or empty"

    invoke-direct {p1, p2}, Lcom/amazon/messaging/odot/OdotClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdpTokenFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "adp_token"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSignatureFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "adp_signature"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
