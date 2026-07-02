.class Lcom/amazon/device/sync/SyncableDataDirectory$4;
.super Ljava/lang/Object;
.source "SyncableDataDirectory.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/SyncableDataDirectory;->isEmpty()Z
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


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableDataDirectory;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataDirectory$4;->this$0:Lcom/amazon/device/sync/SyncableDataDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataDirectory$4;->this$0:Lcom/amazon/device/sync/SyncableDataDirectory;

    invoke-static {v0}, Lcom/amazon/device/sync/SyncableDataDirectory;->access$000(Lcom/amazon/device/sync/SyncableDataDirectory;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataDirectory$4;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
