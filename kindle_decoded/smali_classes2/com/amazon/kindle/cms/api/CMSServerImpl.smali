.class final Lcom/amazon/kindle/cms/api/CMSServerImpl;
.super Lcom/amazon/kindle/cms/api/InternalCMSServer;
.source "CMSServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;
    }
.end annotation


# static fields
.field private static final VERSION_VALIDATOR:Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;

.field private static final s_activeUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_connection:Lcom/amazon/kindle/cms/api/CMSApi$CMSServiceConnection;

.field private final m_context:Landroid/content/Context;

.field private m_remoteInitialized:Z

.field private final m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

.field private m_serviceVersion:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;

    sget-object v1, Lcom/amazon/kindle/cms/ipc/Constants;->API_VERSION:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;-><init>(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->VERSION_VALIDATOR:Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;

    .line 40
    new-instance v1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3, v3}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;-><init>(IIII)V

    new-instance v4, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    const v5, 0x7fffffff

    invoke-direct {v4, v2, v3, v3, v5}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;-><init>(IIII)V

    invoke-virtual {v0, v1, v4}, Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;->addSupportedRange(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)V

    .line 1194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->s_activeUpdates:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/cms/api/CMSApi$CMSServiceConnection;Landroid/os/IBinder;)V
    .locals 0

    .line 1058
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/InternalCMSServer;-><init>()V

    .line 1060
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    .line 1061
    invoke-static {p3}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    .line 1062
    iput-object p2, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_connection:Lcom/amazon/kindle/cms/api/CMSApi$CMSServiceConnection;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;)V
    .locals 0

    .line 1067
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/InternalCMSServer;-><init>()V

    .line 1068
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    .line 1069
    iput-object p2, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    const/4 p1, 0x0

    .line 1070
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_connection:Lcom/amazon/kindle/cms/api/CMSApi$CMSServiceConnection;

    return-void
.end method

