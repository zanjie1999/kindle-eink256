.class public Lcom/amazon/ea/purchase/client/util/HostnameUtil;
.super Ljava/lang/Object;
.source "HostnameUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.client.util.HostnameUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getHostname(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;
    .locals 7

    const-string v0, "HostnameUtilGetHostname"

    .line 24
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 27
    :try_start_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "PreferredMarketplaceNull"

    .line 28
    invoke-static {v3, v4}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 30
    sget-object p0, Lcom/amazon/ea/purchase/client/util/HostnameUtil;->TAG:Ljava/lang/String;

    const-string v0, "PFM is null, unable to get hostname"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v4

    .line 35
    :cond_1
    :try_start_1
    new-instance v3, Lcom/amazon/dcp/settings/SettingString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "store_hostname_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/amazon/dcp/settings/SettingString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazon/dcp/settings/SettingString;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    const-string v2, "HostnameNullOrEmpty"

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v1, :cond_5

    .line 37
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    sget-object v1, Lcom/amazon/ea/purchase/client/util/HostnameUtil;->TAG:Ljava/lang/String;

    const-string v2, "No DCP hostname, falling back to store manager..."

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_4
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/amazon/kindle/krx/store/IStoreManager;->getStoreHostnameFromPfm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :cond_5
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v3

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 45
    throw p0
.end method
