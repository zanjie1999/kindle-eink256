.class Lcom/amazon/device/sync/SyncableDataDirectory$1;
.super Ljava/lang/Object;
.source "SyncableDataDirectory.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/SyncableDataDirectory;->contains(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SyncableDataDirectory;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableDataDirectory;Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataDirectory$1;->this$0:Lcom/amazon/device/sync/SyncableDataDirectory;

    iput-object p2, p0, Lcom/amazon/device/sync/SyncableDataDirectory$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataDirectory$1;->this$0:Lcom/amazon/device/sync/SyncableDataDirectory;

    invoke-static {v0}, Lcom/amazon/device/sync/SyncableDataDirectory;->access$000(Lcom/amazon/device/sync/SyncableDataDirectory;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/sync/SyncableDatasetInfo;

    iget-object v2, p0, Lcom/amazon/device/sync/SyncableDataDirectory$1;->this$0:Lcom/amazon/device/sync/SyncableDataDirectory;

    invoke-virtual {v2}, Lcom/amazon/device/sync/SyncableDataDirectory;->getNamespace()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    iget-object v4, p0, Lcom/amazon/device/sync/SyncableDataDirectory$1;->val$name:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataDirectory$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