.method private beginUpdate(Landroid/net/Uri;Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;)Lcom/amazon/kindle/cms/api/Update;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 1135
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1136
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amazon/kindle/cms/api/CMSApi;->ensureSourceIsRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 1138
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->remoteInitIfNeeded()V

    .line 1140
    sget-object v0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->s_activeUpdates:Ljava/util/Map;

    monitor-enter v0

    .line 1142
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/cms/api/CMSServerImpl;->s_activeUpdates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;

    if-nez v1, :cond_0

    .line 1145
    new-instance v1, Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;-><init>(Lcom/amazon/kindle/cms/api/CMSServerImpl;Ljava/lang/String;Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;)V

    .line 1146
    sget-object p2, Lcom/amazon/kindle/cms/api/CMSServerImpl;->s_activeUpdates:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1150
    :cond_0
    iget-object p1, v1, Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;->update:Lcom/amazon/kindle/cms/api/UpdateImpl;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/cms/api/UpdateImpl;->setStrategy(Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;)V

    .line 1152
    :goto_0
    iget p1, v1, Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;->refCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;->refCount:I

    .line 1153
    iget-object p1, v1, Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;->update:Lcom/amazon/kindle/cms/api/UpdateImpl;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized remoteInitIfNeeded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    monitor-enter p0

    .line 1159
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_remoteInitialized:Z

    if-nez v0, :cond_2

    const-string v0, "CMS_RemoteInit"

    const-wide/16 v1, 0x40

    .line 1161
    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/cms/internal/Systrace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1166
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    sget-object v3, Lcom/amazon/kindle/cms/ipc/Constants;->API_VERSION:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-interface {v0, v3}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->validateVersion(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_serviceVersion:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    if-eqz v0, :cond_1

    .line 1167
    sget-object v3, Lcom/amazon/kindle/cms/api/CMSServerImpl;->VERSION_VALIDATOR:Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;

    invoke-virtual {v3, v0}, Lcom/amazon/kindle/cms/ipc/validation/VersionValidator;->validate(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->getAllSources()Ljava/util/List;

    move-result-object v0

    .line 1170
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1172
    iget-object v3, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    iget-object v4, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->registerSources(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1174
    iput-boolean v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_remoteInitialized:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1183
    :try_start_2
    invoke-static {v1, v2}, Lcom/amazon/kindle/cms/internal/Systrace;->traceEnd(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1168
    :cond_1
    :try_start_3
    new-instance v0, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {v0, v3}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1178
    :try_start_4
    new-instance v3, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v4, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {v3, v4, v0}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1183
    :goto_0
    :try_start_5
    invoke-static {v1, v2}, Lcom/amazon/kindle/cms/internal/Systrace;->traceEnd(J)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1186
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addToCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->remoteInitIfNeeded()V

    .line 284
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_serviceVersion:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    new-instance v1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->addToCarouselForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 293
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2

    .line 285
    :cond_0
    new-instance p1, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p2, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V

    throw p1
.end method

.method public beginBulkUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;->Bulk:Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->beginUpdate(Landroid/net/Uri;Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;)Lcom/amazon/kindle/cms/api/Update;

    move-result-object p1

    return-object p1
.end method

.method public beginSync(Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amazon/kindle/cms/api/CMSApi;->ensureSourceIsRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->remoteInitIfNeeded()V

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/cms/api/CMSApi;->getSyncState(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/SyncState;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->lockForChange()V

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->beginSync(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->reset()V

    const/4 p1, 0x1

    .line 74
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/cms/api/SyncState;->setFullSyncInProgress(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->unlockForChange()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    :try_start_2
    new-instance v1, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v2, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {v1, v2, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->unlockForChange()V

    throw p1
.end method

.method public beginUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;->Simple:Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->beginUpdate(Landroid/net/Uri;Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;)Lcom/amazon/kindle/cms/api/Update;

    move-result-object p1

    return-object p1
.end method

.method public disconnect()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_connection:Lcom/amazon/kindle/cms/api/CMSApi$CMSServiceConnection;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Lcom/amazon/kindle/cms/api/CMSApi$CMSServiceConnection;->safeUnbind()V

    :cond_0
    return-void
.end method

.method public endSync(Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amazon/kindle/cms/api/CMSApi;->ensureSourceIsRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->remoteInitIfNeeded()V

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/cms/api/CMSApi;->getSyncState(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/SyncState;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->lockForChange()V

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->endSync(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/api/SyncState;->setFullSyncInProgress(Z)V

    .line 97
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->getSyncHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->saveSyncHash(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->unlockForChange()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    :try_start_1
    new-instance v1, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v2, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {v1, v2, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->unlockForChange()V

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method getService()Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    return-object v0
.end method

.method public isSyncNeeded(Landroid/net/Uri;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amazon/kindle/cms/api/CMSApi;->ensureSourceIsRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->remoteInitIfNeeded()V

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/cms/api/CMSApi;->getSyncState(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/SyncState;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->lockForQuery()V

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->getSyncHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->currentValue()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 135
    :goto_1
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->unlockForQuery()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 128
    :try_start_2
    new-instance v1, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v2, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {v1, v2, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :goto_2
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/api/SyncState;->unlockForQuery()V

    throw p1
.end method

.method public notifyFTUEEnd(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 543
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->remoteInitIfNeeded()V

    .line 545
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_serviceVersion:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    new-instance v1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v2, v2}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->notifyFTUEEnd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 553
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, v0, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2

    .line 546
    :cond_0
    new-instance p1, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p2, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V

    throw p1
.end method

.method public notifyFTUEStart(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 526
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->remoteInitIfNeeded()V

    .line 528
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_serviceVersion:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    new-instance v1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v2, v2}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->notifyFTUEStart(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 536
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, v0, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2

    .line 529
    :cond_0
    new-instance p1, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p2, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V

    throw p1
.end method

.method public notifyThumbnailChange(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->remoteInitIfNeeded()V

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->notifyThumbnailChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 519
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, v0, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public postAsDelivery(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 1042
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->remoteInitIfNeeded()V

    .line 1044
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_serviceVersion:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    new-instance v1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1049
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->postAsDelivery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1053
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2

    .line 1045
    :cond_0
    new-instance p1, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p2, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V

    throw p1
.end method

.method public redirectVerbs(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 587
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->remoteInitIfNeeded()V

    .line 589
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_serviceVersion:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    new-instance v1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v2, v4}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 591
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 592
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 594
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 598
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->redirectVerbs(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 602
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2

    .line 590
    :cond_1
    new-instance p1, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p2, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V

    throw p1
.end method

.method releaseUpdate(Ljava/lang/String;)Z
    .locals 4

    .line 1082
    sget-object v0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->s_activeUpdates:Ljava/util/Map;

    monitor-enter v0

    .line 1084
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/cms/api/CMSServerImpl;->s_activeUpdates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;

    .line 1085
    iget v2, v1, Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;->refCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/amazon/kindle/cms/api/CMSServerImpl$UpdateEntry;->refCount:I

    if-nez v2, :cond_0

    .line 1087
    sget-object v1, Lcom/amazon/kindle/cms/api/CMSServerImpl;->s_activeUpdates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    monitor-exit v0

    return v3

    .line 1090
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeFromCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 306
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->remoteInitIfNeeded()V

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->removeFromCarouselForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 314
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2
.end method

.method saveSyncHash(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 1097
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1099
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/cms/api/CMSApi;->getSyncState(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/SyncState;

    move-result-object v1

    .line 1102
    invoke-virtual {v1}, Lcom/amazon/kindle/cms/api/SyncState;->isFullSyncInProgress()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1104
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amazon/kindle/cms/api/CMSApi;->ensureSourceIsRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 1105
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerImpl;->remoteInitIfNeeded()V

    .line 1107
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_serviceVersion:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    new-instance v1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    const/4 v2, 0x2

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v4, v3}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1112
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerImpl;->m_service:Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;->saveSyncHash(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1116
    new-instance p2, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p3, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p2, p3, p1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V

    throw p2

    .line 1108
    :cond_0
    new-instance p1, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object p2, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
