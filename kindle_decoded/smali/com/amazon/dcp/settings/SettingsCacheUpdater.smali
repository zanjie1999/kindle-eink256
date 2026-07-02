.class final Lcom/amazon/dcp/settings/SettingsCacheUpdater;
.super Ljava/lang/Object;
.source "SettingsCacheUpdater.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.dcp.settings.SettingsCacheUpdater"


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/dcp/settings/SettingsCache$IListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenersLock:[Ljava/lang/Object;

.field private volatile mSettingsMap:Lcom/amazon/dcp/settings/SettingsMap;

.field private final mSyncLock:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 25
    iput-object v1, p0, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->mSyncLock:[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->mListenersLock:[Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->mListeners:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/amazon/dcp/settings/SettingsMap$Builder;

    invoke-direct {v0}, Lcom/amazon/dcp/settings/SettingsMap$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/dcp/settings/SettingsMap$Builder;->build()Lcom/amazon/dcp/settings/SettingsMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->mSettingsMap:Lcom/amazon/dcp/settings/SettingsMap;

    return-void
.end method

.method private static addSettings(Landroid/content/ContentProviderClient;Landroid/content/Context;Lcom/amazon/dcp/settings/SettingsNamespace;Lcom/amazon/dcp/settings/SettingsMap$Builder;)I
    .locals 11

    const-string/jumbo v0, "value"

    const-string v1, "key"

    .line 110
    sget-object v2, Lcom/amazon/dcp/settings/SettingsCacheUpdater$2;->$SwitchMap$com$amazon$dcp$settings$SettingsNamespace:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 p1, 0x2

    if-ne v2, p1, :cond_0

    const-string p1, "-device-"

    goto :goto_0

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 113
    :cond_1
    invoke-static {p1}, Lcom/amazon/dcp/settings/SettingsContract;->getAppLocalNamespace(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 126
    :try_start_0
    sget-object v4, Lcom/amazon/dcp/settings/SettingsContract;->VALUES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    if-eqz v2, :cond_2

    .line 159
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return v3

    .line 137
    :cond_3
    :try_start_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 138
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 140
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p3, p2, v0, v1}, Lcom/amazon/dcp/settings/SettingsMap$Builder;->setValue(Lcom/amazon/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 159
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 151
    :try_start_2
    sget-object p1, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Remote Exception occurred when querying settings content provider because "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    return v3

    :goto_4
    if-eqz v2, :cond_6

    .line 159
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method private updateMap(Lcom/amazon/dcp/settings/SettingsMap;)V
    .locals 4

    .line 184
    iput-object p1, p0, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->mSettingsMap:Lcom/amazon/dcp/settings/SettingsMap;

    .line 186
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    iget-object v0, p0, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->mListenersLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/dcp/settings/SettingsCache$IListener;

    .line 191
    new-instance v3, Lcom/amazon/dcp/settings/SettingsCacheUpdater$1;

    invoke-direct {v3, p0, v2}, Lcom/amazon/dcp/settings/SettingsCacheUpdater$1;-><init>(Lcom/amazon/dcp/settings/SettingsCacheUpdater;Lcom/amazon/dcp/settings/SettingsCache$IListener;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 200
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getMap()Lcom/amazon/dcp/settings/SettingsMap;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->mSettingsMap:Lcom/amazon/dcp/settings/SettingsMap;

    return-object v0
.end method

.method public updateFromContentProvider(Landroid/content/Context;)V
    .locals 6

    .line 69
    iget-object v0, p0, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->mSyncLock:[Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 74
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.amazon.dcp.settings"

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_1

    .line 78
    sget-object p1, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->TAG:Ljava/lang/String;

    const-string v2, "Content provider for Device Settings not found, sync unable to start"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 97
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 82
    :cond_1
    :try_start_2
    sget-object v2, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->TAG:Ljava/lang/String;

    const-string v3, "Starting sync with content provider."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v2, Lcom/amazon/dcp/settings/SettingsMap$Builder;

    invoke-direct {v2}, Lcom/amazon/dcp/settings/SettingsMap$Builder;-><init>()V

    .line 86
    sget-object v3, Lcom/amazon/dcp/settings/SettingsNamespace;->AppLocal:Lcom/amazon/dcp/settings/SettingsNamespace;

    invoke-static {v1, p1, v3, v2}, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->addSettings(Landroid/content/ContentProviderClient;Landroid/content/Context;Lcom/amazon/dcp/settings/SettingsNamespace;Lcom/amazon/dcp/settings/SettingsMap$Builder;)I

    move-result v3

    const/4 v4, 0x0

    add-int/2addr v3, v4

    .line 87
    sget-object v5, Lcom/amazon/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/dcp/settings/SettingsNamespace;

    invoke-static {v1, p1, v5, v2}, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->addSettings(Landroid/content/ContentProviderClient;Landroid/content/Context;Lcom/amazon/dcp/settings/SettingsNamespace;Lcom/amazon/dcp/settings/SettingsMap$Builder;)I

    move-result p1

    add-int/2addr v3, p1

    .line 89
    invoke-virtual {v2}, Lcom/amazon/dcp/settings/SettingsMap$Builder;->build()Lcom/amazon/dcp/settings/SettingsMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->updateMap(Lcom/amazon/dcp/settings/SettingsMap;)V

    .line 91
    sget-object p1, Lcom/amazon/dcp/settings/SettingsCacheUpdater;->TAG:Ljava/lang/String;

    const-string v2, "Sync with content provider complete. Values processed: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 97
    :try_start_3
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 100
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_3
    throw p1

    :catchall_1
    move-exception p1

    .line 100
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
