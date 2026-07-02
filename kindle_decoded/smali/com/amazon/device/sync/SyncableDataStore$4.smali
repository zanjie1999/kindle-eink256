.class Lcom/amazon/device/sync/SyncableDataStore$4;
.super Ljava/lang/Object;
.source "SyncableDataStore.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/SyncableDataStore;->deleteMaps(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SyncableDataStore;

.field final synthetic val$names:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableDataStore;Ljava/util/Set;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataStore$4;->this$0:Lcom/amazon/device/sync/SyncableDataStore;

    iput-object p2, p0, Lcom/amazon/device/sync/SyncableDataStore$4;->val$names:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataStore$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore$4;->this$0:Lcom/amazon/device/sync/SyncableDataStore;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore$4;->val$names:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/SyncableDataStore;->doDeleteMaps(Ljava/util/Set;)V

    const/4 v0, 0x0

    return-object v0
.end method
