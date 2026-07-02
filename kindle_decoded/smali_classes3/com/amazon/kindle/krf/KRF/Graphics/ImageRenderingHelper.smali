.class public Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;
.super Ljava/lang/Object;


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCPtr:J

    return-void
.end method

.method public static createImageRenderingHelper(Lcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;
    .locals 7

    invoke-static {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;->getCPtr(Lcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/amazon/kindle/krf/KRF/Graphics/IColor;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IColor;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_ImageRenderingHelper_createImageRenderingHelper(JLcom/amazon/kindle/krf/KRF/Reader/IResourceProvider;Ljava/lang/String;JLcom/amazon/kindle/krf/KRF/Graphics/IColor;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;-><init>(JZ)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public static getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->delete_KRF_Graphics_ImageRenderingHelper(J)V

    :cond_0
    iput-wide v2, p0, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->delete()V

    return-void
.end method

.method public getImageHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_ImageRenderingHelper_getImageHeight(JLcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;)I

    move-result v0

    return v0
.end method

.method public getImageWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_ImageRenderingHelper_getImageWidth(JLcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;)I

    move-result v0

    return v0
.end method

.method public render(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
    .locals 12

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v6

    invoke-static {p3}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_ImageRenderingHelper_render__SWIG_2(JLcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z

    move-result p1

    return p1
.end method

.method public render(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;I)Z
    .locals 14

    move-object v13, p0

    iget-wide v0, v13, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/IBitmap;)J

    move-result-wide v3

    invoke-static/range {p2 .. p2}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v6

    invoke-static/range {p3 .. p3}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v0 .. v12}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_ImageRenderingHelper_render__SWIG_1(JLcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;JLcom/amazon/kindle/krf/KRF/Graphics/IBitmap;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;I)Z

    move-result v0

    return v0
.end method

.method public render(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z
    .locals 12

    iget-wide v0, p0, Lcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;->swigCPtr:J

    invoke-static {p1}, Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;->getCPtr(Lcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v6

    invoke-static {p3}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getCPtr(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/amazon/kindle/krf/KRFLibraryJNI;->KRF_Graphics_ImageRenderingHelper_render__SWIG_0(JLcom/amazon/kindle/krf/KRF/Graphics/ImageRenderingHelper;JLcom/amazon/kindle/krf/KRF/Graphics/NativeGraphicsContext;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;JLcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Z

    move-result p1

    return p1
.end method
