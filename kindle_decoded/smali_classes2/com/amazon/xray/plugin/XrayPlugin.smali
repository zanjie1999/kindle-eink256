.class public Lcom/amazon/xray/plugin/XrayPlugin;
.super Ljava/lang/Object;
.source "XrayPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0xe
    name = "X-Ray"
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/plugin/XrayPlugin$ReaderNavigationListener;,
        Lcom/amazon/xray/plugin/XrayPlugin$SidecarOnChangeListener;,
        Lcom/amazon/xray/plugin/XrayPlugin$RemoveOldSidecarsAsyncTask;,
        Lcom/amazon/xray/plugin/XrayPlugin$ReaderActivityLifecycleListener;,
        Lcom/amazon/xray/plugin/XrayPlugin$LibraryEventListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "com.amazon.xray.plugin.XrayPlugin"

.field private static db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

.field private static instance:Lcom/amazon/xray/plugin/XrayPlugin;

.field private static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# instance fields
.field private navigatedFromXray:Z

.field private xrayIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/xray/plugin/XrayPlugin;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/amazon/xray/plugin/XrayPlugin;->navigatedFromXray:Z

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/xray/plugin/XrayPlugin;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/amazon/xray/plugin/XrayPlugin;->navigatedFromXray:Z

    return p1
.end method

