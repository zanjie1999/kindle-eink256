.class Lcom/amazon/kcp/library/sync/ReadDataSyncManager$2;
.super Ljava/lang/Object;
.source "ReadDataSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$2;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$2;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$100(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$2;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->fixUnreadDatabaseValues()V

    return-void
.end method
