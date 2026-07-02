.class public Lcom/amazon/kindle/krf/KRF/Reader/ILink;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krf/KRF/Reader/ILink$ELinkType;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/ILink;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_ILink(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->delete()V

    return-void
.end method

.method public getAnchorEnd()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ILink_getAnchorEnd(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public getAnchorStart()Lcom/amazon/kindle/krf/KRF/Reader/Position;
    .locals 4

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/Position;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ILink_getAnchorStart(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/krf/KRF/Reader/Position;-><init>(JZ)V

    return-object v0
.end method

.method public getType()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ILink_getType(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)I

    move-result v0

    return v0
.end method

.method public interpretAsIExternalLink()Lcom/amazon/kindle/krf/KRF/Reader/IExternalLink;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ILink_interpretAsIExternalLink(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IExternalLink;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IExternalLink;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public interpretAsIFootnoteLink()Lcom/amazon/kindle/krf/KRF/Reader/IFootnoteLink;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ILink_interpretAsIFootnoteLink(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IFootnoteLink;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IFootnoteLink;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public interpretAsIInternalLink()Lcom/amazon/kindle/krf/KRF/Reader/IInternalLink;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ILink_interpretAsIInternalLink(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IInternalLink;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IInternalLink;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public interpretAsIZoomableLink()Lcom/amazon/kindle/krf/KRF/Reader/IZoomableLink;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/ILink;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_ILink_interpretAsIZoomableLink(JLcom/amazon/kindle/krf/KRF/Reader/ILink;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KRF/Reader/IZoomableLink;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/IZoomableLink;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method
