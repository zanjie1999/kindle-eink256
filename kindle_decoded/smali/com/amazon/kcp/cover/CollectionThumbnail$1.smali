.class Lcom/amazon/kcp/cover/CollectionThumbnail$1;
.super Ljava/lang/Object;
.source "CollectionThumbnail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/CollectionThumbnail;->setThumbnailData(Lcom/amazon/kcp/cover/ThumbnailData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/CollectionThumbnail;

.field final synthetic val$data:Lcom/amazon/kcp/cover/ThumbnailData;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/CollectionThumbnail;Lcom/amazon/kcp/cover/ThumbnailData;I)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/cover/CollectionThumbnail$1;->this$0:Lcom/amazon/kcp/cover/CollectionThumbnail;

    iput-object p2, p0, Lcom/amazon/kcp/cover/CollectionThumbnail$1;->val$data:Lcom/amazon/kcp/cover/ThumbnailData;

    iput p3, p0, Lcom/amazon/kcp/cover/CollectionThumbnail$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/cover/CollectionThumbnail$1;->this$0:Lcom/amazon/kcp/cover/CollectionThumbnail;

    iget-object v1, p0, Lcom/amazon/kcp/cover/CollectionThumbnail$1;->val$data:Lcom/amazon/kcp/cover/ThumbnailData;

    iget v2, p0, Lcom/amazon/kcp/cover/CollectionThumbnail$1;->val$position:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/cover/CollectionThumbnail;->setThumbnailData(Lcom/amazon/kcp/cover/ThumbnailData;I)V

    return-void
.end method
