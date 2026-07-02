.class public final Lcom/audible/mobile/media/button/MediaButtonManagerImpl;
.super Ljava/lang/Object;
.source "MediaButtonManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/media/button/MediaButtonManager;


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private final clientUsesExternalMediaSession:Z

.field private final componentName:Landroid/content/ComponentName;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/audible/mobile/media/button/ButtonPressedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->logger:Lorg/slf4j/Logger;

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 52
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->componentName:Landroid/content/ComponentName;

    const-string p2, "audio"

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->audioManager:Landroid/media/AudioManager;

    .line 54
    iput-boolean p3, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->clientUsesExternalMediaSession:Z

    return-void
.end method

.method private unregisterComponentName()V
    .locals 2

    .line 133
    iget-boolean v0, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->clientUsesExternalMediaSession:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized acquireExclusiveMediaButtonStatus()V
    .locals 2

    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v0, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->clientUsesExternalMediaSession:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent must not be null."

    .line 97
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object p1, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->logger:Lorg/slf4j/Logger;

    const-string v0, "Passed an intent to process that was not an expected action"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-nez p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->logger:Lorg/slf4j/Logger;

    const-string v0, "the intent doesn\'t contain a KeyEvent, unable to process it"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_3

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/media/button/ButtonPressedListener;

    .line 121
    invoke-interface {v1, p1}, Lcom/audible/mobile/media/button/ButtonPressedListener;->onButtonUp(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/media/button/ButtonPressedListener;

    .line 125
    invoke-interface {v1, p1}, Lcom/audible/mobile/media/button/ButtonPressedListener;->onMultiplePress(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/media/button/ButtonPressedListener;

    .line 116
    invoke-interface {v1, p1}, Lcom/audible/mobile/media/button/ButtonPressedListener;->onButtonDown(Landroid/view/KeyEvent;)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/audible/mobile/media/button/ButtonPressedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener must not be null."

    .line 60
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->acquireExclusiveMediaButtonStatus()V

    .line 62
    iget-object v0, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/audible/mobile/media/button/ButtonPressedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener must not be null."

    .line 68
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/audible/mobile/media/button/MediaButtonManagerImpl;->unregisterComponentName()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
