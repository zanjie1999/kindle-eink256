.class public Lcom/amazon/device/crashmanager/metrics/MetricsConstants;
.super Ljava/lang/Object;
.source "MetricsConstants.java"


# static fields
.field public static final BYTES_PER_SECOND_UPLOAD:Ljava/lang/String; = "crashupload_bytesPerSecond_"

.field public static final COUNTER_ARTIFACTS_FAILED:Ljava/lang/String; = "numArtifactsFailed"

.field public static final COUNTER_ARTIFACTS_NOT_UPLOADED:Ljava/lang/String; = "numArtifactsNotUploaded"

.field public static final COUNTER_ARTIFACTS_READ:Ljava/lang/String; = "numArtifactsRead"

.field public static final COUNTER_ARTIFACTS_SKIPPED:Ljava/lang/String; = "numArtifactsSkipped"

.field public static final COUNTER_ARTIFACTS_UPLOADED:Ljava/lang/String; = "numArtifactsUploaded"

.field public static final COUNTER_ARTIFACT_UPLOADED_SUCCESS:Ljava/lang/String; = ".SUCCESS"

.field public static final COUNTER_CRASH_SIZE:Ljava/lang/String; = "uploadCrashSize"

.field public static final COUNTER_DET_END_POINT:Ljava/lang/String; = "detEndPoint_"

.field public static final COUNTER_DROPBOX_FILE_IO_EXCEPTION:Ljava/lang/String; = "dropBoxIOException"

.field public static final COUNTER_EMPTY_PINCRASH:Ljava/lang/String; = "emptyPinCrashBody"

.field public static final COUNTER_KMSG_FILE_NOT_FOUND_EXCEPTION:Ljava/lang/String; = "ramdumpIOException"

.field public static final COUNTER_NO_NETWORK:Ljava/lang/String; = "noUsableConnection"

.field public static final COUNTER_OFFLOAD_CRASHES:Ljava/lang/String; = "CrashOffloadRequest"

.field public static final COUNTER_UPLOAD_ATTEMPT:Ljava/lang/String; = "uploadAttempt"

.field public static final COUNTER_UPLOAD_CONNECTION_REFUSED_ERROR:Ljava/lang/String; = "uploadConnectionRefusedError"

.field public static final COUNTER_UPLOAD_FAILED:Ljava/lang/String; = "uploadFailed"

.field public static final COUNTER_UPLOAD_MANUAL:Ljava/lang/String; = "CrashUploadRequest.Manual"

.field public static final COUNTER_UPLOAD_PERIODIC:Ljava/lang/String; = "CrashUploadRequest.Periodic"

.field public static final COUNTER_UPLOAD_SOCKET_TIMEOUT_EXCEPTION:Ljava/lang/String; = "uploadSocketTimeoutException"

.field public static final COUNTER_UPLOAD_SPECTATOR:Ljava/lang/String; = "CrashUploadRequest.SpectatorPull"

.field public static final COUNTER_UPLOAD_TIMEOUT_EXCEPTION:Ljava/lang/String; = "uploadTimeoutException"

.field public static final COUNTER_UPLOAD_UNKNOWN_EXCEPTION:Ljava/lang/String; = "uploadUnknowException"

.field public static final COUNTER_UPLOAD_UNKNOWN_HOST_EXCEPTION:Ljava/lang/String; = "uploadUnknownHostException"

.field public static final DAILY_ACTIVE_UPLOADS:Ljava/lang/String; = "DAILY_ACTIVE_UPLOADS"

.field public static final MONTHLY_ACTIVE_UPLOADS:Ljava/lang/String; = "MONTHLY_ACTIVE_UPLOADS"

.field public static final PROGRAM_NAME:Ljava/lang/String; = "CrashManager"

.field public static final SOURCE_NAME_OFFLOAD_CRASH:Ljava/lang/String; = "offloadCrashEntries"

.field public static final SOURCE_NAME_UPLOAD_CRASH:Ljava/lang/String; = "uploadCrashEntries"

.field public static final STRING_DROPBOX_FILE_IO_EXCEPTION:Ljava/lang/String; = "dropBoxIOExceptionMessage"

.field public static final STRING_UPLOAD_CRASH_DESCRIPTOR:Ljava/lang/String; = "crashDescriptor"

.field public static final STRING_UPLOAD_EXCEPTIONS:Ljava/lang/String; = "uploadExceptions"

.field public static final STRING_UPLOAD_NO_USABLE_CONNECTION_EXCEPTION:Ljava/lang/String; = "uploadNoUsableConnectionMessage"

.field public static final STRING_UPLOAD_TIMEOUT_EXCEPTION:Ljava/lang/String; = "uploadTimeoutExceptionMessage"

.field public static final STRING_UPLOAD_UNKNOWN_EXCEPTION:Ljava/lang/String; = "uploadUnknownExceptionMessage"

.field public static final TIMER_BUILD_COUNTER_TIME:Ljava/lang/String; = "buildCrashDescriptorCounterMappingTime"

.field public static final TIMER_INDIVIDUAL_CRASH_FILE_UPLOAD:Ljava/lang/String; = "crashUploadTime_"

.field public static final TIMER_UPLOAD_TIME:Ljava/lang/String; = "uploadTime"

.field public static final WEEKLY_ACTIVE_UPLOADS:Ljava/lang/String; = "WEEKLY_ACTIVE_UPLOADS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
