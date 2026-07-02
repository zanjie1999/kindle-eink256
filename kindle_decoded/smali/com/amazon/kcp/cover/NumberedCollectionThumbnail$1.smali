.class Lcom/amazon/kcp/cover/NumberedCollectionThumbnail$1;
.super Ljava/lang/Object;
.source "NumberedCollectionThumbnail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;->setThumbnailData(Lcom/amazon/kcp/cover/ThumbnailData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;

.field final synthetic val$data:Lcom/amazon/kcp/cover/ThumbnailData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;Lcom/amazon/kcp/cover/ThumbnailData;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail$1;->this$0:Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;

    iput-object p2, p0, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail$1;->val$data:Lcom/amazon/kcp/cover/ThumbnailData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail$1;->this$0:Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;

    iget-object v1, p0, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail$1;->val$data:Lcom/amazon/kcp/cover/ThumbnailData;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/NumberedCollectionThumbnail;->updateThumbnail(Lcom/amazon/kcp/cover/ThumbnailData;)V

    return-void
.end method
