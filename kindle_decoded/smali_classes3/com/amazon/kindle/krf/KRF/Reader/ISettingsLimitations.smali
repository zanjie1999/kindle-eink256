.class public Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public canChangeAdditionalLineSpacing()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeAdditionalLineSpacing(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeAudioControlMinHeight()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeAudioControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeAudioControlMinWidth()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeAudioControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeBackgroundColor()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeBackgroundColor(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeBackingScaleFactor()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeBackingScaleFactor(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeCachePath()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeCachePath(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeColorMode()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeColorMode(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeColumnCount()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeColumnCount(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeEnforcePageAlignment()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeEnforcePageAlignment(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeFallbackFontConfigurationFile()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeFallbackFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeFallbackFontFace()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeFallbackFontFace(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeFontConfigurationFile()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeFontFace()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeFontFace(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeFontSize()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeFontSize(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeHeight()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeHeight(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeHorizontalMargin()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeHorizontalMargin(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeLetterSpacing()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeLetterSpacing(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeLinkColor()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeLinkColor(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeMaxNumCaches()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeMaxNumCaches(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeMonospaceFontFace()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeMonospaceFontFace(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeSansSerifFontFace()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeSansSerifFontFace(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeSpaceBetweenColumns()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeSpaceBetweenColumns(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeSubpixelRendering()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeSubpixelRendering(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeTextAlignment()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeTextAlignment(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeTextColor()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeTextColor(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeVerticalMargin()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeVerticalMargin(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeVideoControlMinHeight()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeVideoControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeVideoControlMinWidth()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeVideoControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canChangeWidth()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canChangeWidth(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canHandleAudioContent()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canHandleAudioContent(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public canHandleVideoContent()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_canHandleVideoContent(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_ISettingsLimitations(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->delete()V

    return-void
.end method

.method public isValidFontFace(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ISettingsLimitations_isValidFontFace(JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
