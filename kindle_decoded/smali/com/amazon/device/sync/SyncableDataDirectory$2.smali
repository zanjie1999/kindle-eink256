.class Lcom/amazon/device/sync/SyncableDataDirectory$2;
.super Ljava/lang/Object;
.source "SyncableDataDirectory.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/tracing/BaseTracer$NotThrowingCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/SyncableDataDirectory;->containsAll(Ljava/util/Collection;)Z
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

.field final synthetic val$names:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncableDataDirectory;Ljava/util/Collection;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/amazon/device/sync/SyncableDataDirectory$2;->this$0:Lcom/amazon/device/sync/SyncableDataDirectory;

    iput-object p2, p0, Lcom/amazon/device/sync/SyncableDataDirectory$2;->val$names:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/amazon/device/sync/SyncableDataDirectory$2;->val$names:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/amazon/device/sync/SyncableDataDirectory$2;->this$0:Lcom/amazon/device/sync/SyncableDataDirectory;

    invoke-virtual {v2, v1}, Lcom/amazon/device/sync/SyncableDataDirectory;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 131
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 134
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncableDataDirectory$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
