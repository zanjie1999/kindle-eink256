.class Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$3;
.super Ljava/lang/Object;
.source "CustomReaderLocationSeeker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$3;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$3;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getObjectFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$3;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    .line 259
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getLocationSeekerDecorations(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$3;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->customizeTextDecorationType(Ljava/util/Collection;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$3;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->access$300(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)Ljava/lang/Runnable;

    move-result-object v0

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$3;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->access$402(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;Z)Z

    .line 266
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
