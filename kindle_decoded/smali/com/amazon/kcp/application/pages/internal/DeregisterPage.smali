.class public Lcom/amazon/kcp/application/pages/internal/DeregisterPage;
.super Ljava/lang/Object;
.source "DeregisterPage.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized deregisterLocallyOnly(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kindle/services/authentication/IAccountInfo;Z)V
    .locals 1

    const-class p0, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kcp/application/IAuthenticationManager;->removeAuthentication(Lcom/amazon/kindle/services/authentication/IAccountInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/internal/IUpdateManager;->clearSecureStorage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    :try_start_2
    sget-object p2, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->TAG:Ljava/lang/String;

    const-string v0, "Error clearing secure storage."

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/ILocalStorage;->clear()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 39
    :try_start_4
    sget-object p2, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->TAG:Ljava/lang/String;

    const-string v0, "Error clearing local storage."

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountSecretProvider()Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/authentication/IAccountSecretProvider;->clearSecrets()V

    .line 50
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isRecentSearchTermsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    invoke-static {}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->getInstance()Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->clearTable()V

    .line 54
    invoke-virtual {p1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
