.class Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;
.super Landroid/os/Handler;
.source "PdfRendererImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueMessageHandler"
.end annotation


# static fields
.field private static final TOTAL_PDF_BOOK_OPEN_TIME:Ljava/lang/String; = "totalPdfBookOpenTimer"


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;Landroid/os/Looper;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    .line 211
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private RenderTile(Landroid/os/Message;)V
    .locals 9

    .line 215
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 216
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;

    .line 221
    iget-object v1, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->allocateBitmapIfNecessary()V

    .line 222
    iget-object v1, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    invoke-static {v2, v1}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$000(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;Landroid/graphics/Bitmap;)V

    .line 225
    iget-object v1, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    invoke-static {v2}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$100(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->isLoaded()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 228
    :try_start_1
    iget-object v3, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    invoke-static {v2}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$100(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->offsetX:I

    iget v6, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->offsetY:I

    iget v7, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->zoomLevel:I

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/android/docviewer/pdf/PdfPage;->renderIntoBitmap(Landroid/graphics/Bitmap;IIII)V
    :try_end_1
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "PdfRenderer"

    const-string v4, "TileRenderFailure"

    .line 232
    invoke-virtual {v0, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "renderToBitmap failed: "

    invoke-static {v0, v3, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$100(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$102(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$200()Ljava/lang/String;

    .line 241
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 243
    iget-object v0, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object v1, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->pendingRender()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$100(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 247
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$200()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copying PDF rendering output to tile for request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    iget-object v2, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    invoke-static {v3}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$100(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/pdf/PdfTile;->swapBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$102(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 255
    :cond_1
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No tile bitmap available to copy PDF rendering output for request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_1
    iget-object v1, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->callback:Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;

    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;->tileRendered(Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;)V

    goto :goto_2

    .line 260
    :cond_2
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$200()Ljava/lang/String;

    .line 262
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    iget-object p1, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    if-eqz p1, :cond_3

    .line 265
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->notifyRenderComplete()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 262
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 241
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method


# virtual methods
.method final copyRenderBitmapToTile(Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 270
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 271
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    invoke-static {p2}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$100(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 280
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    .line 320
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$200()Ljava/lang/String;

    .line 296
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$ClosePageRequest;

    .line 297
    iget-object p1, p1, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$ClosePageRequest;->page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->closePage()V

    goto :goto_0

    .line 314
    :cond_1
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$200()Ljava/lang/String;

    .line 315
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$RecycleRequest;

    .line 316
    iget-object v0, p1, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$RecycleRequest;->collection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    iget p1, p1, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$RecycleRequest;->zoomLevel:I

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->recycle(I)V

    goto :goto_0

    .line 301
    :cond_2
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$200()Ljava/lang/String;

    .line 304
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;->allTilesRendered()V

    .line 309
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$300(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;)Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CallbackMessageHandler;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 310
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->this$0:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$300(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;)Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CallbackMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 289
    :cond_3
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$200()Ljava/lang/String;

    .line 290
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CloseCollectionRequest;

    .line 291
    iget-object p1, p1, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CloseCollectionRequest;->collection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTileCollection;->close()V

    goto :goto_0

    .line 284
    :cond_4
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->access$200()Ljava/lang/String;

    .line 285
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;->RenderTile(Landroid/os/Message;)V

    :goto_0
    return-void
.end method
