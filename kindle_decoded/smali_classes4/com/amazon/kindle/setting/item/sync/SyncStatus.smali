.class public abstract Lcom/amazon/kindle/setting/item/sync/SyncStatus;
.super Ljava/lang/Object;
.source "SyncStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;
    }
.end annotation


# instance fields
.field private final code:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

.field private final creationDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;Ljava/util/Date;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncStatus;->code:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    iput-object p2, p0, Lcom/amazon/kindle/setting/item/sync/SyncStatus;->creationDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncStatus;->code:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncStatus;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public abstract hasConsumed()Z
.end method

.method public abstract setHasConsumed(Z)V
.end method
