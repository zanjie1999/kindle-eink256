.class public Lcom/amazon/krf/media/AudioPlayerImpl;
.super Lcom/amazon/krf/media/BaseAudioPlayer;
.source "AudioPlayerImpl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/media/AudioPlayerImpl$ReleasePlayerTask;,
        Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;,
        Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;,
        Lcom/amazon/krf/media/AudioPlayerImpl$State;
    }
.end annotation


# static fields
.field public static final DUCK_VOLUME:F = 0.2f

.field private static final INVALID_SEEK:I = -0x1

.field private static final MEDIA_ERROR_SYSTEM:I = -0x80000000

.field public static final NORMAL_VOLUME:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "AudioPlayerImpl"

.field protected static m_audioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;


# instance fields
.field protected m_audioFocusChangeListener:Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;

.field private m_bufferedSeekTo:I

.field private final m_context:Landroid/content/Context;

.field private m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

.field private m_looping:Z

.field private m_mediaPlayerListener:Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;

.field private m_pauseOnCompletion:Z

.field protected m_player:Landroid/media/MediaPlayer;

.field private m_resourceUri:Ljava/lang/String;

.field private m_shouldRequestAudioFocus:Z

.field private m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 187
    invoke-direct {p0}, Lcom/amazon/krf/media/BaseAudioPlayer;-><init>()V

    .line 55
    new-instance v0, Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;-><init>(Lcom/amazon/krf/media/AudioPlayerImpl;Lcom/amazon/krf/media/AudioPlayerImpl$1;)V

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_audioFocusChangeListener:Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_looping:Z

    .line 77
    iput v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_bufferedSeekTo:I

    .line 83
    iput-boolean v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_pauseOnCompletion:Z

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_shouldRequestAudioFocus:Z

    .line 150
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->End:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 156
    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_context:Landroid/content/Context;

    goto :goto_0

    .line 191
    :cond_0
    iput-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_context:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .line 460
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_audioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {v0}, Lcom/amazon/krf/media/AudioManagerProxy;->abandonAudioFocus()V

    .line 462
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_audioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_audioFocusChangeListener:Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/amazon/krf/media/AudioManagerProxy;->removeFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/amazon/krf/media/AudioPlayerImpl;)Lcom/amazon/krf/media/AudioPlayerImpl$State;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/krf/media/AudioPlayerImpl;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalPlay()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/krf/media/AudioPlayerImpl;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalPause(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/krf/media/AudioPlayerImpl;)Z
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalIsPlaying()Z

    move-result p0

    return p0
.end method

