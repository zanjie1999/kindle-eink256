.class public Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;
.super Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KBL_Foundation_Buffer__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Buffer_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;-><init>(JZ)V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KBL_Foundation_Buffer__SWIG_3(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>([BJ)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KBL_Foundation_Buffer__SWIG_2([BJ)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>([BJZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KBL_Foundation_Buffer__SWIG_1([BJZ)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Buffer_clear(JLcom/amazon/kindle/krf/KBL/Foundation/Buffer;)V

    return-void
.end method

.method public copyFrom(Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Buffer_copyFrom__SWIG_2(JLcom/amazon/kindle/krf/KBL/Foundation/Buffer;JLcom/amazon/kindle/krf/KBL/Foundation/IBuffer;)V

    return-void
.end method

.method public copyFrom(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Buffer_copyFrom__SWIG_1(JLcom/amazon/kindle/krf/KBL/Foundation/Buffer;Ljava/lang/String;)V

    return-void
.end method

.method public copyFrom([BJ)V
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Buffer_copyFrom__SWIG_0(JLcom/amazon/kindle/krf/KBL/Foundation/Buffer;[BJ)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KBL_Foundation_Buffer(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/IBuffer;->delete()V
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->delete()V

    return-void
.end method

.method public getDataConst()[B
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Buffer_getDataConst(JLcom/amazon/kindle/krf/KBL/Foundation/Buffer;)[B

    move-result-object v0

    return-object v0
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Buffer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Buffer_getLength(JLcom/amazon/kindle/krf/KBL/Foundation/Buffer;)J

    move-result-wide v0

    return-wide v0
.end method
