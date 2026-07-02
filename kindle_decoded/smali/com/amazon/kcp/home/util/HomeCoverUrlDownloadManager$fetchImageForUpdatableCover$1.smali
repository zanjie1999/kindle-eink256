.class public final Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$fetchImageForUpdatableCover$1;
.super Ljava/lang/Object;
.source "CoverUrlDownloadManager.kt"

# interfaces
.implements Lcom/amazon/kcp/home/util/ImageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->fetchImageForUpdatableCover$LibraryModule_release(Lcom/amazon/kcp/cover/UpdatableCover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/LruCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $coverCache:Landroid/util/LruCache;

.field final synthetic $coverPath:Ljava/lang/String;

.field final synthetic $updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

.field final synthetic this$0:Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;Lcom/amazon/kcp/cover/UpdatableCover;Ljava/lang/String;Landroid/util/LruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/cover/UpdatableCover;",
            "Ljava/lang/String;",
            "Landroid/util/LruCache;",
            ")V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$fetchImageForUpdatableCover$1;->this$0:Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;

    iput-object p2, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$fetchImageForUpdatableCover$1;->$updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    iput-object p3, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$fetchImageForUpdatableCover$1;->$coverPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$fetchImageForUpdatableCover$1;->$coverCache:Landroid/util/LruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownloadRequestComplete(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$fetchImageForUpdatableCover$1;->this$0:Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;

    iget-object v0, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$fetchImageForUpdatableCover$1;->$updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    iget-object v1, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$fetchImageForUpdatableCover$1;->$coverPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$fetchImageForUpdatableCover$1;->$coverCache:Landroid/util/LruCache;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->access$loadAndUpdateCover(Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;Lcom/amazon/kcp/cover/UpdatableCover;Ljava/lang/String;Landroid/util/LruCache;)Z

    :cond_0
    return-void
.end method
