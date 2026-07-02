.class Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$2;
.super Ljava/lang/Object;
.source "WhispersyncClient.java"

# interfaces
.implements Lcom/amazon/device/sync/SyncableDatasetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->connect([Ljava/lang/String;)Z
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
.field final synthetic this$0:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$2;->this$0:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 135
    :cond_1
    instance-of p1, p1, Lcom/amazon/device/sync/SyncableDatasetListener;

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public onChanges(Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V
    .locals 1
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

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient$2;->this$0:Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->access$100(Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;Lcom/amazon/device/sync/SyncableDatasetInfo;Ljava/util/Set;)V

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
