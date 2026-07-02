.class Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;
.super Ljava/util/concurrent/FutureTask;
.source "BookImageProviderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final outputFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final requestId:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/Runnable;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;->this$0:Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;

    const/4 p1, 0x0

    .line 287
    invoke-direct {p0, p4, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 288
    iput-object p2, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;->requestId:Ljava/lang/String;

    .line 289
    iput-object p3, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;->outputFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 0

    .line 301
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;->release()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;->outputFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;->this$0:Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;

    invoke-static {v0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->access$300(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;->requestId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Releasing RenderingTask, requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
