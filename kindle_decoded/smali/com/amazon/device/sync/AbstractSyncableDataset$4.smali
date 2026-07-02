.class final Lcom/amazon/device/sync/AbstractSyncableDataset$4;
.super Ljava/util/HashMap;
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
        "Ljava/util/HashMap<",
        "Ljava/lang/Class<",
        "*>;",
        "Lcom/amazon/device/sync/Tracer$Traces;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 33
    const-class v0, Lcom/amazon/device/sync/SyncableStringMap;

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MAP_RESET:Lcom/amazon/device/sync/Tracer$Traces;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/amazon/device/sync/SyncableDataDirectory;

    sget-object v1, Lcom/amazon/device/sync/Tracer$Traces;->MDC_RESET:Lcom/amazon/device/sync/Tracer$Traces;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
