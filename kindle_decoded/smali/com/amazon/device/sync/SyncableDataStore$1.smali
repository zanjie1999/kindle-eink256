.class Lcom/amazon/device/sync/SyncableDataStore$1;
.super Ljava/lang/Object;
.source "SyncableDataStore.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/SyncableDataStore;->openDirectory()Lcom/amazon/device/sync/SyncableDataDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable<",
        "Lcom/amazon/device/sync/SyncableDataDirectory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SyncableDataStore;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableDataStore;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataStore$1;->this$0:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/device/sync/SyncableDataDirectory;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataStore$1;->this$0:Lcom/amazon/device/sync/SyncableDataStore;

    invoke-virtual {v0}, Lcom/amazon/device/sync/SyncableDataStore;->doOpenDirectory()Lcom/amazon/device/sync/SyncableDataDirectory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataStore$1;->call()Lcom/amazon/device/sync/SyncableDataDirectory;

    move-result-object v0

    return-object v0
.end method
