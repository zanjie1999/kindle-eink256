.class final Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;
.super Ljava/lang/Object;
.source "CoverUrlDownloadManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->getCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kcp/cover/UpdatableCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $cache:Landroid/util/LruCache;

.field final synthetic $coverPath:Ljava/lang/String;

.field final synthetic $coverUrl:Ljava/lang/String;

.field final synthetic $id:Ljava/lang/String;

.field final synthetic $updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

.field final synthetic this$0:Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;Lcom/amazon/kcp/cover/UpdatableCover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/LruCache;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;->this$0:Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;

    iput-object p2, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;->$updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    iput-object p3, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;->$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;->$coverUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;->$coverPath:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;->$cache:Landroid/util/LruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;->this$0:Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;

    iget-object v1, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;->$updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    iget-object v2, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;->$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;->$coverUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;->$coverPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;->$cache:Landroid/util/LruCache;

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->fetchImageForUpdatableCover$LibraryModule_release(Lcom/amazon/kcp/cover/UpdatableCover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/LruCache;)V

    return-void
.end method
