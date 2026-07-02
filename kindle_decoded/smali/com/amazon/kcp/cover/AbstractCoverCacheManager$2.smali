.class Lcom/amazon/kcp/cover/AbstractCoverCacheManager$2;
.super Ljava/lang/Object;
.source "AbstractCoverCacheManager.java"

# interfaces
.implements Lcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverImage(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/kindle/cover/ImageSizes$Type;ZZZLjava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/cover/UpdatableCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

.field final synthetic val$imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/AbstractCoverCacheManager;ILcom/amazon/kindle/cover/ImageSizes$Type;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$2;->this$0:Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

    iput p2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$2;->val$position:I

    iput-object p3, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$2;->val$imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverFetched(Ljava/lang/String;)V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$2;->this$0:Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

    iget v1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$2;->val$position:I

    iget-object v2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$2;->val$imageSize:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->makeImageAvailableInCache(Ljava/lang/String;ILcom/amazon/kindle/cover/ImageSizes$Type;)V

    return-void
.end method
