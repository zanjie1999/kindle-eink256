.class public Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;
.super Ljava/lang/Object;
.source "LibraryCachedKRFBookBuilder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BookInfoExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final errorValue:Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;

.field private final filename:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->this$0:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->errorValue:Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;

    .line 241
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->filename:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;)Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->filename:Ljava/lang/String;

    return-object p0
.end method

.method private openBook()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;
    .locals 4

    .line 260
    invoke-static {}, Lcom/amazon/kcp/debug/ScopedStorageUtilsManager;->getInstance()Lcom/amazon/kcp/debug/ScopedStorageUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getFileDescriptorFromFilename(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/self/fd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->filename:Ljava/lang/String;

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->this$0:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    invoke-static {v2}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->access$200(Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;)Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->errorValue:Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->createDocumentInfo(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 270
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 272
    invoke-static {}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error closing file descriptor"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->errorValue:Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->access$400(Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)V

    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->errorValue:Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->getValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->this$0:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->access$100(Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;)Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->filename:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;->removeInvalidBook(Ljava/lang/String;)Z

    :cond_2
    return-object v1
.end method


# virtual methods
.method public call()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;
    .locals 1

    .line 246
    new-instance v0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor$1;-><init>(Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;)V

    invoke-static {v0}, Lcom/amazon/kindle/jni/KindleReaderJNI;->pushCallContext(Lcom/amazon/kindle/jni/KindleReaderJNI$CallContext;)V

    .line 253
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->openBook()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-static {}, Lcom/amazon/kindle/jni/KindleReaderJNI;->popCallContext()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/amazon/kindle/jni/KindleReaderJNI;->popCallContext()V

    .line 256
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;->call()Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0

    return-object v0
.end method
