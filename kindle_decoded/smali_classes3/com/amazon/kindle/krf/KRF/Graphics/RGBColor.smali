.class public Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;
.super Lcom/amazon/kindle/krf/KRF/Graphics/IColor;


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_RGBColor_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;-><init>(JZ)V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)V
    .locals 2

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_Graphics_RGBColor__SWIG_1(JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(SSS)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->new_KRF_Graphics_RGBColor__SWIG_0(SSS)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;-><init>(JZ)V

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public asUint32(I)J
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_RGBColor_asUint32(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public assign(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;
    .locals 7

    new-instance v0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;

    iget-wide v1, p0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)J

    move-result-wide v4

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_RGBColor_assign(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;-><init>(JZ)V

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Graphics_RGBColor(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->delete()V
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->delete()V

    return-void
.end method

.method public getBlue()S
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_RGBColor_getBlue(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;)S

    move-result v0

    return v0
.end method

.method public getGreen()S
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_RGBColor_getGreen(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;)S

    move-result v0

    return v0
.end method

.method public getRed()S
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_RGBColor_getRed(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;)S

    move-result v0

    return v0
.end method

.method public valueEquals(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_RGBColor_valueEquals(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)Z

    move-result p1

    return p1
.end method

.method public valueNotEquals(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)Z
    .locals 6

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/RGBColor;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_RGBColor_valueNotEquals(JLcom/amazon/kindle/krf/KRF/Graphics/RGBColor;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)Z

    move-result p1

    return p1
.end method
