.class public Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;
.super Ljava/lang/Object;
.source "DictionaryRenderingSettings.java"


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-direct {p0}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->createNativeDictionaryRenderingSettings()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->handle:J

    return-void
.end method

.method private native createNativeDictionaryRenderingSettings()J
.end method

.method private native delete()V
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 5

    monitor-enter p0

    .line 114
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->delete()V

    .line 116
    iput-wide v2, p0, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->dispose()V

    return-void
.end method

.method public synchronized native getAdditionalLineSpacing()I
.end method

.method public synchronized native getAudioCapability()Z
.end method

.method public synchronized native getAudioControlMinHeight()I
.end method

.method public synchronized native getAudioControlMinWidth()I
.end method

.method public synchronized native getBackgroundColor()I
.end method

.method public synchronized native getColumnCount()I
.end method

.method public synchronized native getDPI()F
.end method

.method public synchronized native getDefaultFontFace()Ljava/lang/String;
.end method

.method public synchronized native getFallbackFontConfigurationFile()Ljava/lang/String;
.end method

.method public synchronized native getFontConfigurationFile()Ljava/lang/String;
.end method

.method public synchronized native getFontSize()F
.end method

.method public synchronized native getHeight()I
.end method

.method public synchronized native getHorizontalMargin()I
.end method

.method public synchronized native getLinkColor()I
.end method

.method public synchronized native getSpaceBetweenColumns()I
.end method

.method public synchronized native getTextColor()I
.end method

.method public synchronized native getVerticalMargin()I
.end method

.method public synchronized native getVideoCapability()Z
.end method

.method public synchronized native getVideoControlMinHeight()I
.end method

.method public synchronized native getVideoControlMinWidth()I
.end method

.method public synchronized native getWidth()I
.end method

.method public synchronized native setAdditionalLineSpacing(I)V
.end method

.method public synchronized native setAudioCapability(Z)V
.end method

.method public synchronized native setAudioControlMinHeight(I)V
.end method

.method public synchronized native setAudioControlMinWidth(I)V
.end method

.method public synchronized native setBackgroundColor(I)V
.end method

.method public synchronized native setColumnCount(I)V
.end method

.method public synchronized native setDPI(F)V
.end method

.method public synchronized native setDefaultFontFace(Ljava/lang/String;)V
.end method

.method public synchronized native setFallbackFontConfigurationFile(Ljava/lang/String;)V
.end method

.method public synchronized native setFontConfigurationFile(Ljava/lang/String;)V
.end method

.method public synchronized native setFontSize(F)V
.end method

.method public synchronized native setHeight(I)V
.end method

.method public synchronized native setHorizontalMargin(I)V
.end method

.method public synchronized native setLinkColor(I)V
.end method

.method public synchronized native setSpaceBetweenColumns(I)V
.end method

.method public synchronized native setTextColor(I)V
.end method

.method public synchronized native setVerticalMargin(I)V
.end method

.method public synchronized native setVideoCapability(Z)V
.end method

.method public synchronized native setVideoControlMinHeight(I)V
.end method

.method public synchronized native setVideoControlMinWidth(I)V
.end method

.method public synchronized native setWidth(I)V
.end method
