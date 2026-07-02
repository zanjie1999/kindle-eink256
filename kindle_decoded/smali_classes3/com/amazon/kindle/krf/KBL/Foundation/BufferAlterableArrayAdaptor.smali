.class public Lcom/amazon/kindle/krf/KBL/Foundation/BufferAlterableArrayAdaptor;
.super Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayAdaptor;


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_BufferAlterableArrayAdaptor_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayAdaptor;-><init>(JZ)V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KBL/Foundation/BufferAlterableArrayAdaptor;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateBufferAlterableArray;)V
    .locals 2

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateBufferAlterableArray;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateBufferAlterableArray;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KBL_Foundation_BufferAlterableArrayAdaptor(JLcom/amazon/kindle/krf/KBL/Foundation/ITemplateBufferAlterableArray;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferAlterableArrayAdaptor;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/BufferAlterableArrayAdaptor;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/BufferAlterableArrayAdaptor;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/BufferAlterableArrayAdaptor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateIBufferArray;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/BufferAlterableArrayAdaptor;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KBL_Foundation_BufferAlterableArrayAdaptor(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KBL/Foundation/BufferAlterableArrayAdaptor;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferArrayAdaptor;->delete()V
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/BufferAlterableArrayAdaptor;->delete()V

    return-void
.end method

.method public getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;
    .locals 3

    new-instance v0, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KBL/Foundation/BufferAlterableArrayAdaptor;->swigCPtr:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_BufferAlterableArrayAdaptor_getItem__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/BufferAlterableArrayAdaptor;J)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;-><init>(JZ)V

    return-object v0
.end method
