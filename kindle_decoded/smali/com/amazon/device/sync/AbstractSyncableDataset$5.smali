.class final Lcom/amazon/device/sync/AbstractSyncableDataset$5;
.super Lcom/amazon/whispersync/dcp/framework/ManualFuture;
.source "AbstractSyncableDataset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/AbstractSyncableDataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/dcp/framework/ManualFuture<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;-><init>()V

    .line 36
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method
