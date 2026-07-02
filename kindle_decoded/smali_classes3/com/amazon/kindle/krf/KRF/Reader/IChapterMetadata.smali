.class public Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_IChapterMetadata(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->delete()V

    return-void
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getAuthor(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChapterID()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getChapterID(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getDescription(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKicker()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getKicker(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getLayout(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getName(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScrubberLandscape()Lcom/amazon/kindle/krf/KRF/Reader/IChapterResource;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getScrubberLandscape(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IChapterResource;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IChapterResource;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getScrubberPortrait()Lcom/amazon/kindle/krf/KRF/Reader/IChapterResource;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getScrubberPortrait(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IChapterResource;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IChapterResource;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getSmoothScrolling()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getSmoothScrolling(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getTags(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailsLandscape()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getThumbnailsLandscape(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;-><init>(JZ)V

    return-object v0
.end method

.method public getThumbnailsPortrait()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getThumbnailsPortrait(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;-><init>(JZ)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getTitle(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToc()Lcom/amazon/kindle/krf/KRF/Reader/IChapterResource;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_getToc(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IChapterResource;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IChapterResource;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public hasAudio()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_hasAudio(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Z

    move-result v0

    return v0
.end method

.method public hasSlideshow()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_hasSlideshow(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Z

    move-result v0

    return v0
.end method

.method public hasVideo()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_hasVideo(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Z

    move-result v0

    return v0
.end method

.method public hideFromTOC()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_hideFromTOC(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Z

    move-result v0

    return v0
.end method

.method public isAdvertisement()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IChapterMetadata_isAdvertisement(JLcom/amazon/kindle/krf/KRF/Reader/IChapterMetadata;)Z

    move-result v0

    return v0
.end method
