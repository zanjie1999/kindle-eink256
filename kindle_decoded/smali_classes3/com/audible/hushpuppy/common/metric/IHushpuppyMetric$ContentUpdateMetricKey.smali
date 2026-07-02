.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedAudioDownloadedAcrNotFound:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedAudioDownloadedNotFound:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedAudioFileNotDownloaded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedInvalidIBook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedNewSyncFileMissing:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedNoRelationship:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedOldSyncFileMissing:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedRelationshipUpdateUnknownError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedRetryableBookOpened:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedRetryableNoNetwork:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedRetryableRelationshipUpdateFailed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedRetryableSyncFileDownloadTimeOut:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedSyncFileDownloadFailed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum FailedSyncFileDownloadUnknownError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum ReadyNewSyncFileDownloaded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum ReadyNoCompanionForOldFormat:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum ReadyNoSyncFileExists:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum WaitRelationshipUpdateInProgress:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

.field public static final enum WaitSyncFileDownloadInProgress:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 509
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/4 v1, 0x0

    const-string v2, "FailedInvalidIBook"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedInvalidIBook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 511
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/4 v2, 0x1

    const-string v3, "FailedNoRelationship"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedNoRelationship:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 513
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/4 v3, 0x2

    const-string v4, "FailedSyncFileDownloadFailed"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedSyncFileDownloadFailed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 515
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/4 v4, 0x3

    const-string v5, "FailedSyncFileDownloadUnknownError"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedSyncFileDownloadUnknownError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 517
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/4 v5, 0x4

    const-string v6, "FailedRelationshipUpdateUnknownError"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRelationshipUpdateUnknownError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 519
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/4 v6, 0x5

    const-string v7, "FailedRetryableNoNetwork"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableNoNetwork:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 521
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/4 v7, 0x6

    const-string v8, "FailedRetryableRelationshipUpdateFailed"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableRelationshipUpdateFailed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 523
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/4 v8, 0x7

    const-string v9, "FailedRetryableBookOpened"

    invoke-direct {v0, v9, v8}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableBookOpened:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 525
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v9, 0x8

    const-string v10, "FailedRetryableSyncFileDownloadTimeOut"

    invoke-direct {v0, v10, v9}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableSyncFileDownloadTimeOut:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 527
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v10, 0x9

    const-string v11, "WaitRelationshipUpdateInProgress"

    invoke-direct {v0, v11, v10}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->WaitRelationshipUpdateInProgress:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 529
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v11, 0xa

    const-string v12, "WaitSyncFileDownloadInProgress"

    invoke-direct {v0, v12, v11}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->WaitSyncFileDownloadInProgress:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 531
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v12, 0xb

    const-string v13, "ReadyNewSyncFileDownloaded"

    invoke-direct {v0, v13, v12}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->ReadyNewSyncFileDownloaded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 533
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v13, 0xc

    const-string v14, "ReadyNoCompanionForOldFormat"

    invoke-direct {v0, v14, v13}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->ReadyNoCompanionForOldFormat:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 535
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v14, 0xd

    const-string v15, "ReadyNoSyncFileExists"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->ReadyNoSyncFileExists:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 537
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v15, 0xe

    const-string v14, "FailedAudioFileNotDownloaded"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedAudioFileNotDownloaded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 539
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v14, 0xf

    const-string v15, "FailedAudioDownloadedNotFound"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedAudioDownloadedNotFound:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 541
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v15, 0x10

    const-string v14, "FailedAudioDownloadedAcrNotFound"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedAudioDownloadedAcrNotFound:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 543
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v14, 0x11

    const-string v15, "FailedOldSyncFileMissing"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedOldSyncFileMissing:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 545
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v15, 0x12

    const-string v14, "FailedNewSyncFileMissing"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedNewSyncFileMissing:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v14, 0x13

    new-array v14, v14, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    .line 507
    sget-object v16, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedInvalidIBook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v16, v14, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedNoRelationship:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedSyncFileDownloadFailed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v1, v14, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedSyncFileDownloadUnknownError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v1, v14, v4

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRelationshipUpdateUnknownError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v1, v14, v5

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableNoNetwork:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v1, v14, v6

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableRelationshipUpdateFailed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v1, v14, v7

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableBookOpened:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v1, v14, v8

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedRetryableSyncFileDownloadTimeOut:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v1, v14, v9

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->WaitRelationshipUpdateInProgress:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v1, v14, v10

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->WaitSyncFileDownloadInProgress:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v1, v14, v11

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->ReadyNewSyncFileDownloaded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v1, v14, v12

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->ReadyNoCompanionForOldFormat:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    aput-object v1, v14, v13

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->ReadyNoSyncFileExists:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedAudioFileNotDownloaded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedAudioDownloadedNotFound:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedAudioDownloadedAcrNotFound:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->FailedOldSyncFileMissing:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 507
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;
    .locals 1

    .line 507
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;
    .locals 1

    .line 507
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ContentUpdateMetricKey;

    return-object v0
.end method
