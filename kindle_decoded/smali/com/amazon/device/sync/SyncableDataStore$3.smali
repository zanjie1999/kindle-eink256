.class Lcom/amazon/device/sync/SyncableDataStore$3;
.super Ljava/lang/Object;
.source "SyncableDataStore.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/SyncableDataStore;->deleteMap(Ljava/lang/String;)V
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

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableDataStore;Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataStore$3;->this$0:Lcom/amazon/device/sync/SyncableDataStore;

    iput-object p2, p0, Lcom/amazon/device/sync/SyncableDataStore$3;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataStore$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .line 326
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 327
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore$3;->val$name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore$3;->this$0:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v1, v0}, Lcom/amazon/device/sync/SyncableDataStore;->deleteMaps(Ljava/util/Set;)V

    const/4 v0, 0x0

    return-object v0
.end method
