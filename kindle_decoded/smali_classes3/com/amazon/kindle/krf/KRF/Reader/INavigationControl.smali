.class public Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public createSecondaryTableIterator(J)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;
    .locals 3

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_INavigationControl_createSecondaryTableIterator(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControl;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public createTocIterator()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;
    .locals 5

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_INavigationControl_createTocIterator(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public createTocIteratorFromPositionId(Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Reader/Position;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_INavigationControl_createTocIteratorFromPositionId(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControl;JLcom/amazon/kindle/krf/KRF/Reader/Position;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateNavigationControlNodeTreeIterator;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Reader_INavigationControl(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->delete()V

    return-void
.end method

.method public getSecondaryTableCount()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Reader/INavigationControl;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Reader_INavigationControl_getSecondaryTableCount(JLcom/amazon/kindle/krf/KRF/Reader/INavigationControl;)J

    move-result-wide v0

    return-wide v0
.end method
