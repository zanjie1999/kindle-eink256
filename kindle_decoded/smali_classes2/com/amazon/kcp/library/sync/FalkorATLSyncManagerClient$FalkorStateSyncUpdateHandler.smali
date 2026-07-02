.class public final Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient$FalkorStateSyncUpdateHandler;
.super Ljava/lang/Object;
.source "FalkorATLSyncManagerClient.kt"

# interfaces
.implements Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FalkorStateSyncUpdateHandler"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/sync/FalkorATLSyncManagerClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDatasetAdd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDatasetRemove(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDelete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "records"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "records"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
