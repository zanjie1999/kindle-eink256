.class Lcom/amazon/kcp/library/sync/CollectionsSyncManager$5;
.super Ljava/lang/Object;
.source "CollectionsSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->handleIncrementalCollectionsSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$5;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 210
    invoke-static {}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->access$000()Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/CollectionsSyncManager$5;->this$0:Lcom/amazon/kcp/library/sync/CollectionsSyncManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/CollectionsSyncManager;->access$200(Lcom/amazon/kcp/library/sync/CollectionsSyncManager;)V

    return-void
.end method