.method static synthetic access$202(Lcom/amazon/xray/plugin/XrayPlugin;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/xray/plugin/XrayPlugin;->xrayIntent:Landroid/content/Intent;

    return-object p1
.end method

.method public static getInstance()Lcom/amazon/xray/plugin/XrayPlugin;
    .locals 1

    .line 65
    sget-object v0, Lcom/amazon/xray/plugin/XrayPlugin;->instance:Lcom/amazon/xray/plugin/XrayPlugin;

    return-object v0
.end method

.method public static getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 72
    sget-object v0, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public static declared-synchronized setInstance(Lcom/amazon/xray/plugin/XrayPlugin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    const-class v0, Lcom/amazon/xray/plugin/XrayPlugin;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/amazon/xray/plugin/XrayPlugin;->instance:Lcom/amazon/xray/plugin/XrayPlugin;

    if-nez v1, :cond_0

    .line 87
    sput-object p0, Lcom/amazon/xray/plugin/XrayPlugin;->instance:Lcom/amazon/xray/plugin/XrayPlugin;

    .line 88
    sput-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit v0

    return-void

    .line 85
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "plugin already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXrayIntent()Landroid/content/Intent;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazon/xray/plugin/XrayPlugin;->xrayIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 113
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 116
    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/XrayPlugin;->setInstance(Lcom/amazon/xray/plugin/XrayPlugin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 119
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/xray/plugin/Log;->setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V

    .line 123
    invoke-static {}, Lcom/amazon/xray/metrics/SessionManager;->closeSavedSessions()V

    .line 126
    new-instance p1, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler;

    invoke-direct {p1}, Lcom/amazon/xray/plugin/todo/XrayTodoEventHandler;-><init>()V

    .line 127
    sget-object v0, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->register(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V

    .line 130
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/xray/plugin/XrayPlugin$LibraryEventListener;

    invoke-direct {v0}, Lcom/amazon/xray/plugin/XrayPlugin$LibraryEventListener;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/library/ILibraryManager;->registerLibraryEventListener(Lcom/amazon/kindle/krx/library/ILibraryEventListener;)V

    .line 134
    invoke-static {}, Lcom/amazon/xray/plugin/util/AccountUtil;->isChildAccount()Z

    move-result p1

    if-nez p1, :cond_1

    .line 137
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-ne p1, v0, :cond_0

    .line 138
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->TAG:Ljava/lang/String;

    const-string v0, "Calling registerActionButtonProvider"

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/xray/plugin/provider/FirstPartyXrayButtonProvider;

    invoke-direct {v0}, Lcom/amazon/xray/plugin/provider/FirstPartyXrayButtonProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    goto :goto_0

    .line 141
    :cond_0
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->TAG:Ljava/lang/String;

    const-string v0, "Calling registerCustomActionButtonProvider"

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/xray/plugin/provider/ThirdPartyXrayButtonProvider;

    invoke-direct {v0}, Lcom/amazon/xray/plugin/provider/ThirdPartyXrayButtonProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 145
    :goto_0
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;

    invoke-direct {v0}, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerInfoCardViewProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 148
    new-instance p1, Lcom/amazon/xray/plugin/XrayPlugin$SidecarOnChangeListener;

    invoke-direct {p1, p0}, Lcom/amazon/xray/plugin/XrayPlugin$SidecarOnChangeListener;-><init>(Lcom/amazon/xray/plugin/XrayPlugin;)V

    invoke-static {p1}, Lcom/amazon/xray/model/SidecarDatabaseManager;->addSidecarOnChangeListener(Lcom/amazon/xray/model/SidecarDatabaseManager$SidecarOnChangeListener;)V

    .line 151
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/xray/plugin/XrayPlugin$ReaderNavigationListener;

    invoke-direct {v0, p0}, Lcom/amazon/xray/plugin/XrayPlugin$ReaderNavigationListener;-><init>(Lcom/amazon/xray/plugin/XrayPlugin;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 154
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/xray/plugin/XrayPlugin$ReaderActivityLifecycleListener;

    invoke-direct {v0}, Lcom/amazon/xray/plugin/XrayPlugin$ReaderActivityLifecycleListener;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    .line 158
    :cond_1
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/amazon/xray/plugin/XrayPlugin$RemoveOldSidecarsAsyncTask;

    invoke-direct {v0}, Lcom/amazon/xray/plugin/XrayPlugin$RemoveOldSidecarsAsyncTask;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    return-void
.end method

.method refreshSidecarAndButtonStatus(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 7

    .line 168
    monitor-enter p0

    .line 170
    :try_start_0
    sget-object v0, Lcom/amazon/xray/plugin/XrayPlugin;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/amazon/xray/plugin/XrayPlugin;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->release(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    const/4 v0, 0x0

    .line 172
    sput-object v0, Lcom/amazon/xray/plugin/XrayPlugin;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    :cond_0
    if-eqz p1, :cond_4

    .line 175
    invoke-static {p1}, Lcom/amazon/xray/model/SidecarDatabaseManager;->acquire(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/plugin/XrayPlugin;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    const-string v0, "XrayReadingSession"

    .line 179
    invoke-static {p1, v0}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object p1

    const-string v0, "HasSidecar"

    .line 180
    sget-object v1, Lcom/amazon/xray/plugin/XrayPlugin;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/amazon/xray/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v0, "XrayBookOpenTimestamp"

    .line 183
    invoke-virtual {p1, v0}, Lcom/amazon/xray/metrics/Metric;->getState(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 184
    sget-object v1, Lcom/amazon/xray/plugin/XrayPlugin;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    const-string v1, "XrayBookOpenTimestamp"

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/amazon/xray/metrics/Metric;->setState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    :cond_2
    sget-object v1, Lcom/amazon/xray/plugin/XrayPlugin;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    const-string v1, "BookOpenToXraySidecarArrivalDuration"

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 190
    invoke-virtual {p1, v1, v3, v4}, Lcom/amazon/xray/metrics/Metric;->setTime(Ljava/lang/String;J)V

    .line 193
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "XrayNotActionable"

    .line 194
    invoke-virtual {p1, v1}, Lcom/amazon/xray/metrics/Metric;->getState(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "XrayNotActionableButSidecarArrivesLater"

    .line 195
    invoke-virtual {p1, v0, v2}, Lcom/amazon/xray/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 199
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-ne p1, v0, :cond_5

    .line 204
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->TAG:Ljava/lang/String;

    const-string v0, "Calling refreshActionButtons"

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshActionButtons()V

    goto :goto_1

    .line 207
    :cond_5
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->TAG:Ljava/lang/String;

    const-string v0, "Calling refreshReaderActionButtons"

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object p1, Lcom/amazon/xray/plugin/XrayPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshReaderActionButtons()V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 199
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setNavigatedFromXray(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/amazon/xray/plugin/XrayPlugin;->navigatedFromXray:Z

    return-void
.end method

.method public setXrayIntent(Landroid/content/Intent;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/amazon/xray/plugin/XrayPlugin;->xrayIntent:Landroid/content/Intent;

    return-void
.end method
