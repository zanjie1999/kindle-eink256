.class public Lcom/amazon/whispersync/device/crashmanager/metrics/MetricsConstants;
.super Ljava/lang/Object;
.source "MetricsConstants.java"


# static fields
.field public static final COUNTER_ARTIFACTS_READ:Ljava/lang/String; = "numArtifactsRead"

.field public static final COUNTER_ARTIFACTS_SKIPPED:Ljava/lang/String; = "numArtifactsSkipped"

.field public static final COUNTER_CRASH_SIZE:Ljava/lang/String; = "uploadCrashSize"

.field public static final COUNTER_DROPBOX_FILE_IO_EXCEPTION:Ljava/lang/String; = "dropBoxIOException"

.field public static final COUNTER_KMSG_FILE_NOT_FOUND_EXCEPTION:Ljava/lang/String; = "ramdumpIOException"

.field public static final COUNTER_NO_NETWORK:Ljava/lang/String; = "noUsableConnection"

.field public static final COUNTER_PARTIAL_UPLOAD:Ljava/lang/String; = "partialUpload"

.field public static final COUNTER_UPLOAD_ATTEMPT:Ljava/lang/String; = "uploadAttempt"

.field public static final COUNTER_UPLOAD_FAILED:Ljava/lang/String; = "uploadFailed"

.field public static final COUNTER_UPLOAD_ILLEGAL_ACCESS_EXCEPTION:Ljava/lang/String; = "uploadIllegalAccessException"

.field public static final COUNTER_UPLOAD_MISSING_CREDENTIALS_EXCEPTION:Ljava/lang/String; = "uploadMissingCredentialsException"

.field public static final COUNTER_UPLOAD_REQUEST_FAILED_EXCEPTION:Ljava/lang/String; = "uploadRequestFailedException"

.field public static final COUNTER_UPLOAD_TIMEOUT_EXCEPTION:Ljava/lang/String; = "uploadTimeoutException"

.field public static final COUNTER_UPLOAD_UNKNOWN_EXCEPTION:Ljava/lang/String; = "uploadUnknowException"

.field public static final DCP_PROGRAM_NAME:Ljava/lang/String; = "DeviceEventTracker"

.field public static final DCP_SOURCE_NAME_UPLOAD_CRASH:Ljava/lang/String; = "DeviceType:"

.field public static final PROGRAM_NAME:Ljava/lang/String; = "CrashManager"

.field public static final SOURCE_NAME_OFFLOAD_CRASH:Ljava/lang/String; = "offloadCrashEntries"

.field public static final SOURCE_NAME_UPLOAD_CRASH:Ljava/lang/String; = "uploadCrashEntries"

.field public static final STRING_DROPBOX_FILE_IO_EXCEPTION:Ljava/lang/String; = "dropBoxIOExceptionMessage"

.field public static final STRING_KMSG_FILE_NOT_FOUND_EXCEPTION:Ljava/lang/String; = "ramdumpIoExceptionMessage"

.field public static final STRING_UPLOAD_CRASH_DESCRIPTOR:Ljava/lang/String; = "crashDescriptor"

.field public static final STRING_UPLOAD_EXCEPTIONS:Ljava/lang/String; = "uploadExceptions"

.field public static final STRING_UPLOAD_ILLEGAL_ACCESS_EXCEPTION:Ljava/lang/String; = "uploadIllegalAccessExceptionMessage"

.field public static final STRING_UPLOAD_MISSING_CREDENTIALS_EXCEPTION:Ljava/lang/String; = "uploadMissingCredentialsMessage"

.field public static final STRING_UPLOAD_REQUEST_FAILED_EXCEPTION:Ljava/lang/String; = "uploadRequestFailedExceptionMessage"

.field public static final STRING_UPLOAD_TIMEOUT_EXCEPTION:Ljava/lang/String; = "uploadTimeoutExceptionMessage"

.field public static final STRING_UPLOAD_UNKNOWN_EXCEPTION:Ljava/lang/String; = "uploadUnknownExceptionMessage"

.field public static final TIMER_UPLOAD_TIME:Ljava/lang/String; = "uploadTime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
