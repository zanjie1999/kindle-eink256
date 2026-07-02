.class Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers;
.super Ljava/lang/Object;
.source "LwaHelpers.java"


# static fields
.field private static final AUTH_FAILURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOKEN_TIMEOUT_SECONDS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    const-string v1, "iuc.lwa.get_token_timeout_seconds"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers;->TOKEN_TIMEOUT_SECONDS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    .line 32
    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_ACCESS_DENIED:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_INVALID_CLIENT:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_INVALID_GRANT:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_INVALID_SCOPE:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_INVALID_TOKEN:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/whispersync/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers;->AUTH_FAILURES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken(Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p2, v0}, Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;->getToken([Ljava/lang/String;Lcom/amazon/identity/auth/device/shared/APIListener;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 47
    :try_start_0
    sget-object p2, Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers;->TOKEN_TIMEOUT_SECONDS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {p2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result p2

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, p2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    sget-object p2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->FUTURE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object p2, p2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    .line 69
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers$1;->$SwitchMap$com$amazon$identity$auth$device$authorization$api$AuthzConstants$FUTURE_TYPE:[I

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 75
    invoke-static {p1}, Lcom/amazon/identity/auth/device/AuthError;->extractError(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/AuthError;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AuthError;->getType()Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    move-result-object p2

    .line 77
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers;->AUTH_FAILURES:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    new-instance p2, Lorg/apache/http/client/HttpResponseException;

    const/16 v0, 0x193

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AuthError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 83
    :cond_0
    new-instance p2, Lorg/apache/http/client/HttpResponseException;

    const/16 v0, 0x1f7

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AuthError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Un recognized future type from LWA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_2
    sget-object p2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->TOKEN:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object p2, p2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Timed out while trying to get an LWA token"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_3

    .line 57
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 61
    :cond_3
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Execution Exception while trying to get a LWA token."

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 51
    new-instance p2, Ljava/io/IOException;

    const-string v0, "InterruptedException while trying to get an LWA token"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
