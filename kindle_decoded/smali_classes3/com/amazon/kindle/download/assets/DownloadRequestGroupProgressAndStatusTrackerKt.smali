.class public final Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTrackerKt;
.super Ljava/lang/Object;
.source "DownloadRequestGroupProgressAndStatusTracker.kt"


# static fields
.field private static final DEFAULT_PROGRESS_UPDATE_THROTTLE_MS:J = 0xfaL

.field private static final ONE_TAP_PROGRESS_UPDATE_THROTTLE_MS:J = 0x64L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTrackerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTrackerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
