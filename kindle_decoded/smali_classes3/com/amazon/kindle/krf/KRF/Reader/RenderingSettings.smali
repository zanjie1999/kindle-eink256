.class public Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;
.super Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_Reader_RenderingSettings__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;-><init>(JZ)V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)V
    .locals 2

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_Reader_RenderingSettings__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static getKDefaultAdditionalLineSpacing()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultAdditionalLineSpacing_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultAudioCapability()Z
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultAudioCapability_get()Z

    move-result v0

    return v0
.end method

.method public static getKDefaultAudioControlMinHeight()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultAudioControlMinHeight_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultAudioControlMinWidth()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultAudioControlMinWidth_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultBackgroundColor()Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;
    .locals 5

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultBackgroundColor_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static getKDefaultBackingScaleFactor()F
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultBackingScaleFactor_get()F

    move-result v0

    return v0
.end method

.method public static getKDefaultCachePath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultCachePath_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKDefaultColorMode()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultColorMode_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultColumnCount()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultColumnCount_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultDPI()F
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultDPI_get()F

    move-result v0

    return v0
.end method

.method public static getKDefaultFallbackFontConfigurationFile()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultFallbackFontConfigurationFile_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKDefaultFallbackFontFace()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultFallbackFontFace_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKDefaultFontConfigurationFile()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultFontConfigurationFile_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKDefaultFontFace()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultFontFace_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKDefaultFontSize()F
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultFontSize_get()F

    move-result v0

    return v0
.end method

.method public static getKDefaultHDPreferred()Z
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultHDPreferred_get()Z

    move-result v0

    return v0
.end method

.method public static getKDefaultHeight()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultHeight_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultHorizontalMargin()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultHorizontalMargin_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultLetterSpacing()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultLetterSpacing_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultLinkColor()Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;
    .locals 5

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultLinkColor_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static getKDefaultMaxNumCaches()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultMaxNumCaches_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultMonospaceFontFace()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultMonospaceFontFace_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKDefaultPageAlignementEnforcement()Z
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultPageAlignementEnforcement_get()Z

    move-result v0

    return v0
.end method

.method public static getKDefaultPreloadingEnabled()Z
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultPreloadingEnabled_get()Z

    move-result v0

    return v0
.end method

.method public static getKDefaultSansSerifFontFace()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultSansSerifFontFace_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKDefaultSpaceBetweenColumns()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultSpaceBetweenColumns_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultTextAlignment()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultTextAlignment_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultTextColor()Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;
    .locals 5

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultTextColor_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static getKDefaultVerticalMargin()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultVerticalMargin_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultVideoCapability()Z
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultVideoCapability_get()Z

    move-result v0

    return v0
.end method

.method public static getKDefaultVideoControlMinHeight()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultVideoControlMinHeight_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultVideoControlMinWidth()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultVideoControlMinWidth_get()I

    move-result v0

    return v0
.end method

.method public static getKDefaultWidth()I
    .locals 1

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultWidth_get()I

    move-result v0

    return v0
.end method

.method public static setKDefaultCachePath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultCachePath_set(Ljava/lang/String;)V

    return-void
.end method