.method private declared-synchronized internalGetDuration()I
    .locals 4

    monitor-enter p0

    .line 738
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalGetDuration, m_currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m_targetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 760
    new-instance v0, Ljava/lang/AssertionError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 753
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "AudioPlayerImpl"

    const-string v3, "MediaPlayer exception"

    .line 755
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 762
    :pswitch_1
    monitor-exit p0

    return v1

    :goto_0
    :try_start_3
    const-string v1, "Media Player is in unexpected state"

    .line 760
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized internalGetPlaybackPosition()I
    .locals 4

    monitor-enter p0

    .line 769
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalGetPlaybackPosition, m_currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m_targetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 793
    new-instance v0, Ljava/lang/AssertionError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 786
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "AudioPlayerImpl"

    const-string v3, "MediaPlayer exception"

    .line 788
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 795
    :pswitch_1
    monitor-exit p0

    return v1

    :goto_0
    :try_start_3
    const-string v1, "Media Player is in unexpected state"

    .line 793
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized internalInitialize()V
    .locals 3

    monitor-enter p0

    .line 479
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalInitialize, m_currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m_targetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m_resourceUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_resourceUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Idle:Lcom/amazon/krf/media/AudioPlayerImpl$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 484
    :try_start_1
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Initialized:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 485
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_resourceUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AudioPlayerImpl"

    const-string v2, "MediaPlayer exception"

    .line 487
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    :goto_0
    monitor-exit p0

    return-void

    .line 481
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Media Player is in unexpected state"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized internalIsPlaying()Z
    .locals 4

    monitor-enter p0

    .line 713
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalIsPlaying, m_currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m_targetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 730
    new-instance v0, Ljava/lang/AssertionError;

    goto :goto_0

    .line 726
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v3, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Started:Lcom/amazon/krf/media/AudioPlayerImpl$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    .line 724
    :pswitch_1
    monitor-exit p0

    return v1

    .line 728
    :pswitch_2
    monitor-exit p0

    return v2

    :goto_0
    :try_start_1
    const-string v1, "Media Player is in unexpected state"

    .line 730
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized internalPause(Z)V
    .locals 2

    monitor-enter p0

    .line 599
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalPause, m_currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m_targetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 636
    new-instance p1, Ljava/lang/AssertionError;

    goto :goto_1

    .line 611
    :pswitch_0
    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Paused:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-eq p1, v0, :cond_1

    .line 612
    sget-object p1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Paused:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 613
    invoke-virtual {p0, v1}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalNotifyMediaListeners(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 609
    :pswitch_1
    monitor-exit p0

    return-void

    .line 617
    :pswitch_2
    :try_start_1
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Paused:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_3
    if-eqz p1, :cond_0

    .line 622
    :try_start_2
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->abandonAudioFocus()V

    .line 624
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 627
    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Paused:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-ne p1, v0, :cond_1

    .line 628
    invoke-virtual {p0, v1}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalNotifyMediaListeners(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "AudioPlayerImpl"

    const-string v1, "MediaPlayer exception"

    .line 631
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 638
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    const-string v0, "Media Player is in unexpected state"

    .line 636
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized internalPlay()V
    .locals 3

    monitor-enter p0

    .line 533
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalPlay, m_currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m_targetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 534
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 588
    new-instance v0, Ljava/lang/AssertionError;

    goto :goto_2

    .line 569
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalSeekTo(I)V

    goto :goto_0

    .line 541
    :pswitch_1
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalReset()V

    .line 542
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v2, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Idle:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 548
    :cond_0
    :pswitch_2
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalInitialize()V

    .line 549
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v2, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Initialized:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 556
    :cond_1
    :pswitch_3
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalPrepareAsync()V

    .line 557
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v2, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Preparing:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 562
    :cond_2
    :pswitch_4
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v2, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Started:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-eq v0, v2, :cond_3

    .line 563
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Started:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 564
    invoke-virtual {p0, v1}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalNotifyMediaListeners(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 574
    :goto_0
    :pswitch_5
    :try_start_1
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Started:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 575
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->requestAudioFocus()V

    .line 576
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 579
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v2, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Started:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-ne v0, v2, :cond_3

    .line 580
    invoke-virtual {p0, v1}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalNotifyMediaListeners(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AudioPlayerImpl"

    const-string v2, "MediaPlayer exception"

    .line 583
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 537
    :pswitch_6
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    const-string v1, "Media Player is in unexpected state"

    .line 588
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized internalPrepareAsync()V
    .locals 3

    monitor-enter p0

    .line 496
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalPrepareAsync, m_currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m_targetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalReset()V

    .line 502
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Idle:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 508
    :cond_1
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalInitialize()V

    .line 509
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Initialized:Lcom/amazon/krf/media/AudioPlayerImpl$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 516
    :cond_2
    :try_start_1
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Preparing:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 517
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Paused:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 518
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AudioPlayerImpl"

    const-string v2, "MediaPlayer exception"

    .line 520
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized internalRelease()V
    .locals 4

    monitor-enter p0

    .line 802
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalRelease, m_currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m_targetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 803
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->abandonAudioFocus()V

    .line 804
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 805
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_mediaPlayerListener:Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_mediaPlayerListener:Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;->onMediaPlayerDestroyed(Landroid/media/MediaPlayer;)V

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/amazon/krf/media/AudioPlayerImpl;->releaseMediaPlayer(Landroid/media/MediaPlayer;)V

    const/4 v0, 0x0

    .line 811
    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    .line 815
    :cond_1
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 839
    new-instance v0, Ljava/lang/AssertionError;

    goto :goto_1

    .line 825
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v3, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Started:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    :pswitch_1
    const/4 v2, 0x0

    .line 842
    :goto_0
    :pswitch_2
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->End:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-eqz v2, :cond_3

    .line 845
    invoke-virtual {p0, v1}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalNotifyMediaListeners(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    const-string v1, "Media Player is in unexpected state"

    .line 839
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized internalReset()V
    .locals 4

    monitor-enter p0

    .line 361
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalReset, m_currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m_targetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalIsPlaying()Z

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v2, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Idle:Lcom/amazon/krf/media/AudioPlayerImpl$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_1

    .line 368
    :try_start_1
    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Idle:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 369
    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->createMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    .line 372
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 373
    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 374
    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 376
    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_mediaPlayerListener:Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_mediaPlayerListener:Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;

    iget-object v2, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;->onMediaPlayerCreated(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 383
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->abandonAudioFocus()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "AudioPlayerImpl"

    const-string v3, "MediaPlayer exception"

    .line 386
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, v0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalNotifyMediaListeners(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized internalSeekTo(I)V
    .locals 2

    monitor-enter p0

    .line 681
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalSeekTo, m_currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m_targetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "AudioPlayerImpl"

    goto :goto_1

    .line 685
    :pswitch_0
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalPrepareAsync()V

    .line 690
    :pswitch_1
    iput p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_bufferedSeekTo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 697
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "AudioPlayerImpl"

    const-string v1, "MediaPlayer exception"

    .line 699
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 707
    :goto_0
    monitor-exit p0

    return-void

    .line 704
    :goto_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid state for seekTo ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 705
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized internalStop()V
    .locals 3

    monitor-enter p0

    .line 644
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalStop, m_currentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", m_targetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 645
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 673
    new-instance v0, Ljava/lang/AssertionError;

    goto :goto_1

    .line 655
    :pswitch_0
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 652
    :pswitch_1
    monitor-exit p0

    return-void

    .line 662
    :pswitch_2
    :try_start_1
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Stopped:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 663
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->abandonAudioFocus()V

    .line 664
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 666
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AudioPlayerImpl"

    const-string v2, "MediaPlayer exception"

    .line 668
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 675
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    const-string v1, "Media Player is in unexpected state"

    .line 673
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private requestAudioFocus()V
    .locals 3

    .line 431
    iget-boolean v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_shouldRequestAudioFocus:Z

    if-nez v0, :cond_0

    return-void

    .line 435
    :cond_0
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_audioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

    if-nez v0, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->getSystemAudioManager()Lcom/amazon/krf/media/IAudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    new-instance v1, Lcom/amazon/krf/media/AudioManagerProxy;

    iget-object v2, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_audioFocusChangeListener:Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;

    invoke-direct {v1, v0, v2}, Lcom/amazon/krf/media/AudioManagerProxy;-><init>(Lcom/amazon/krf/media/IAudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    sput-object v1, Lcom/amazon/krf/media/AudioPlayerImpl;->m_audioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

    .line 442
    :cond_1
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_audioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

    if-eqz v0, :cond_2

    .line 443
    invoke-virtual {v0}, Lcom/amazon/krf/media/AudioManagerProxy;->requestAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_audioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_audioFocusChangeListener:Lcom/amazon/krf/media/AudioPlayerImpl$AudioFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/amazon/krf/media/AudioManagerProxy;->addFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AudioPlayerImpl"

    const-string v2, "MediaPlayer.setVolume failed"

    .line 448
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected createMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 403
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    return-object v0
.end method

.method public getAudioManagerProxy()Lcom/amazon/krf/media/AudioManagerProxy;
    .locals 1

    .line 424
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_audioManagerProxy:Lcom/amazon/krf/media/AudioManagerProxy;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 235
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalGetDuration()I

    move-result v0

    return v0
.end method

.method public getPlaybackPosition()I
    .locals 1

    .line 240
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalGetPlaybackPosition()I

    move-result v0

    return v0
.end method

.method protected getSystemAudioManager()Lcom/amazon/krf/media/IAudioManager;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 413
    invoke-static {v0}, Lcom/amazon/krf/media/AudioManagerProxy;->getSystemAudioManager(Landroid/content/Context;)Lcom/amazon/krf/media/IAudioManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected internalNotifyMediaListeners(I)V
    .locals 0

    .line 472
    invoke-virtual {p0, p1}, Lcom/amazon/krf/media/BaseAudioPlayer;->notifyMediaListeners(I)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 230
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalIsPlaying()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized notifyMediaURIAvailable(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_resourceUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_resourceUri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    iput-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_resourceUri:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    monitor-enter p0

    .line 250
    :try_start_0
    sget-object p1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->PlaybackCompleted:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    const/4 p1, 0x2

    .line 251
    invoke-virtual {p0, p1}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalNotifyMediaListeners(I)V

    .line 253
    iget-boolean p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_looping:Z

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 255
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalPlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 259
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalNotifyMediaListeners(I)V

    .line 261
    iget-boolean v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_pauseOnCompletion:Z

    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0, p1}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalPause(Z)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    monitor-enter p0

    .line 271
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_resourceUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - what : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - extra : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/high16 p1, -0x80000000

    if-eq p3, p1, :cond_1

    const/16 p1, -0x3f2

    if-eq p3, p1, :cond_0

    const/16 p1, -0x3ef

    if-eq p3, p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    const/4 p2, 0x1

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/amazon/krf/media/BaseAudioPlayer;->notifyErrorToMediaListeners(IZ)V

    .line 290
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    monitor-enter p0

    .line 300
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_resourceUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    if-ne v0, p1, :cond_8

    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Preparing:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 308
    :cond_0
    sget-object p1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Prepared:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    iput-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 309
    iget p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_bufferedSeekTo:I

    if-ltz p1, :cond_1

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Seeking to : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_bufferedSeekTo:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_bufferedSeekTo:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, -0x1

    .line 312
    iput p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_bufferedSeekTo:I

    .line 315
    :cond_1
    iget-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    const/4 v3, 0x0

    .line 318
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    if-ne v4, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 325
    :goto_1
    iput-boolean p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_shouldRequestAudioFocus:Z

    .line 328
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyTargetState, m_currentState: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", m_targetState: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    sget-object p1, Lcom/amazon/krf/media/AudioPlayerImpl$1;->$SwitchMap$com$amazon$krf$media$AudioPlayerImpl$State:[I

    iget-object v3, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_targetState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-eq p1, v2, :cond_7

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 339
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalStop()V

    goto :goto_2

    .line 349
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Media Player has an unexpected target state"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 334
    :cond_6
    invoke-direct {p0, v2}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalPause(Z)V

    .line 336
    invoke-virtual {p0, v1}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalNotifyMediaListeners(I)V

    goto :goto_2

    .line 331
    :cond_7
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalPlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :goto_2
    monitor-exit p0

    return-void

    :cond_8
    :goto_3
    :try_start_1
    const-string p1, "AudioPlayerImpl"

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media Player is in unexpected state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_currentState:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 210
    invoke-direct {p0, v0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalPause(Z)V

    return-void
.end method

.method public play()V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalPlay()V

    return-void
.end method

.method public prepareAsync()V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalPrepareAsync()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 245
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalRelease()V

    return-void
.end method

.method protected releaseMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 853
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/amazon/krf/media/AudioPlayerImpl$ReleasePlayerTask;

    invoke-direct {v1, p0, p1}, Lcom/amazon/krf/media/AudioPlayerImpl$ReleasePlayerTask;-><init>(Lcom/amazon/krf/media/AudioPlayerImpl;Landroid/media/MediaPlayer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalSeekTo(I)V

    return-void
.end method

.method public declared-synchronized setLooping(Z)V
    .locals 0

    monitor-enter p0

    .line 225
    :try_start_0
    iput-boolean p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_looping:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMediaPlayerLifecycleListener(Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_mediaPlayerListener:Lcom/amazon/krf/media/AudioPlayerImpl$MediaPlayerLifecycleListener;

    return-void
.end method

.method public setPauseOnCompletion(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/amazon/krf/media/AudioPlayerImpl;->m_pauseOnCompletion:Z

    return-void
.end method

.method public stop()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/amazon/krf/media/AudioPlayerImpl;->internalStop()V

    return-void
.end method
