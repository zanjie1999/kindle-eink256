.class final Lcom/amazon/device/sync/SyncContract$Records;
.super Ljava/lang/Object;
.source "SyncContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Records"
.end annotation


# static fields
.field public static final BASE_TABLE_NAME:Ljava/lang/String; = "records"

.field public static final CONFLICTED_CLIENT_VALUE:Ljava/lang/String; = "record_conflicted_client_value"

.field public static final CONFLICT_TABLE_NAME:Ljava/lang/String;

.field public static final DELETED:Ljava/lang/String; = "is_deleted"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final KEY:Ljava/lang/String; = "record_key"

.field public static final LAST_UPDATED_UTC_TIME:Ljava/lang/String; = "last_updated_utc_time"

.field public static final NOT_IN_PROGRESS:I = -0x1

.field public static final OPERATION_ID:Ljava/lang/String; = "operation_id"

.field public static final PENDING_DATASET_ID:Ljava/lang/String; = "pending_dataset_id"

.field public static final PENDING_TABLE_NAME:Ljava/lang/String;

.field public static final SERVER_SYNC_COUNT:Ljava/lang/String; = "server_sync_count"

.field public static final SNAPSHOT_DATASET_ID:Ljava/lang/String; = "snapshot_dataset_id"

.field public static final SNAPSHOT_RECORD_ID:Ljava/lang/String; = "snapshot_record_id"

.field public static final SNAPSHOT_TABLE_NAME:Ljava/lang/String;

.field public static final VALUE:Ljava/lang/String; = "record_value"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "records"

    .line 142
    invoke-static {v0}, Lcom/amazon/device/sync/SyncContract;->getSnapShotTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/device/sync/SyncContract$Records;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    .line 143
    invoke-static {v0}, Lcom/amazon/device/sync/SyncContract;->getPendingTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/device/sync/SyncContract$Records;->PENDING_TABLE_NAME:Ljava/lang/String;

    .line 144
    invoke-static {v0}, Lcom/amazon/device/sync/SyncContract;->getConflictTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/SyncContract$Records;->CONFLICT_TABLE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
