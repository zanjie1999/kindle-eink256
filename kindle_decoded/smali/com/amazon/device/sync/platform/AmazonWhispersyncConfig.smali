.class public Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;
.super Ljava/lang/Object;
.source "AmazonWhispersyncConfig.java"

# interfaces
.implements Lcom/amazon/device/sync/platform/WhispersyncConfig;


# static fields
.field private static final IS_BATCHING_DISABLED:Lcom/amazon/whispersync/dcp/settings/SettingBoolean;

.field private static final NETWORK_OPERATIONS_THREAD_POOL_SIZE_SETTING:Lcom/amazon/whispersync/dcp/settings/SettingInteger;


# instance fields
.field private final mDataStore:Lcom/amazon/identity/auth/device/api/DeviceDataStore;

.field private final mIsEnabled:Z

.field private final mIsEngBuild:Z

.field private mSubscriberId:Ljava/lang/String;

.field private final mTarget:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    const-string v2, "com.amazon.device.sync.NETWORK_OPERATIONS_THREAD_POOL_SIZE"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->NETWORK_OPERATIONS_THREAD_POOL_SIZE_SETTING:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    .line 36
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingBoolean;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    const-string v2, "com.amazon.device.sync.IS_BATCHING_DISABLED"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingBoolean;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Z)V

    sput-object v0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->IS_BATCHING_DISABLED:Lcom/amazon/whispersync/dcp/settings/SettingBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DeviceInfo;)V
    .locals 3
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mDataStore:Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mTarget:Ljava/lang/String;

    .line 52
    invoke-virtual {p2}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getBuildType()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;

    move-result-object p2

    sget-object v0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;->Eng:Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mIsEngBuild:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 56
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isS2DMSupported()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 58
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->getPushNotificationTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/messaging/MessagingContract;->getMessagingHandlerIntentAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 63
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mIsEnabled:Z

    goto :goto_2

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal context. context.getPackageManager() returned null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_3
    iput-boolean v2, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mIsEnabled:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public getIsBatchingDisabled()Z
    .locals 1

    .line 144
    sget-object v0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->IS_BATCHING_DISABLED:Lcom/amazon/whispersync/dcp/settings/SettingBoolean;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingBoolean;->getValue()Z

    move-result v0

    return v0
.end method

.method public getNetworkOperationsThreadPoolSize()I
    .locals 1

    .line 138
    sget-object v0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->NETWORK_OPERATIONS_THREAD_POOL_SIZE_SETTING:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v0

    return v0
.end method

.method public getPushNotificationTopic()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "whispersync.notification."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushSubscription(Ljava/lang/String;)Lcom/amazon/whispersync/Subscription;
    .locals 3

    .line 94
    new-instance v0, Lcom/amazon/whispersync/Subscription;

    invoke-direct {v0}, Lcom/amazon/whispersync/Subscription;-><init>()V

    const-string v1, "S2DM"

    .line 95
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/Subscription;->setSubscriptionType(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/Subscription;->setSubscriberId(Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "account"

    .line 101
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p1, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mTarget:Ljava/lang/String;

    const-string/jumbo v2, "target"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "consolidation"

    const-string v2, "directory"

    .line 103
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/Subscription;->setSubscriptionInfo(Ljava/util/Map;)V

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mSubscriberId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mDataStore:Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    const-string v2, "DeviceType"

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mDataStore:Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    const-string v3, "Device Serial Number"

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mSubscriberId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/DeviceDataStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while trying to determining the subscriber id from MAP."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public isEngineeringBuild()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mIsEngBuild:Z

    return v0
.end method

.method public supportsPushNotifications()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;->mIsEnabled:Z

    return v0
.end method
