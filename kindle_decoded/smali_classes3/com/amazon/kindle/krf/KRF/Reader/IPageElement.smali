.class public Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krf/KRF/Reader/IPageElement$EElementType;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_IPageElement(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->delete()V

    return-void
.end method

.method public getCoveringRectangles()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IPageElement_getCoveringRectangles(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;-><init>(JZ)V

    return-object v0
.end method

.method public getEndId()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IPageElement_getEndId(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public getId()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IPageElement_getId(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public getType()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IPageElement_getType(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)I

    move-result v0

    return v0
.end method

.method public interpretAsIAudioPageElement()Lcom/amazon/kindle/krf/KRF/Reader/IAudioPageElement;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IPageElement_interpretAsIAudioPageElement(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IAudioPageElement;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IAudioPageElement;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public interpretAsIImagePageElement()Lcom/amazon/kindle/krf/KRF/Reader/IImagePageElement;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IPageElement_interpretAsIImagePageElement(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IImagePageElement;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IImagePageElement;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public interpretAsIPluginPageElement()Lcom/amazon/kindle/krf/KRF/Reader/IPluginPageElement;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IPageElement_interpretAsIPluginPageElement(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IPluginPageElement;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IPluginPageElement;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public interpretAsITogglablePageElement()Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IPageElement_interpretAsITogglablePageElement(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public interpretAsIVideoPageElement()Lcom/amazon/kindle/krf/KRF/Reader/IVideoPageElement;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IPageElement_interpretAsIVideoPageElement(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IVideoPageElement;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IVideoPageElement;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public interpretAsIWordPageElement()Lcom/amazon/kindle/krf/KRF/Reader/IWordPageElement;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IPageElement;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IPageElement_interpretAsIWordPageElement(JLcom/amazon/kindle/krf/KRF/Reader/IPageElement;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IWordPageElement;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IWordPageElement;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method
