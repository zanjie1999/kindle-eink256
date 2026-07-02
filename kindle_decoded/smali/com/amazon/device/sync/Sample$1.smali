.class Lcom/amazon/device/sync/Sample$1;
.super Ljava/lang/Object;
.source "Sample.java"

# interfaces
.implements Lcom/amazon/device/sync/SyncableDatasetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/Sample;->subscribeDirectoryUpdates(Lcom/amazon/device/sync/SyncableDataStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/device/sync/SyncableDatasetListener<",
        "Lcom/amazon/device/sync/SyncableDatasetInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/Sample;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/Sample;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/device/sync/Sample$1;->this$0:Lcom/amazon/device/sync/Sample;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanges(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Change<",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onConflicts(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            "Ljava/util/Set<",
            "Lcom/amazon/device/sync/Conflict<",
            "Lcom/amazon/device/sync/SyncableDatasetInfo;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
