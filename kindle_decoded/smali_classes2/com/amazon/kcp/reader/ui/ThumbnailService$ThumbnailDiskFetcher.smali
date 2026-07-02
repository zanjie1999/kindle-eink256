.class Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;
.super Ljava/lang/Object;
.source "ThumbnailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailDiskFetcher"
.end annotation


# instance fields
.field final mCachePrefix:Ljava/lang/String;

.field final mHeight:I

.field final mPageIndex:I

.field final mWidth:I

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailService;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailService;IIILjava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;->mPageIndex:I

    .line 302
    iput p3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;->mWidth:I

    .line 303
    iput p4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;->mHeight:I

    .line 304
    iput-object p5, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;->mCachePrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BACKGROUND RENDERING of page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;->mPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailService"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;->mCachePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;->mPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_bitmap.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailService;

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;->mPageIndex:I

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;->mWidth:I

    iget v4, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$ThumbnailDiskFetcher;->mHeight:I

    invoke-static {v1, v2, v3, v4, v0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->access$100(Lcom/amazon/kcp/reader/ui/ThumbnailService;IIILjava/lang/String;)Z

    return-void
.end method
