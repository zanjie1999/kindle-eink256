.class public Lcom/amazon/kcp/reader/ui/ReaderAudioControl;
.super Landroid/widget/LinearLayout;
.source "ReaderAudioControl.java"


# static fields
.field private static final SEEKER_SHUTDOWN_TIMEOUT:I = 0x1f4

.field private static final SEEKER_UPDATE_INTERVAL:I = 0x1f4

.field private static final STOP_BUTTON_SCALE:F = 0.75f

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private audioPlayer:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

.field private audioPlayerListener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;

.field private pauseButton:Landroid/widget/ImageView;

.field private playButton:Landroid/widget/ImageView;

.field private volatile playingAudio:Z

.field private seekbarUpdateThread:Ljava/util/concurrent/ScheduledExecutorService;

.field protected seekerControl:Landroid/widget/SeekBar;

.field private stopButton:Landroid/widget/ImageView;

.field private volatile trackingSeekbarTouch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->seekbarUpdateThread:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->playingAudio:Z

    .line 33
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->trackingSeekbarTouch:Z

    .line 153
    new-instance p1, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$6;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$6;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->audioPlayerListener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->trackingSeekbarTouch:Z

    return p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->trackingSeekbarTouch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->audioPlayer:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->playingAudio:Z

    return p0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->playingAudio:Z

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->playButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->pauseButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->destroy()V

    return-void
.end method

.method private destroy()V
    .locals 3

    .line 131
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->shutdownSeekbarUpdateThread()V

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->seekerControl:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->seekerControl:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->stopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private shutdownSeekbarUpdateThread()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->seekbarUpdateThread:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 141
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->seekbarUpdateThread:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->seekbarUpdateThread:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->TAG:Ljava/lang/String;

    const-string v1, "Audio control seekbar update thread did not shutdown!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->seekbarUpdateThread:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_1
    return-void
.end method


# virtual methods
.method public attachToAudioPlayer(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V
    .locals 8

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->audioPlayer:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->audioPlayer:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->seekerControl:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->getDuration()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 48
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->seekerControl:Landroid/widget/SeekBar;

    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->playButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$2;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->pauseButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$3;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->stopButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$4;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object p1

    const-string v0, "SeekbarUpdate_worker"

    .line 87
    invoke-interface {p1, v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 88
    invoke-interface {p1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->seekbarUpdateThread:Ljava/util/concurrent/ScheduledExecutorService;

    .line 89
    new-instance v2, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$5;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$5;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x1f4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 101
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->audioPlayer:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->audioPlayerListener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->registerListener(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;)V

    .line 102
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->audioPlayer:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->isPlaying()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->playingAudio:Z

    .line 104
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_1
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->playingAudio:Z

    .line 108
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 115
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 117
    sget v0, Lcom/amazon/kindle/krl/R$id;->start_audio_player:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->playButton:Landroid/widget/ImageView;

    .line 118
    sget v0, Lcom/amazon/kindle/krl/R$id;->pause_audio_player:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->pauseButton:Landroid/widget/ImageView;

    .line 119
    sget v0, Lcom/amazon/kindle/krl/R$id;->stop_audio_player:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->stopButton:Landroid/widget/ImageView;

    .line 120
    sget v0, Lcom/amazon/kindle/krl/R$id;->audio_player_seekbar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->seekerControl:Landroid/widget/SeekBar;

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->playButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->pauseButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->stopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->stopButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->stopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method
