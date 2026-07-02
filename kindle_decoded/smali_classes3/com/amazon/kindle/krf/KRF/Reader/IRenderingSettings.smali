.class public Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings$EColorMode;,
        Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings$ESubpixelRendering;,
        Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings$ETextAlignment;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_IRenderingSettings(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->delete()V

    return-void
.end method

.method public getAdditionalLineSpacing()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getAdditionalLineSpacing(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getAudioCapability()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getAudioCapability(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z

    move-result v0

    return v0
.end method

.method public getAudioControlMinHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getAudioControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getAudioControlMinWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getAudioControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getBackgroundColor()Lcom/amazon/kindle/krf/KRF/Graphics/IColor;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getBackgroundColor(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;-><init>(JZ)V

    return-object v0
.end method

.method public getBackingScaleFactor()F
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getBackingScaleFactor(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)F

    move-result v0

    return v0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getCachePath(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorMode()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getColorMode(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getColumnCount()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getColumnCount(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getDPI()F
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getDPI(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)F

    move-result v0

    return v0
.end method

.method public getDefaultFallbackFontFace()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getDefaultFallbackFontFace(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFontFace()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getDefaultFontFace(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMonospaceFontFace()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getDefaultMonospaceFontFace(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSansSerifFontFace()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getDefaultSansSerifFontFace(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackFontConfigurationFile()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getFallbackFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontConfigurationFile()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()F
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getFontSize(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getHeight(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getHorizontalMargin()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getHorizontalMargin(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getLetterSpacing()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getLetterSpacing(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getLinkColor()Lcom/amazon/kindle/krf/KRF/Graphics/IColor;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getLinkColor(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;-><init>(JZ)V

    return-object v0
.end method

.method public getMaxNumCaches()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getMaxNumCaches(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getSpaceBetweenColumns()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getSpaceBetweenColumns(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getSubpixelRendering()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getSubpixelRendering(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getTextAlignment()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getTextAlignment(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getTextColor()Lcom/amazon/kindle/krf/KRF/Graphics/IColor;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getTextColor(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;-><init>(JZ)V

    return-object v0
.end method

.method public getVerticalMargin()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getVerticalMargin(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getVideoCapability()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getVideoCapability(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z

    move-result v0

    return v0
.end method

.method public getVideoControlMinHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getVideoControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getVideoControlMinWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getVideoControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_getWidth(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)I

    move-result v0

    return v0
.end method

.method public isHDContentPreferred()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_isHDContentPreferred(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z

    move-result v0

    return v0
.end method

.method public isPageAlignmentEnforced()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_isPageAlignmentEnforced(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z

    move-result v0

    return v0
.end method

.method public isPreloadingEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IRenderingSettings_isPreloadingEnabled(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z

    move-result v0

    return v0
.end method
