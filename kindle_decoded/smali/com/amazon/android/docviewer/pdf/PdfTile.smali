.class public Lcom/amazon/android/docviewer/pdf/PdfTile;
.super Ljava/lang/Object;
.source "PdfTile.java"


# static fields
.field private static ERASE_COLOR:I = -0x1

.field private static final FEATURE_USE_REFERENCES:Z = false

.field private static final m_debug:Z = false


# instance fields
.field private m_bitmap:Landroid/graphics/Bitmap;

.field private m_bitmapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final m_collection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

.field private m_needsRender:Z

.field private m_pendingRender:Z

.field private m_renderingArea:Landroid/graphics/RectF;

.field private m_visible:Z

.field private final m_zoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;IZZ)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_needsRender:Z

    const/4 p4, 0x0

    .line 52
    iput-object p4, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmap:Landroid/graphics/Bitmap;

    .line 53
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_collection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    .line 54
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_zoomLevel:I

    .line 55
    iput-boolean p3, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_visible:Z

    return-void
.end method

.method private final trySetVisibleUsingWeakReferences(Z)Z
    .locals 4

    .line 215
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_visible:Z

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 220
    :goto_0
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_visible:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 225
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_2

    return v2

    .line 229
    :cond_2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 231
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmap:Landroid/graphics/Bitmap;

    .line 232
    iput-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 234
    :cond_3
    iput-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    return v2

    :cond_4
    if-eqz p1, :cond_5

    .line 240
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    .line 241
    iput-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmap:Landroid/graphics/Bitmap;

    :cond_5
    :goto_1
    return v1
.end method


# virtual methods
.method allocateBitmapIfNecessary()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_collection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_zoomLevel:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->getNewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 87
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmap:Landroid/graphics/Bitmap;

    .line 89
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method final declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 254
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 257
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized getBytesUsed()I
    .locals 2

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v1, v1, v0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 124
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getRecycleBitmap()Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_visible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 106
    sget v2, Lcom/amazon/android/docviewer/pdf/PdfTile;->ERASE_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 107
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 109
    iput-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    .line 111
    :cond_1
    iput-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    .line 112
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_needsRender:Z

    const/4 v1, 0x0

    .line 113
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_pendingRender:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final getRenderingArea()Landroid/graphics/RectF;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_renderingArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method declared-synchronized isVisible()Z
    .locals 1

    monitor-enter p0

    .line 162
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized needsRender()Z
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_needsRender:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_visible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized pendingRender()Z
    .locals 1

    monitor-enter p0

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_pendingRender:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized recycle()V
    .locals 3

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 67
    iput-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    .line 69
    :cond_0
    iput-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_needsRender:Z

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setNeedsRender(Z)V
    .locals 0

    monitor-enter p0

    .line 158
    :try_start_0
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_needsRender:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setPendingRender(Z)V
    .locals 0

    monitor-enter p0

    .line 144
    :try_start_0
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_pendingRender:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setRenderingArea(Landroid/graphics/RectF;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_renderingArea:Landroid/graphics/RectF;

    return-void
.end method

.method declared-synchronized swapBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmap:Landroid/graphics/Bitmap;

    .line 77
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 262
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " needsRender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_needsRender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " m_bitmapReference:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmapReference:Ljava/lang/ref/WeakReference;

    .line 263
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " m_bitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized trySetVisible(Z)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 206
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return v1

    .line 209
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTile;->m_visible:Z

    .line 210
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
