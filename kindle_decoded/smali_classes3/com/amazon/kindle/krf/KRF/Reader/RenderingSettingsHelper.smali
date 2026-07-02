.class public Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_Reader_RenderingSettingsHelper()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;->swigCPtr:J

    return-void
.end method

.method public static applyLimitations(Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)V
    .locals 6

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettingsHelper_applyLimitations(JLcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)V

    return-void
.end method

.method public static checkSettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z
    .locals 6

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettingsHelper_checkSettings(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Z

    move-result p0

    return p0
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method public static getSettingsSummary(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettingsHelper_getSettingsSummary(JLcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;JLcom/amazon/kindle/krf/KRF/Reader/ISettingsLimitations;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isValidFontFace(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_RenderingSettingsHelper_isValidFontFace(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_RenderingSettingsHelper(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettingsHelper;->delete()V

    return-void
.end method
