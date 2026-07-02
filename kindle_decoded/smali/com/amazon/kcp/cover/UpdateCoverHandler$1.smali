.class Lcom/amazon/kcp/cover/UpdateCoverHandler$1;
.super Ljava/lang/Object;
.source "UpdateCoverHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/UpdateCoverHandler;->onContentUpdate(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/UpdateCoverHandler;

.field final synthetic val$metadata:Lcom/amazon/kindle/content/ContentMetadata;

.field final synthetic val$newLibraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field final synthetic val$oldLibraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/UpdateCoverHandler;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler$1;->this$0:Lcom/amazon/kcp/cover/UpdateCoverHandler;

    iput-object p2, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler$1;->val$metadata:Lcom/amazon/kindle/content/ContentMetadata;

    iput-object p3, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler$1;->val$oldLibraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iput-object p4, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler$1;->val$newLibraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler$1;->this$0:Lcom/amazon/kcp/cover/UpdateCoverHandler;

    iget-object v1, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler$1;->val$metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/cover/UpdateCoverHandler;->shouldUpdateCover(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler$1;->this$0:Lcom/amazon/kcp/cover/UpdateCoverHandler;

    invoke-static {v0}, Lcom/amazon/kcp/cover/UpdateCoverHandler;->access$000(Lcom/amazon/kcp/cover/UpdateCoverHandler;)Lcom/amazon/kcp/cover/UpdateCoverHandler$IUpdateCover;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler$1;->val$oldLibraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iget-object v2, p0, Lcom/amazon/kcp/cover/UpdateCoverHandler$1;->val$newLibraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/cover/UpdateCoverHandler$IUpdateCover;->onUpdateCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    :cond_0
    return-void
.end method
