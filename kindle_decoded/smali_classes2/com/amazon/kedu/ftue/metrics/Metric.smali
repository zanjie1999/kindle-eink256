.class public final enum Lcom/amazon/kedu/ftue/metrics/Metric;
.super Ljava/lang/Enum;
.source "Metric.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/ftue/metrics/Metric;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_ACCESSED_FILTERED_TO:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_ACCESSED_NOT_FOUND:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_ACCESSED_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_DOWNLOADED_ALREADY:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_DOWNLOADED_CORRUPT:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_DOWNLOADED_FAILURE:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_DOWNLOADED_INTERRUPTED:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_DOWNLOADED_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_DOWNLOAD_DURATION:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_DOWNLOAD_FAILURE_DURATION:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_DOWNLOAD_SYNC_ATTEMPTS_REQUIRED:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_MANIFEST_INVALID_FORMAT:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_MANIFEST_LIVE_UPDATE:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_MANIFEST_UP_TO_DATE:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_SYNC_DURATION:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_UNPACK:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_UNPACK_FAILURE:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_UNPACK_INVALID:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum ASSET_UNPACK_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum JIT_BUILD:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum JIT_EVALUATION:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum JIT_SHOWN:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum TUTORIAL_ASSETS_AVAILABLE:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum TUTORIAL_BUILD:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum TUTORIAL_EVALUATION:Lcom/amazon/kedu/ftue/metrics/Metric;

