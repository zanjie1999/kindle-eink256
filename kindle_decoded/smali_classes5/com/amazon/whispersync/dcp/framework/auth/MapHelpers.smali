.class public Lcom/amazon/whispersync/dcp/framework/auth/MapHelpers;
.super Ljava/lang/Object;
.source "MapHelpers.java"


# static fields
.field private static final TOKEN_TIMEOUT_SECONDS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;


# instance fields
.field private mPackageName:Ljava/lang/String;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/com/google/inject/name/Named;
        value = "Context_packageName"
    .end annotation
.end field

.field private mTokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    const-string v1, "auth.map.get_token_timeout_seconds"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/auth/MapHelpers;->TOKEN_TIMEOUT_SECONDS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/MapHelpers;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAccessTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/auth/MapHelpers;->mTokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    .line 40
    :try_start_0
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/auth/MapHelpers;->TOKEN_TIMEOUT_SECONDS:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "value_key"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 63
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Timed out while trying to get the MAP Token"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 58
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Execution Exception while trying to get the MAP Token"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 48
    new-instance v0, Ljava/io/IOException;

    const-string v1, "InterruptedException while trying to get the MAP Token"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 44
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAPCallbackError while trying to get the MAP Token"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
