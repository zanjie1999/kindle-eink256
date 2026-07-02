.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookErrorAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookErrorInsufficientStorage:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookErrorNoNetwork:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookErrorUnknown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookRequestDequeuedLibraryRefreshEvent:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookRequestDequeuedLibraryRefreshEventAsinInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookRequestDequeuedLibraryRefreshEventAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookRequestDequeuedMaxTimeReached:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookRequestDequeuedMaxTimeReachedAsinInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookRequestDequeuedMaxTimeReachedAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookRequestDequeuedRetryManagerAsinInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookRequestEnqueuedRetryManagerAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadAudiobookSyncFile:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadCancelled:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadFromLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadFromLibraryWithEBook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadFromReaderMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadSample:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadSampleSyncFile:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

.field public static final enum DownloadWhenAutoDownloadOn:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 264
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/4 v1, 0x0

    const-string v2, "DownloadFromFullPlayer"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 266
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/4 v2, 0x1

    const-string v3, "DownloadFromLibrary"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 268
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/4 v3, 0x2

    const-string v4, "DownloadFromLibraryWithEBook"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromLibraryWithEBook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 270
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/4 v4, 0x3

    const-string v5, "DownloadFromReaderMiniPlayer"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromReaderMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 272
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/4 v5, 0x4

    const-string v6, "DownloadCancelled"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadCancelled:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 274
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/4 v6, 0x5

    const-string v7, "DownloadAudiobook"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 276
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/4 v7, 0x6

    const-string v8, "DownloadAudiobookErrorNoNetwork"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookErrorNoNetwork:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 278
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/4 v8, 0x7

    const-string v9, "DownloadAudiobookErrorAsinNotInAudibleLibrary"

    invoke-direct {v0, v9, v8}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookErrorAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 280
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v9, 0x8

    const-string v10, "DownloadAudiobookErrorUnknown"

    invoke-direct {v0, v10, v9}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookErrorUnknown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 282
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v10, 0x9

    const-string v11, "DownloadAudiobookErrorInsufficientStorage"

    invoke-direct {v0, v11, v10}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookErrorInsufficientStorage:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 284
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v11, 0xa

    const-string v12, "DownloadAudiobookSyncFile"

    invoke-direct {v0, v12, v11}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookSyncFile:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 289
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v12, 0xb

    const-string v13, "DownloadAudiobookRequestEnqueuedRetryManagerAsinNotInAudibleLibrary"

    invoke-direct {v0, v13, v12}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestEnqueuedRetryManagerAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 294
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v13, 0xc

    const-string v14, "DownloadAudiobookRequestDequeuedRetryManagerAsinInAudibleLibrary"

    invoke-direct {v0, v14, v13}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedRetryManagerAsinInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 298
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v14, 0xd

    const-string v15, "DownloadAudiobookRequestDequeuedMaxTimeReached"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedMaxTimeReached:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 303
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v15, 0xe

    const-string v14, "DownloadAudiobookRequestDequeuedMaxTimeReachedAsinInAudibleLibrary"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedMaxTimeReachedAsinInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 308
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v14, 0xf

    const-string v15, "DownloadAudiobookRequestDequeuedMaxTimeReachedAsinNotInAudibleLibrary"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedMaxTimeReachedAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 313
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v15, 0x10

    const-string v14, "DownloadAudiobookRequestDequeuedLibraryRefreshEvent"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedLibraryRefreshEvent:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 318
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v14, 0x11

    const-string v15, "DownloadAudiobookRequestDequeuedLibraryRefreshEventAsinInAudibleLibrary"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedLibraryRefreshEventAsinInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 323
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v15, 0x12

    const-string v14, "DownloadAudiobookRequestDequeuedLibraryRefreshEventAsinNotInAudibleLibrary"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedLibraryRefreshEventAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 325
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v14, 0x13

    const-string v15, "DownloadSample"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadSample:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 327
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v15, 0x14

    const-string v14, "DownloadSampleSyncFile"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadSampleSyncFile:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 329
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v14, 0x15

    const-string v15, "DownloadWhenAutoDownloadOn"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadWhenAutoDownloadOn:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v15, 0x16

    new-array v15, v15, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 262
    sget-object v16, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v16, v15, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromLibraryWithEBook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v1, v15, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromReaderMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v1, v15, v4

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadCancelled:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v1, v15, v5

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v1, v15, v6

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookErrorNoNetwork:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v1, v15, v7

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookErrorAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v1, v15, v8

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookErrorUnknown:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v1, v15, v9

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookErrorInsufficientStorage:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v1, v15, v10

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookSyncFile:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v1, v15, v11

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestEnqueuedRetryManagerAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v1, v15, v12

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedRetryManagerAsinInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    aput-object v1, v15, v13

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedMaxTimeReached:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v2, 0xd

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedMaxTimeReachedAsinInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v2, 0xe

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedMaxTimeReachedAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v2, 0xf

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedLibraryRefreshEvent:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v2, 0x10

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedLibraryRefreshEventAsinInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v2, 0x11

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookRequestDequeuedLibraryRefreshEventAsinNotInAudibleLibrary:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v2, 0x12

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadSample:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v2, 0x13

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadSampleSyncFile:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    const/16 v2, 0x14

    aput-object v1, v15, v2

    aput-object v0, v15, v14

    sput-object v15, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;
    .locals 1

    .line 262
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;
    .locals 1

    .line 262
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    return-object v0
.end method
