.class public final Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;
.super Lcom/amazon/kindle/setting/item/sync/SyncStatus;
.source "InProgressSyncStatus.kt"


# instance fields
.field private final code:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/setting/item/sync/SyncStatus;-><init>(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;Ljava/util/Date;)V

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;->code:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;

    invoke-virtual {p0}, Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;->getCode()Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;->getCode()Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getCode()Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;->code:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    return-object v0
.end method

.method public hasConsumed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;->getCode()Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setHasConsumed(Z)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InProgressSyncStatus(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/setting/item/sync/InProgressSyncStatus;->getCode()Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
