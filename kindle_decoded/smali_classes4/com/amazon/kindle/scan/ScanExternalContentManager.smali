.class public Lcom/amazon/kindle/scan/ScanExternalContentManager;
.super Ljava/lang/Object;
.source "ScanExternalContentManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile libraryActivityFG:Z

.field private volatile needScan:Z

.field private volatile scanDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/scan/ScanExternalContentManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->libraryActivityFG:Z

    .line 26
    iput-boolean v0, p0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->needScan:Z

    .line 29
    iput-boolean v0, p0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->scanDisabled:Z

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 1

    .line 32
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onFileSystemChangedEvent(Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 58
    invoke-static {}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->isExternalSDCardFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->scanDisabled:Z

    if-eqz v0, :cond_0

    .line 61
    sget-object p1, Lcom/amazon/kindle/scan/ScanExternalContentManager;->TAG:Ljava/lang/String;

    const-string v0, "Media mounted/unmounted event, but SDCard scan has been disabled. No scan"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    .line 68
    invoke-virtual {p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;->getMediaIntentAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    .line 69
    invoke-virtual {p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;->getMediaIntentAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/scan/ScanLocalContentUtilsManager;->getInstance()Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->addLocalContentPaths()V

    .line 75
    iget-boolean v1, p0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->libraryActivityFG:Z

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;->getMediaIntentAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 80
    :cond_2
    sget-object p1, Lcom/amazon/kindle/scan/ScanExternalContentManager;->TAG:Ljava/lang/String;

    const-string v0, "Media mounted/unmounted event, marking needScan"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->needScan:Z

    goto :goto_1

    .line 76
    :cond_3
    :goto_0
    sget-object p1, Lcom/amazon/kindle/scan/ScanExternalContentManager;->TAG:Ljava/lang/String;

    const-string v1, "Media mounted/unmounted event, running scan"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 77
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scanForLocalContent(Z)V

    .line 78
    iput-boolean p1, p0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->needScan:Z

    .line 86
    :cond_4
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public onLibraryFragmentLifecycleEvent(Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 37
    invoke-static {}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->isExternalSDCardFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;->getActivityLifecycleType()Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->RESUME:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->libraryActivityFG:Z

    .line 43
    iget-boolean p1, p0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->needScan:Z

    if-eqz p1, :cond_1

    .line 44
    sget-object p1, Lcom/amazon/kindle/scan/ScanExternalContentManager;->TAG:Ljava/lang/String;

    const-string v0, "LibraryLifeCycleEvent,scanning for local content"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/amazon/kindle/scan/ScanLocalContentUtilsManager;->getInstance()Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scanForLocalContent(Z)V

    .line 46
    iput-boolean v2, p0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->needScan:Z

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent;->getActivityLifecycleType()Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;->STOP:Lcom/amazon/kindle/event/LibraryFragmentLifeCycleEvent$Type;

    if-ne p1, v0, :cond_1

    .line 49
    iput-boolean v2, p0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->libraryActivityFG:Z

    .line 51
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public onSystemShutdownEvent(Lcom/amazon/kcp/application/SystemShutdownEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    sget-object p1, Lcom/amazon/kindle/scan/ScanExternalContentManager;->TAG:Ljava/lang/String;

    const-string v0, "SDCard scan is disabled because of system shutdown"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/amazon/kindle/scan/ScanExternalContentManager;->scanDisabled:Z

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
