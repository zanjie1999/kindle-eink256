.class public Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public createBufferFromMetadata(I)Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_createBufferFromMetadata__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createBufferFromMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_createBufferFromMetadata__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createIntListFromMetadata(I)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArray;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_createIntListFromMetadata__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArray;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArray;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createIntListFromMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArray;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_createIntListFromMetadata__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArray;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIntArray;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createIntValueFromMetadata(I)Lcom/amazon/kindle/krf/KRF/Reader/IntValue;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_createIntValueFromMetadata__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KRF/Reader/IntValue;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/IntValue;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createIntValueFromMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krf/KRF/Reader/IntValue;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_createIntValueFromMetadata__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KRF/Reader/IntValue;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/IntValue;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createLabelFromLocation(J)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_createLabelFromLocation(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createStringListFromMetadata(I)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateUStringArray;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_createStringListFromMetadata__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateUStringArray;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateUStringArray;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public createStringListFromMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateUStringArray;
    .locals 4

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_createStringListFromMetadata__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateUStringArray;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateUStringArray;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_IDocumentInfo(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->delete()V

    return-void
.end method

.method public getAsin()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getAsin(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getAuthor(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseLanguage()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getBaseLanguage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookFileType()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getBookFileType(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I

    move-result v0

    return v0
.end method

.method public getCDEContentType()Lcom/amazon/kindle/krf/KBL/Foundation/UString;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/UString;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getCDEContentType(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/UString;-><init>(JZ)V

    return-object v0
.end method

.method public getChapterMetadatas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateChapterMetadataArray;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateChapterMetadataArray;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getChapterMetadatas(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateChapterMetadataArray;-><init>(JZ)V

    return-object v0
.end method

.method public getClippingLimit()F
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getClippingLimit(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)F

    move-result v0

    return v0
.end method

.method public getCover()Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getCover(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Graphics/IImageBuffer;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getCoverId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getCoverId(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getGuid(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInnerNavigationOrientation()Lcom/amazon/kindle/krf/KRF/Reader/IInnerNavigationOrientation;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/IInnerNavigationOrientation;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getInnerNavigationOrientation(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IInnerNavigationOrientation;-><init>(JZ)V

    return-object v0
.end method

.method public getLocationFromLabel(Ljava/lang/String;)J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getLocationFromLabel(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationFromPositionId(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getLocationFromPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;JLcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxLocation()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getMaxLocation(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxPositionId()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getMaxPositionId(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getMimeType(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNaturalHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getNaturalHeight(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I

    move-result v0

    return v0
.end method

.method public getNaturalWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getNaturalWidth(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I

    move-result v0

    return v0
.end method

.method public getOriginalHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getOriginalHeight(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I

    move-result v0

    return v0
.end method

.method public getOriginalWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getOriginalWidth(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I

    move-result v0

    return v0
.end method

.method public getPrimaryWritingMode()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getPrimaryWritingMode(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getPublisher(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublishingDate()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getPublishingDate(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadingDirection()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getReadingDirection(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)I

    move-result v0

    return v0
.end method

.method public getScaleFactor()D
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getScaleFactor(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSpanForRange(Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/kindle/krf/KRF/Reader/Position;)F
    .locals 9

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getSpanForRange(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;JLcom/amazon/kindle/krf/KRF/Reader/Position;JLcom/amazon/kindle/krf/KRF/Reader/Position;)F

    move-result p1

    return p1
.end method

.method public getStringFromMetadata(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getStringFromMetadata__SWIG_1(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringFromMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getStringFromMetadata__SWIG_0(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_getTitle(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAudioMedia()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_hasAudioMedia(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public hasContentFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_hasContentFeature(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasCoverPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_hasCoverPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public hasDictionaryLookups()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_hasDictionaryLookups(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public hasEmbeddedFonts()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_hasEmbeddedFonts(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public hasTocPage()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_hasTocPage(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public hasVideoMedia()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_hasVideoMedia(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public isComic()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_isComic(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_isEncrypted(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public isFixedLayout()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_isFixedLayout(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public isManga()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_isManga(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public isSample()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_isSample(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public isTextbook()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_isTextbook(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public isYJFolio()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_isYJFolio(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method

.method public isYJOP()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_IDocumentInfo_isYJOP(JLcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z

    move-result v0

    return v0
.end method