.method public static setKDefaultFallbackFontConfigurationFile(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultFallbackFontConfigurationFile_set(Ljava/lang/String;)V

    return-void
.end method

.method public static setKDefaultFallbackFontFace(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultFallbackFontFace_set(Ljava/lang/String;)V

    return-void
.end method

.method public static setKDefaultFontConfigurationFile(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultFontConfigurationFile_set(Ljava/lang/String;)V

    return-void
.end method

.method public static setKDefaultFontFace(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultFontFace_set(Ljava/lang/String;)V

    return-void
.end method

.method public static setKDefaultMonospaceFontFace(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultMonospaceFontFace_set(Ljava/lang/String;)V

    return-void
.end method

.method public static setKDefaultSansSerifFontFace(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_kDefaultSansSerifFontFace_set(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public areSettingsDifferentForLayout(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Z)Z
    .locals 7

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_areSettingsDifferentForLayout(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Z)Z

    move-result p1

    return p1
.end method

.method public assign(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;
    .locals 7

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_assign(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_RenderingSettings(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->delete()V

    return-void
.end method

.method public getAdditionalLineSpacing()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getAdditionalLineSpacing(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getAudioCapability()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getAudioCapability(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Z

    move-result v0

    return v0
.end method

.method public getAudioControlMinHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getAudioControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getAudioControlMinWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getAudioControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getBackgroundColor()Lcom/amazon/kindle/krf/KRF/Graphics/IColor;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getBackgroundColor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;-><init>(JZ)V

    return-object v0
.end method

.method public getBackingScaleFactor()F
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getBackingScaleFactor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)F

    move-result v0

    return v0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getCachePath(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorMode()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getColorMode(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getColumnCount()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getColumnCount(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getDPI()F
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getDPI(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)F

    move-result v0

    return v0
.end method

.method public getDefaultFallbackFontFace()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getDefaultFallbackFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFontFace()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getDefaultFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMonospaceFontFace()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getDefaultMonospaceFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSansSerifFontFace()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getDefaultSansSerifFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackFontConfigurationFile()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getFallbackFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontConfigurationFile()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()F
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getFontSize(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getHeight(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getHorizontalMargin()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getHorizontalMargin(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getLetterSpacing()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getLetterSpacing(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getLinkColor()Lcom/amazon/kindle/krf/KRF/Graphics/IColor;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getLinkColor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;-><init>(JZ)V

    return-object v0
.end method

.method public getMaxNumCaches()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getMaxNumCaches(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getSpaceBetweenColumns()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getSpaceBetweenColumns(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getSubpixelRendering()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getSubpixelRendering(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getTextAlignment()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getTextAlignment(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getTextColor()Lcom/amazon/kindle/krf/KRF/Graphics/IColor;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getTextColor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;-><init>(JZ)V

    return-object v0
.end method

.method public getVerticalMargin()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getVerticalMargin(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getVideoCapability()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getVideoCapability(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Z

    move-result v0

    return v0
.end method

.method public getVideoControlMinHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getVideoControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getVideoControlMinWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getVideoControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_getWidth(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)I

    move-result v0

    return v0
.end method

.method public isHDContentPreferred()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_isHDContentPreferred(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Z

    move-result v0

    return v0
.end method

.method public isPageAlignmentEnforced()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_isPageAlignmentEnforced(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Z

    move-result v0

    return v0
.end method

.method public isPreloadingEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_isPreloadingEnabled(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)Z

    move-result v0

    return v0
.end method

.method public setAdditionalLineSpacing(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setAdditionalLineSpacing(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setAudioCapability(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setAudioCapability(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Z)V

    return-void
.end method

.method public setAudioControlMinHeight(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setAudioControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setAudioControlMinWidth(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setAudioControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setBackgroundColor(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setBackgroundColor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)V

    return-void
.end method

.method public setBackingScaleFactor(F)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setBackingScaleFactor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;F)V

    return-void
.end method

.method public setCachePath(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setCachePath(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V

    return-void
.end method

.method public setColorMode(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setColorMode(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setColumnCount(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setColumnCount(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setDPI(F)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setDPI(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;F)V

    return-void
.end method

.method public setDefaultFallbackFontFace(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setDefaultFallbackFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultFontFace(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setDefaultFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultMonospaceFontFace(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setDefaultMonospaceFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultSansSerifFontFace(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setDefaultSansSerifFontFace(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V

    return-void
.end method

.method public setFallbackFontConfigurationFile(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setFallbackFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V

    return-void
.end method

.method public setFontConfigurationFile(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setFontConfigurationFile(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Ljava/lang/String;)V

    return-void
.end method

.method public setFontSize(F)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setFontSize(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;F)V

    return-void
.end method

.method public setHDContentPreferred(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setHDContentPreferred(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Z)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setHeight(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setHorizontalMargin(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setHorizontalMargin(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setLetterSpacing(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setLetterSpacing(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setLinkColor(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setLinkColor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)V

    return-void
.end method

.method public setMaxNumCaches(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setMaxNumCaches(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setPageAlignmentEnforced(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setPageAlignmentEnforced(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Z)V

    return-void
.end method

.method public setPreloadingEnabled(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setPreloadingEnabled(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Z)V

    return-void
.end method

.method public setSpaceBetweenColumns(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setSpaceBetweenColumns(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setSubpixelRendering(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setSubpixelRendering(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setTextAlignment(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setTextAlignment(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setTextColor(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setTextColor(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)V

    return-void
.end method

.method public setVerticalMargin(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setVerticalMargin(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setVideoCapability(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setVideoCapability(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Z)V

    return-void
.end method

.method public setVideoControlMinHeight(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setVideoControlMinHeight(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setVideoControlMinWidth(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setVideoControlMinWidth(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_setWidth(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;I)V

    return-void
.end method

.method public valueEquals(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_valueEquals(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z

    move-result p1

    return p1
.end method

.method public valueNotEquals(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettings_valueNotEquals(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Z

    move-result p1

    return p1
.end method