.field public static final enum TUTORIAL_SHOWN:Lcom/amazon/kedu/ftue/metrics/Metric;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/4 v1, 0x0

    const-string v2, "TUTORIAL_ASSETS_AVAILABLE"

    const-string v3, "Tutorial:AssetsAvailable"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_ASSETS_AVAILABLE:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 11
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/4 v2, 0x1

    const-string v3, "TUTORIAL_EVALUATION"

    const-string v4, "Tutorial:Evaluation"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_EVALUATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 12
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/4 v3, 0x2

    const-string v4, "TUTORIAL_SHOWN"

    const-string v5, "Tutorial:Shown"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_SHOWN:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 13
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/4 v4, 0x3

    const-string v5, "TUTORIAL_BUILD"

    const-string v6, "Tutorial:Build"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_BUILD:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 15
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/4 v5, 0x4

    const-string v6, "JIT_EVALUATION"

    const-string v7, "JIT:Evalutaion"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->JIT_EVALUATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 16
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/4 v6, 0x5

    const-string v7, "JIT_SHOWN"

    const-string v8, "JIT:Shown"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->JIT_SHOWN:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 17
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/4 v7, 0x6

    const-string v8, "JIT_BUILD"

    const-string v9, "JIT:Build"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->JIT_BUILD:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 19
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/4 v8, 0x7

    const-string v9, "ASSET_MANIFEST_INVALID_FORMAT"

    const-string v10, "Asset:Manifest:InvalidFormat"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_MANIFEST_INVALID_FORMAT:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 20
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v9, 0x8

    const-string v10, "ASSET_MANIFEST_UP_TO_DATE"

    const-string v11, "Asset:Manifest:UpToDate"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_MANIFEST_UP_TO_DATE:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 21
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v10, 0x9

    const-string v11, "ASSET_MANIFEST_LIVE_UPDATE"

    const-string v12, "Asset:Manifest:LiveUpdate:Success"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_MANIFEST_LIVE_UPDATE:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 22
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v11, 0xa

    const-string v12, "ASSET_SYNC_DURATION"

    const-string v13, "Asset:Sync:Duration"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_SYNC_DURATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 23
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v12, 0xb

    const-string v13, "ASSET_DOWNLOAD_SYNC_ATTEMPTS_REQUIRED"

    const-string v14, "Asset:Download:Sync:Attempts"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOAD_SYNC_ATTEMPTS_REQUIRED:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 24
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v13, 0xc

    const-string v14, "ASSET_DOWNLOAD_DURATION"

    const-string v15, "Asset:Download:Duration"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOAD_DURATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 25
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v14, 0xd

    const-string v15, "ASSET_DOWNLOAD_FAILURE_DURATION"

    const-string v13, "Asset:Download:Failure:Duration"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOAD_FAILURE_DURATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 26
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v13, 0xe

    const-string v15, "ASSET_DOWNLOADED_SUCCESS"

    const-string v14, "Asset:Download:Success"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 27
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v14, 0xf

    const-string v15, "ASSET_DOWNLOADED_ALREADY"

    const-string v13, "Asset:Download:AlreadyPresent"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_ALREADY:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 28
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v13, 0x10

    const-string v15, "ASSET_DOWNLOADED_FAILURE"

    const-string v14, "Asset:Download:Failure"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_FAILURE:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 29
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v14, 0x11

    const-string v15, "ASSET_DOWNLOADED_INTERRUPTED"

    const-string v13, "Asset:Download:Interrupted"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_INTERRUPTED:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 30
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v13, 0x12

    const-string v15, "ASSET_DOWNLOADED_CORRUPT"

    const-string v14, "Asset:Download:Corrupt"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_CORRUPT:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 31
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v14, 0x13

    const-string v15, "ASSET_UNPACK"

    const-string v13, "Asset:Unpack"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 32
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v13, 0x14

    const-string v15, "ASSET_UNPACK_SUCCESS"

    const-string v14, "Asset:Unpack:Success"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 33
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v14, 0x15

    const-string v15, "ASSET_UNPACK_FAILURE"

    const-string v13, "Asset:Unpack:Failure"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK_FAILURE:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 34
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const-string v13, "ASSET_UNPACK_INVALID"

    const/16 v15, 0x16

    const-string v14, "Asset:Unpack:Invalid"

    invoke-direct {v0, v13, v15, v14}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK_INVALID:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 35
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const-string v13, "ASSET_ACCESSED_SUCCESS"

    const/16 v14, 0x17

    const-string v15, "Asset:Accessed"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_ACCESSED_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 36
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const-string v13, "ASSET_ACCESSED_NOT_FOUND"

    const/16 v14, 0x18

    const-string v15, "Asset:Accessed:NotFound"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_ACCESSED_NOT_FOUND:Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 37
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    const-string v13, "ASSET_ACCESSED_FILTERED_TO"

    const/16 v14, 0x19

    const-string v15, "Asset:Accessed:FilteredTo"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/kedu/ftue/metrics/Metric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_ACCESSED_FILTERED_TO:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v13, 0x1a

    new-array v13, v13, [Lcom/amazon/kedu/ftue/metrics/Metric;

    .line 6
    sget-object v14, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_ASSETS_AVAILABLE:Lcom/amazon/kedu/ftue/metrics/Metric;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_EVALUATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_SHOWN:Lcom/amazon/kedu/ftue/metrics/Metric;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->TUTORIAL_BUILD:Lcom/amazon/kedu/ftue/metrics/Metric;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->JIT_EVALUATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->JIT_SHOWN:Lcom/amazon/kedu/ftue/metrics/Metric;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->JIT_BUILD:Lcom/amazon/kedu/ftue/metrics/Metric;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_MANIFEST_INVALID_FORMAT:Lcom/amazon/kedu/ftue/metrics/Metric;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_MANIFEST_UP_TO_DATE:Lcom/amazon/kedu/ftue/metrics/Metric;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_MANIFEST_LIVE_UPDATE:Lcom/amazon/kedu/ftue/metrics/Metric;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_SYNC_DURATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOAD_SYNC_ATTEMPTS_REQUIRED:Lcom/amazon/kedu/ftue/metrics/Metric;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOAD_DURATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOAD_FAILURE_DURATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_ALREADY:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_FAILURE:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_INTERRUPTED:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_CORRUPT:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK_FAILURE:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0x15

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK_INVALID:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0x16

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_ACCESSED_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0x17

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_ACCESSED_NOT_FOUND:Lcom/amazon/kedu/ftue/metrics/Metric;

    const/16 v2, 0x18

    aput-object v1, v13, v2

    const/16 v1, 0x19

    aput-object v0, v13, v1

    sput-object v13, Lcom/amazon/kedu/ftue/metrics/Metric;->$VALUES:[Lcom/amazon/kedu/ftue/metrics/Metric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/amazon/kedu/ftue/metrics/Metric;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/ftue/metrics/Metric;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/ftue/metrics/Metric;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/ftue/metrics/Metric;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/kedu/ftue/metrics/Metric;->$VALUES:[Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v0}, [Lcom/amazon/kedu/ftue/metrics/Metric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/ftue/metrics/Metric;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kedu/ftue/metrics/Metric;->name:Ljava/lang/String;

    return-object v0
.end method
