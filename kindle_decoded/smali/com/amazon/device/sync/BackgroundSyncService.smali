.class public Lcom/amazon/device/sync/BackgroundSyncService;
.super Landroid/app/IntentService;
.source "BackgroundSyncService.java"


# static fields
.field private static final DUMMY_NAMESPACE:Ljava/lang/String; = "dummy"

.field private static final MAX_NETWORK_STATE_TO_S2DM_RECEIVE:Lcom/amazon/whispersync/dcp/settings/SettingLong;


# instance fields
.field mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/javax/inject/Inject;
    .end annotation
.end field

.field mObjectMapper:Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .annotation runtime Lcom/amazon/whispersync/javax/inject/Inject;
    .end annotation
.end field

.field mSyncNetworkStateListener:Lcom/amazon/device/sync/SyncNetworkStateListener;
    .annotation runtime Lcom/amazon/whispersync/javax/inject/Inject;
    .end annotation
.end field

.field mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;
    .annotation runtime Lcom/amazon/whispersync/javax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingLong;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    const-string v2, "com.amazon.device.sync.MAX_NETWORK_STATE_TO_S2DM_RECEIVE"

    const-wide/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/settings/SettingLong;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;J)V

    sput-object v0, Lcom/amazon/device/sync/BackgroundSyncService;->MAX_NETWORK_STATE_TO_S2DM_RECEIVE:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "BackgroundSyncService"

    .line 47
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    return-void
.end method

.method private isValidSyncMessage(Lcom/amazon/whispersync/dcp/messaging/Message;)Z
    .locals 5

    .line 158
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/messaging/Message;->getId()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/messaging/Message;->getTopic()Ljava/lang/String;

    move-result-object p1

    .line 161
    iget-object v1, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    invoke-interface {v1}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->getPushNotificationTopic()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object p1, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    invoke-interface {p1}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->getPushNotificationTopic()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    const/4 p1, 0x2

    aput-object v0, v3, p1

    const-string p1, "Incorrect topic: %s, expected: %s. Background sync(%s) ignored."

    invoke-virtual {v1, p1, v3}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    return v4

    :cond_0
    return v2
.end method

.method private showText(Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    invoke-interface {v0}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->isEngineeringBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 145
    new-instance v1, Lcom/amazon/device/sync/BackgroundSyncService$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/sync/BackgroundSyncService$1;-><init>(Lcom/amazon/device/sync/BackgroundSyncService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 55
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/amazon/device/sync/SyncGuiceHelper;->injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v1, "BackgroundSyncService"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->pushTag(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    invoke-interface {v0}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->supportsPushNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background sync not supported on this platform. Remove this service from your manifest."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11

    const-string v0, "Background sync(%s) failed."

    .line 67
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/messaging/Message;->constructMessageFromIntent(Landroid/content/Intent;)Lcom/amazon/whispersync/dcp/messaging/Message;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/messaging/Message;->getId()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/messaging/Message;->getAccountId()Ljava/lang/String;

    move-result-object v2

    .line 70
    iget-object v3, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string v7, "Background sync(%s) started."

    invoke-virtual {v3, v7, v5}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/BackgroundSyncService;->isValidSyncMessage(Lcom/amazon/whispersync/dcp/messaging/Message;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 75
    :cond_0
    sget-object v3, Lcom/amazon/device/sync/gear/Constants;->STUB_REASON:Lcom/amazon/whispersync/Reason;

    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mObjectMapper:Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/messaging/Message;->getPayload()[B

    move-result-object p1

    const-class v5, Lcom/amazon/whispersync/notification/DirectoryUpdatedNotification;

    invoke-virtual {v3, p1, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readValue([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/notification/DirectoryUpdatedNotification;

    .line 80
    iget-object v3, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got a notification for an update on namespace:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/notification/DirectoryUpdatedNotification;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v7}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    new-instance v3, Lcom/amazon/whispersync/Reason;

    invoke-direct {v3}, Lcom/amazon/whispersync/Reason;-><init>()V

    .line 82
    invoke-virtual {p1}, Lcom/amazon/whispersync/notification/Notification;->getOriginInfo()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/amazon/whispersync/notification/Notification;->getOriginInfo()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 85
    invoke-virtual {p1}, Lcom/amazon/whispersync/notification/Notification;->getOriginInfo()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/amazon/whispersync/Reason;->setReasonMetadata(Ljava/util/Map;)V

    .line 87
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object p1, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mSyncNetworkStateListener:Lcom/amazon/device/sync/SyncNetworkStateListener;

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncNetworkStateListener;->getLastNetworkStateChanged()J

    move-result-wide v9

    sub-long/2addr v7, v9

    sget-object p1, Lcom/amazon/device/sync/BackgroundSyncService;->MAX_NETWORK_STATE_TO_S2DM_RECEIVE:Lcom/amazon/whispersync/dcp/settings/SettingLong;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/settings/SettingLong;->getValue()J

    move-result-wide v9

    cmp-long p1, v7, v9

    if-gez p1, :cond_2

    const-string p1, "S2DMPoll"

    .line 90
    invoke-virtual {v3, p1}, Lcom/amazon/whispersync/Reason;->setReasonType(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "S2DMPush"

    .line 94
    invoke-virtual {v3, p1}, Lcom/amazon/whispersync/Reason;->setReasonType(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/amazon/whispersync/org/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v5, "dummy"

    invoke-static {p1, v2, v5}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object p1

    .line 117
    sget-object v5, Lcom/amazon/device/sync/DatasetType;->Directory:Lcom/amazon/device/sync/DatasetType;

    sget-object v7, Lcom/amazon/device/sync/DatasetType;->Directory:Lcom/amazon/device/sync/DatasetType;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5, v7, v3}, Lcom/amazon/device/sync/SyncableDataStore;->download(Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;Lcom/amazon/whispersync/Reason;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v3, 0x2

    if-eqz p1, :cond_3

    .line 121
    iget-object p1, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v5, "Background sync (%s) finished."

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v6

    invoke-virtual {p1, v5, v7}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p1, "Background sync (%s) succeeded for %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v2, v3, v4

    .line 122
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/device/sync/BackgroundSyncService;->showText(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_3
    iget-object p1, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v5, "Background sync (%s) failed."

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v6

    invoke-virtual {p1, v5, v7}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p1, "Background sync (%s) failed for %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v2, v3, v4

    .line 127
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/device/sync/BackgroundSyncService;->showText(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 136
    iget-object v2, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v2, p1, v0, v3}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :catch_1
    move-exception p1

    .line 132
    iget-object v2, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v2, p1, v0, v3}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    return-void

    :catch_2
    move-exception p1

    .line 109
    iget-object v0, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v6

    const-string v2, "Io Exception while trying to read the S2DM payload"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 104
    iget-object v0, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v6

    const-string v2, "Json Parsing Exception while trying to read the S2DM payload"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    .line 99
    iget-object v0, p0, Lcom/amazon/device/sync/BackgroundSyncService;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v6

    const-string v2, "Json Mapping Exception while trying to read the S2DM payload"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
