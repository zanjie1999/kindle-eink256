.class public Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KBL_Foundation_Rectangle__SWIG_1()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KBL_Foundation_Rectangle__SWIG_0(IIII)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KBL_Foundation_Rectangle(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->delete()V

    return-void
.end method

.method public getM_height()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Rectangle_m_height_get(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)I

    move-result v0

    return v0
.end method

.method public getM_width()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Rectangle_m_width_get(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)I

    move-result v0

    return v0
.end method

.method public getM_x()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Rectangle_m_x_get(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)I

    move-result v0

    return v0
.end method

.method public getM_y()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Rectangle_m_y_get(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Rectangle_isEmpty(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z

    move-result v0

    return v0
.end method

.method public setM_height(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Rectangle_m_height_set(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;I)V

    return-void
.end method

.method public setM_width(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Rectangle_m_width_set(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;I)V

    return-void
.end method

.method public setM_x(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Rectangle_m_x_set(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;I)V

    return-void
.end method

.method public setM_y(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Rectangle_m_y_set(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;I)V

    return-void
.end method

.method public valueEquals(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Rectangle_valueEquals(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z

    move-result p1

    return p1
.end method

.method public valueNotEquals(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Rectangle_valueNotEquals(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z

    move-result p1

    return p1
.end method

.method public zero()V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KBL_Foundation_Rectangle_zero(JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)V

    return-void
.end method
