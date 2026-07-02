.class public Lcom/audible/android/kcp/player/PlayerNotificationEventListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "PlayerNotificationEventListener.java"


# static fields
.field private static final SAMPLE_AUDIO_FILE_URI_SUFFIX:Ljava/lang/String; = "_sample"


# instance fields
.field private final mAudiblePlayerUI:Lcom/audible/android/kcp/player/AudiblePlayerUI;


# direct methods
.method public constructor <init>(Lcom/audible/android/kcp/player/AudiblePlayerUI;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/audible/android/kcp/player/PlayerNotificationEventListener;->mAudiblePlayerUI:Lcom/audible/android/kcp/player/AudiblePlayerUI;

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/audible/android/kcp/player/PlayerNotificationEventListener;->mAudiblePlayerUI:Lcom/audible/android/kcp/player/AudiblePlayerUI;

    invoke-interface {p1}, Lcom/audible/android/kcp/player/AudiblePlayerUI;->updatePlayPauseButtons()V

    return-void
.end method

.method public onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 3

    .line 43
    invoke-virtual {p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/audible/android/kcp/player/PlayerNotificationEventListener;->mAudiblePlayerUI:Lcom/audible/android/kcp/player/AudiblePlayerUI;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "_sample"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/audible/android/kcp/player/AudiblePlayerUI;->updateView(ZZ)V

    :cond_0
    return-void
.end method

.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 3

    .line 54
    invoke-virtual {p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".partial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/audible/android/kcp/player/PlayerNotificationEventListener;->mAudiblePlayerUI:Lcom/audible/android/kcp/player/AudiblePlayerUI;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "_sample"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/audible/android/kcp/player/AudiblePlayerUI;->updateView(ZZ)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/audible/android/kcp/player/PlayerNotificationEventListener;->mAudiblePlayerUI:Lcom/audible/android/kcp/player/AudiblePlayerUI;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/AudiblePlayerUI;->updatePlayPauseButtons()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/audible/android/kcp/player/PlayerNotificationEventListener;->mAudiblePlayerUI:Lcom/audible/android/kcp/player/AudiblePlayerUI;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/AudiblePlayerUI;->updatePlayPauseButtons()V

    return-void
.end method
