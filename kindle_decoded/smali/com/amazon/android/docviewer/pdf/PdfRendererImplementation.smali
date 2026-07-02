.class public final Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;
.super Ljava/lang/Object;
.source "PdfRendererImplementation.java"

# interfaces
.implements Lcom/amazon/android/docviewer/pdf/IPdfRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CallbackMessageHandler;,
        Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;,
        Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$RecycleRequest;,
        Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$ClosePageRequest;,
        Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CloseCollectionRequest;
    }
.end annotation


# static fields
.field private static final ALL_TILES_RENDERED:I = 0x30000

.field private static final CLOSE_COLLECTION:I = 0x20000

.field private static final CLOSE_PAGE:I = 0x50000

.field private static final MASK_PDF_PAGE_MESSAGE:I = 0xffff

.field private static final PDF_PAGE_BITS:I = 0x10

.field private static final RECYCLE_COLLECTION:I = 0x40000

.field private static final RENDER_TILE:I = 0x10000

.field private static final TAG:Ljava/lang/String;

.field private static final TILE_RENDER_FAILURE:Ljava/lang/String; = "TileRenderFailure"

.field static final m_debug:Z = false


# instance fields
.field private final m_callbackMsgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CallbackMessageHandler;

.field private final m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

.field private final m_myHandlerThread:Landroid/os/HandlerThread;

.field private m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

.field private m_renderBitmap:Landroid/graphics/Bitmap;

.field private final m_tileIdPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    .line 53
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_renderBitmap:Landroid/graphics/Bitmap;

    .line 60
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getInstance()Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_pdfNativeInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_tileIdPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    .line 62
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_tileIdPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_tileIdPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PdfHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_myHandlerThread:Landroid/os/HandlerThread;

    .line 67
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_myHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;-><init>(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    .line 79
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CallbackMessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CallbackMessageHandler;-><init>(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_callbackMsgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CallbackMessageHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->synchronizeWorkingBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;)Landroid/graphics/Bitmap;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_renderBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_renderBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;)Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CallbackMessageHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_callbackMsgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CallbackMessageHandler;

    return-object p0
.end method

.method private synchronizeWorkingBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_renderBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_renderBitmap:Landroid/graphics/Bitmap;

    .line 173
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_renderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_renderBitmap:Landroid/graphics/Bitmap;

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_renderBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_renderBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method


# virtual methods
.method public cancelPendingRenders(I)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelPendingRenders: pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    const v1, 0xffff

    and-int/2addr p1, v1

    const/high16 v1, 0x10000

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public close(Lcom/amazon/android/docviewer/pdf/PdfPage;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/high16 v1, 0x50000

    .line 128
    iput v1, v0, Landroid/os/Message;->what:I

    .line 129
    new-instance v1, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$ClosePageRequest;

    invoke-direct {v1, p1}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$ClosePageRequest;-><init>(Lcom/amazon/android/docviewer/pdf/PdfPage;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public close(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/high16 v1, 0x20000

    .line 118
    iput v1, v0, Landroid/os/Message;->what:I

    .line 119
    new-instance v1, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CloseCollectionRequest;

    invoke-direct {v1, p1}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CloseCollectionRequest;-><init>(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_myHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public notifyWhenAllTileRequestsComplete(Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;I)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr p2, v1

    const/high16 v1, 0x30000

    or-int/2addr p2, v1

    .line 92
    iput p2, v0, Landroid/os/Message;->what:I

    .line 96
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public recycle(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;I)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/high16 v1, 0x40000

    .line 145
    iput v1, v0, Landroid/os/Message;->what:I

    .line 146
    new-instance v1, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$RecycleRequest;

    invoke-direct {v1, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$RecycleRequest;-><init>(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestTile(Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;)V
    .locals 3

    .line 103
    iget-object v0, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfTile;->setPendingRender(Z)V

    .line 105
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 108
    iget-object v1, p1, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 109
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;->m_msgHandler:Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$QueueMessageHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
