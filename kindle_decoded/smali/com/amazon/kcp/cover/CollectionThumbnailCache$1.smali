.class Lcom/amazon/kcp/cover/CollectionThumbnailCache$1;
.super Landroid/os/AsyncTask;
.source "CollectionThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/CollectionThumbnailCache;->getThumbnailData(Ljava/lang/String;Lcom/amazon/kcp/cover/ICollectionThumbnail;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/CollectionThumbnailCache;

.field final synthetic val$collectionId:Ljava/lang/String;

.field final synthetic val$obj:Lcom/amazon/kcp/cover/ICollectionThumbnail;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/CollectionThumbnailCache;Ljava/lang/String;Lcom/amazon/kcp/cover/ICollectionThumbnail;I)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$1;->this$0:Lcom/amazon/kcp/cover/CollectionThumbnailCache;

    iput-object p2, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$1;->val$collectionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$1;->val$obj:Lcom/amazon/kcp/cover/ICollectionThumbnail;

    iput p4, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$1;->val$position:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/CollectionThumbnailCache$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$1;->this$0:Lcom/amazon/kcp/cover/CollectionThumbnailCache;

    iget-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$1;->val$collectionId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kcp/cover/CollectionThumbnailCache;->access$000(Lcom/amazon/kcp/cover/CollectionThumbnailCache;Ljava/lang/String;)Lcom/amazon/kcp/cover/ThumbnailData;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$1;->val$obj:Lcom/amazon/kcp/cover/ICollectionThumbnail;

    iget v1, p0, Lcom/amazon/kcp/cover/CollectionThumbnailCache$1;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/cover/ICollectionThumbnail;->setThumbnailData(Lcom/amazon/kcp/cover/ThumbnailData;I)V

    const/4 p1, 0x0

    return-object p1
.end method
