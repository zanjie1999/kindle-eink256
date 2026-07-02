.class public Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;
.super Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;
.source "ReaderActivityLifecycleEventHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/reader/ReaderManager;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    .line 27
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    .line 28
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onActionBarVisibilityChanged(Z)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getActivityEventListeners()Ljava/util/Collection;

    move-result-object v0

    .line 117
    monitor-enter v0

    .line 118
    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    .line 119
    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;->onActionBarVisibilityChange(Z)V

    goto :goto_0

    .line 121
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

.method public onActivityPaused()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getActivityEventListeners()Ljava/util/Collection;

    move-result-object v0

    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    .line 48
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;->onPause()V

    goto :goto_0

    .line 50
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onActivityStop()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getActivityEventListeners()Ljava/util/Collection;

    move-result-object v0

    .line 57
    monitor-enter v0

    .line 58
    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    .line 59
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;->onStop()V

    goto :goto_0

    .line 61
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getActivityEventListeners()Ljava/util/Collection;

    move-result-object v0

    .line 86
    monitor-enter v0

    .line 87
    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    .line 88
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;->onDestroy()V

    goto :goto_0

    .line 90
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onOverlayVisibilityChanged(Z)V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getActivityEventListeners()Ljava/util/Collection;

    move-result-object v0

    .line 128
    monitor-enter v0

    .line 129
    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    .line 130
    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;->onOverlayVisibilityChange(Z)V

    goto :goto_0

    .line 132
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

.method public onReaderActivityLifeCycleEvent(Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 101
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 102
    sget-object v0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler$1;->$SwitchMap$com$amazon$kcp$reader$ReaderActivityLifecycleEvent$Type:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 108
    sget-object v0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid activity life cycle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getActivityEventListeners()Ljava/util/Collection;

    move-result-object v0

    .line 75
    monitor-enter v0

    .line 76
    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    .line 77
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;->onResume()V

    goto :goto_0

    .line 79
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSettingsChange(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 2

    .line 34
    iget-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;->readerManager:Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/reader/ReaderManager;->getActivityEventListeners()Ljava/util/Collection;

    move-result-object p1

    .line 35
    monitor-enter p1

    .line 36
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;

    .line 37
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;->onSettingsChange()V

    goto :goto_0

    .line 39
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
