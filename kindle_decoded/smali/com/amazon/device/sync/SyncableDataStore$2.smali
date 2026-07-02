.class Lcom/amazon/device/sync/SyncableDataStore$2;
.super Ljava/lang/Object;
.source "SyncableDataStore.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/SyncableDataStore;->openOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable<",
        "Lcom/amazon/device/sync/SyncableStringMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SyncableDataStore;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableDataStore;Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataStore$2;->this$0:Lcom/amazon/device/sync/SyncableDataStore;

    iput-object p2, p0, Lcom/amazon/device/sync/SyncableDataStore$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/device/sync/SyncableStringMap;
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore$2;->this$0:Lcom/amazon/device/sync/SyncableDataStore;

    iget-object v1, p0, Lcom/amazon/device/sync/SyncableDataStore$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/SyncableDataStore;->doOpenOrCreateStringMap(Ljava/lang/String;)Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataStore$2;->call()Lcom/amazon/device/sync/SyncableStringMap;

    move-result-object v0

    return-object v0
.end method
