.class public Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;
.super Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceAlterableArray;


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KBL_Foundation_ITemplateIChapterResourceVectorArray()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateIChapterResourceVectorArray_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceAlterableArray;-><init>(JZ)V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceArray;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceArray;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KBL_Foundation_ITemplateIChapterResourceVectorArray(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceAlterableArray;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public empty()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateIChapterResourceVectorArray_empty(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;->delete()V

    return-void
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateIChapterResourceVectorArray_getCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setCount(J)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_ITemplateIChapterResourceVectorArray_setCount(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateIChapterResourceVectorArray;J)V

    return-void
.end method
