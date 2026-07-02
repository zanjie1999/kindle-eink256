.class public Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;
.super Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_BitmapBase_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;-><init>(JZ)V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Graphics_BitmapBase(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;->delete()V
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;->delete()V

    return-void
.end method

.method public getColorByteOrder()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_BitmapBase_getColorByteOrder(JLcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_BitmapBase_getHeight(JLcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;)I

    move-result v0

    return v0
.end method

.method public getPixelsConst()[B
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_BitmapBase_getPixelsConst(JLcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;)[B

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_BitmapBase_getWidth(JLcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;)I

    move-result v0

    return v0
.end method

.method public setColorByteOrder(I)V
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_BitmapBase_setColorByteOrder(JLcom/amazon/kindle/krf/KRF/Graphics/BitmapBase;I)V

    return-void
.end method
