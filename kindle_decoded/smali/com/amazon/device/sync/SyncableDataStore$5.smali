.class synthetic Lcom/amazon/device/sync/SyncableDataStore$5;
.super Ljava/lang/Object;
.source "SyncableDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncableDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$device$sync$DatasetType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 514
    invoke-static {}, Lcom/amazon/device/sync/DatasetType;->values()[Lcom/amazon/device/sync/DatasetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/device/sync/SyncableDataStore$5;->$SwitchMap$com$amazon$device$sync$DatasetType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/device/sync/SyncableDataStore$5;->$SwitchMap$com$amazon$device$sync$DatasetType:[I

    sget-object v1, Lcom/amazon/device/sync/DatasetType;->Directory:Lcom/amazon/device/sync/DatasetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
