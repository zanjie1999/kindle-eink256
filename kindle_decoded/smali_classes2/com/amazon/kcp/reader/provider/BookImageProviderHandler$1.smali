.class Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;
.super Ljava/lang/Object;
.source "BookImageProviderHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->processRenderingRequest(Ljava/lang/String;Ljava/util/concurrent/Callable;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fileDescriptors:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$renderingCall:Ljava/util/concurrent/Callable;

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;Ljava/lang/String;Ljava/util/concurrent/Callable;[Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 144
    iput-object p2, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;->val$requestId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;->val$renderingCall:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;->val$fileDescriptors:[Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 147
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderingTask started, requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;->val$requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;->val$renderingCall:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 152
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;->val$fileDescriptors:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 156
    iget-object v3, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;->val$fileDescriptors:[Landroid/os/ParcelFileDescriptor;

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->writeBitmapToFileDescriptor(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 158
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 159
    instance-of v4, v3, Lcom/amazon/kcp/reader/provider/BookImageProviderException;

    if-eqz v4, :cond_0

    .line 160
    iget-object v1, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;->val$fileDescriptors:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, v0

    invoke-static {v3, v1}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->writeExceptionToFileDescriptor(Ljava/lang/Throwable;Landroid/os/ParcelFileDescriptor;)V

    .line 166
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->access$100()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RenderingTask done, requestId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;->val$requestId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 162
    :cond_0
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 172
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception thrown, requestId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;->val$requestId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 169
    :catch_4
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->access$100()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interrupted, requestId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;->val$requestId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_1

    .line 179
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method
