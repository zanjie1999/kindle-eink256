.class public Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;
.super Ljava/lang/Object;
.source "ReaderAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;,
        Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private anchorView:Landroid/widget/FrameLayout;

.field private audioControlView:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

.field private audioFocusListener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;

.field private audioManager:Landroid/media/AudioManager;

.field private fileLocation:Landroid/net/Uri;

.field private listener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private playbackCompletedOnce:Z

.field private readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private readerLayoutEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->playbackCompletedOnce:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioManager:Landroid/media/AudioManager;

    .line 44
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 47
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioControlView:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    .line 48
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->anchorView:Landroid/widget/FrameLayout;

    .line 50
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioFocusListener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;

    .line 90
    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->onCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 103
    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$2;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 300
    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$4;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->readerLayoutEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    .line 113
    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 114
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->fileLocation:Landroid/net/Uri;

    .line 115
    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    .line 117
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->onCompleteListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 118
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 119
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->readerLayoutEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->registerLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    :cond_0
    const-string p2, "audio"

    .line 121
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioManager:Landroid/media/AudioManager;

    .line 122
    new-instance p1, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$1;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioFocusListener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->playbackCompletedOnce:Z

    return p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->playbackCompletedOnce:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->listener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->isControlViewVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->onPlaybackError(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Lcom/amazon/kcp/reader/ui/ReaderAudioControl;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioControlView:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->isLocationSeekerVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)Landroid/media/AudioManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$800()Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/net/Uri;Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->getCurrentFile()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->getCurrentFile()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->destroy()V

    .line 62
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    .line 65
    :cond_2
    :goto_1
    sget-object p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->isReady()Z

    move-result p0

    if-nez p0, :cond_3

    .line 66
    sget-object p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create media player for audio content: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->onPlaybackError(II)V

    .line 69
    sget-object p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->destroy()V

    const/4 p0, 0x0

    .line 70
    sput-object p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    .line 72
    :cond_3
    sget-object p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    return-object p0
.end method

.method private initializeAudioPlayerControl()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioControlView:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->anchorView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->audio_player:I

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->anchorView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 270
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->anchorView:Landroid/widget/FrameLayout;

    sget v1, Lcom/amazon/kindle/krl/R$id;->audio_player_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioControlView:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    .line 271
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->attachToAudioPlayer(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-void
.end method

.method private isControlViewVisible()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioControlView:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLocationSeekerVisible()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getVisibleOverlays()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onPlaybackError(II)V
    .locals 2

    .line 277
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 279
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/amazon/kindle/krl/R$string;->luna_error_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/amazon/kindle/krl/R$string;->luna_error_message:I

    .line 280
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/amazon/kindle/krl/R$string;->ok:I

    .line 281
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$3;-><init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 286
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    .line 287
    invoke-static {p1, p2}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method private pausePlayback()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->listener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;

    if-eqz v0, :cond_1

    .line 263
    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;->onPlaybackPaused()V

    :cond_1
    return-void
.end method

.method private startPlayback()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->initializeAudioPlayerControl()V

    .line 250
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->listener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;

    if-eqz v0, :cond_1

    .line 252
    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;->onPlaybackStarted()V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->listener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;->onDestroy()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 208
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->anchorView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioControlView:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->readerLayoutEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->removeLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    .line 216
    sput-object v1, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->INSTANCE:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    return-void
.end method

.method public getCurrentFile()Landroid/net/Uri;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->fileLocation:Landroid/net/Uri;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 240
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 228
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerListener(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->listener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;

    return-void
.end method

.method public requestPause()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioFocusListener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 183
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->pausePlayback()V

    return-void
.end method

.method public requestStart()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioFocusListener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$AudioFocusListener;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->startPlayback()V

    goto :goto_0

    .line 174
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Failed to gain audio focus while attempting to play Luna audio content"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->listener:Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;

    if-eqz v0, :cond_1

    .line 197
    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$Listener;->onSeekPositionChanged(I)V

    :cond_1
    return-void
.end method

.method public setControlViewAnchor(Landroid/widget/FrameLayout;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->anchorView:Landroid/widget/FrameLayout;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioControlView:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioControlView:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioControlView:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->audioControlView:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 134
    :cond_1
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->anchorView:Landroid/widget/FrameLayout;

    :cond_2
    :goto_0
    return-void
.end method
