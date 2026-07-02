.class public Lcom/amazon/overlay/translation/SpeakPlayer;
.super Ljava/lang/Object;
.source "SpeakPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/overlay/translation/SpeakPlayer$PrepareException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_audioFile:Ljava/io/File;

.field private final m_audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final m_audioManager:Landroid/media/AudioManager;

.field private m_mediaPlayer:Landroid/media/MediaPlayer;

.field private final m_translationDialogUI:Lcom/amazon/overlay/translation/TranslationDialogUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/overlay/translation/SpeakPlayer;

    invoke-static {v0}, Lcom/amazon/kcp/translation/Logger;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/overlay/translation/SpeakPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/overlay/translation/TranslationDialogUI;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_translationDialogUI:Lcom/amazon/overlay/translation/TranslationDialogUI;

    .line 78
    new-instance p2, Landroid/media/MediaPlayer;

    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p2, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 79
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "speak.mp3"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioFile:Ljava/io/File;

    const-string p2, "audio"

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioManager:Landroid/media/AudioManager;

    .line 81
    new-instance p1, Lcom/amazon/overlay/translation/SpeakPlayer$1;

    invoke-direct {p1, p0}, Lcom/amazon/overlay/translation/SpeakPlayer$1;-><init>(Lcom/amazon/overlay/translation/SpeakPlayer;)V

    iput-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/overlay/translation/SpeakPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/overlay/translation/SpeakPlayer;)Landroid/media/AudioManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method private clearCachedAudioFile()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lcom/amazon/overlay/translation/SpeakPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Cached speak file was not deleted correctly"

    invoke-static {v0, v1}, Lcom/amazon/kcp/translation/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getStartSpeakCallback()Landroid/view/View$OnClickListener;
    .locals 1

    .line 266
    new-instance v0, Lcom/amazon/overlay/translation/SpeakPlayer$3;

    invoke-direct {v0, p0}, Lcom/amazon/overlay/translation/SpeakPlayer$3;-><init>(Lcom/amazon/overlay/translation/SpeakPlayer;)V

    return-object v0
.end method

.method private getStopSpeakCallback()Landroid/view/View$OnClickListener;
    .locals 1

    .line 253
    new-instance v0, Lcom/amazon/overlay/translation/SpeakPlayer$2;

    invoke-direct {v0, p0}, Lcom/amazon/overlay/translation/SpeakPlayer$2;-><init>(Lcom/amazon/overlay/translation/SpeakPlayer;)V

    return-object v0
.end method

.method private handleFailure(Ljava/lang/IllegalStateException;)V
    .locals 3

    .line 233
    sget-object v0, Lcom/amazon/overlay/translation/SpeakPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal media player state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/translation/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_translationDialogUI:Lcom/amazon/overlay/translation/TranslationDialogUI;

    invoke-virtual {p1}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->HIDE_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->toggleSpeakIcon(Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;)V

    .line 235
    invoke-virtual {p0}, Lcom/amazon/overlay/translation/SpeakPlayer;->reset()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 194
    invoke-virtual {p0, p1}, Lcom/amazon/overlay/translation/SpeakPlayer;->stop(Z)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lcom/amazon/overlay/translation/SpeakPlayer;->onSeekComplete(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 203
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 212
    :try_start_0
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 214
    invoke-direct {p0, p1}, Lcom/amazon/overlay/translation/SpeakPlayer;->handleFailure(Ljava/lang/IllegalStateException;)V

    .line 216
    :goto_0
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_translationDialogUI:Lcom/amazon/overlay/translation/TranslationDialogUI;

    invoke-virtual {p1}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->STOP_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->toggleSpeakIcon(Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;)V

    .line 218
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_translationDialogUI:Lcom/amazon/overlay/translation/TranslationDialogUI;

    invoke-virtual {p1}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object p1

    invoke-direct {p0}, Lcom/amazon/overlay/translation/SpeakPlayer;->getStopSpeakCallback()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 221
    :cond_0
    invoke-virtual {p0, v1}, Lcom/amazon/overlay/translation/SpeakPlayer;->stop(Z)V

    .line 222
    sget-object p1, Lcom/amazon/overlay/translation/SpeakPlayer;->TAG:Ljava/lang/String;

    const-string v0, "could not get audio focus; not starting audio playback"

    invoke-static {p1, v0}, Lcom/amazon/kcp/translation/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public play()V
    .locals 2

    const-string v0, "PronunciationClick"

    .line 120
    iget-object v1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 121
    iget-object v1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 122
    iget-object v1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 127
    :try_start_1
    invoke-direct {p0, v1}, Lcom/amazon/overlay/translation/SpeakPlayer;->handleFailure(Ljava/lang/IllegalStateException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 129
    :goto_2
    invoke-static {v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    .line 130
    throw v1
.end method

.method public prepare(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/overlay/translation/SpeakPlayer$PrepareException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/overlay/translation/SpeakPlayer;->clearCachedAudioFile()V

    .line 103
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 104
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 105
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 107
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioFile:Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 108
    iget-object v1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 112
    new-instance v1, Lcom/amazon/overlay/translation/SpeakPlayer$PrepareException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/amazon/overlay/translation/SpeakPlayer$PrepareException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/overlay/translation/SpeakPlayer$1;)V

    throw v1

    :catch_1
    move-exception p1

    .line 110
    new-instance v1, Lcom/amazon/overlay/translation/SpeakPlayer$PrepareException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/amazon/overlay/translation/SpeakPlayer$PrepareException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/overlay/translation/SpeakPlayer$1;)V

    throw v1
.end method

.method public reset()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 164
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 166
    invoke-direct {p0}, Lcom/amazon/overlay/translation/SpeakPlayer;->clearCachedAudioFile()V

    return-void
.end method

.method public stop(Z)V
    .locals 2

    const-string v0, "StopSpeakTranslation"

    .line 140
    iget-object v1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 143
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 145
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 147
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazon/overlay/translation/SpeakPlayer;->handleFailure(Ljava/lang/IllegalStateException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/translation/TMetric;->reportMetric(Ljava/lang/String;)V

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_translationDialogUI:Lcom/amazon/overlay/translation/TranslationDialogUI;

    invoke-virtual {p1}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;->SPEAK_ICON:Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;->toggleSpeakIcon(Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton$IconState;)V

    .line 153
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_translationDialogUI:Lcom/amazon/overlay/translation/TranslationDialogUI;

    invoke-virtual {p1}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getResultText()Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 155
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer;->m_translationDialogUI:Lcom/amazon/overlay/translation/TranslationDialogUI;

    invoke-virtual {p1}, Lcom/amazon/overlay/translation/TranslationDialogUI;->getSpeakButton()Lcom/amazon/kcp/reader/ui/InfoCardPronunciationButton;

    move-result-object p1

    invoke-direct {p0}, Lcom/amazon/overlay/translation/SpeakPlayer;->getStartSpeakCallback()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 149
    :goto_1
    invoke-static {v0}, Lcom/amazon/kcp/translation/TMetric;->reportMetric(Ljava/lang/String;)V

    .line 150
    throw p1
.end method
