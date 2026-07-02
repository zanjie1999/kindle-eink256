.class final Lcom/amazon/device/sync/SyncContract$Datasets;
.super Ljava/lang/Object;
.source "SyncContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Datasets"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;
    }
.end annotation


# static fields
.field public static final ATTEMPT_COUNT:Ljava/lang/String; = "attempt_count"

.field public static final BASE_TABLE_NAME:Ljava/lang/String; = "datasets"

.field public static final DATASET_SUBSCRIPTION_SUBSCRIBED:Ljava/lang/String; = "SUBSCRIBED"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_SUBSCRIBED_TO_DATASET:Ljava/lang/String; = "is_subscribed_to_dataset"

.field public static final NAME:Ljava/lang/String; = "dataset_name"

.field public static final NAMESPACE_ID:Ljava/lang/String; = "namespace_id"

.field public static final NEEDS_DOWNLOAD:Ljava/lang/String; = "needs_download"

.field public static final NOT_IN_PROGRESS:I = -0x1

.field public static final OPERATION_ID:Ljava/lang/String; = "operation_id"

.field public static final PENDING_ACTION:Ljava/lang/String; = "pending_action"

.field public static final PENDING_TABLE_NAME:Ljava/lang/String;

.field public static final RECORDS_URI:Ljava/lang/String; = "records_uri"

.field public static final SELF_URI:Ljava/lang/String; = "self_uri"

.field public static final SNAPSHOT_TABLE_NAME:Ljava/lang/String;

.field public static final SUBSCRIPTION_URI:Ljava/lang/String; = "subscription_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "datasets"

    .line 110
    invoke-static {v0}, Lcom/amazon/device/sync/SyncContract;->getSnapShotTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/device/sync/SyncContract$Datasets;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    .line 111
    invoke-static {v0}, Lcom/amazon/device/sync/SyncContract;->getPendingTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/SyncContract$Datasets;->PENDING_TABLE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
