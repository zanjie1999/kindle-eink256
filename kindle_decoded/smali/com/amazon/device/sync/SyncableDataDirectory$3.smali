.class Lcom/amazon/device/sync/SyncableDataDirectory$3;
.super Ljava/lang/Object;
.source "SyncableDataDirectory.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/SyncableDataDirectory;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable<",
        "Ljava/util/Iterator<",
        "Lcom/amazon/device/sync/SyncableDatasetInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SyncableDataDirectory;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableDataDirectory;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataDirectory$3;->this$0:Lcom/amazon/device/sync/SyncableDataDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataDirectory$3;->call()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataDirectory$3;->this$0:Lcom/amazon/device/sync/SyncableDataDirectory;

    invoke-static {v0}, Lcom/amazon/device/sync/SyncableDataDirectory;->access$000(Lcom/amazon/device/sync/SyncableDataDirectory;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
