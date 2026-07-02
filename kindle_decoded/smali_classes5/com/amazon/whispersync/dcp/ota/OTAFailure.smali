.class public final enum Lcom/amazon/whispersync/dcp/ota/OTAFailure;
.super Ljava/lang/Enum;
.source "OTAFailure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/dcp/ota/OTAFailure;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/dcp/ota/OTAFailure;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DownloadAppPackageNameVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadAppPackageParseFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadAppVersionVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadCannotResume:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadCouldNotStart:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadDatabaseInBadState:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadDeviceNotFound:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadFailedToCheckSDCardEncryptionState:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadFailedToDeleteUpdateOnOutOfSpace:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadFailedToSetDestinationToSDCardDueToEncryption:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadFailedToSetDestinationToSystemCache:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadFileError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadFileExists:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadHTTPClientError4xx:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadHTTPError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadHTTPServerError5xx:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadInstallManifestBadEncoding:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadInstallManifestFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadInsufficientSpace:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadItemsMissing:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadMalformedLocalURI:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadManagerRaceCondition:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadManifestContainsMultipleInstallManifests:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadManifestContainsNoInstallManifests:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadManifestImportingFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadManifestParsingFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadOSVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadOSVersionVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadSignatureMismatch:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadTooManyRedirects:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadUnhandledHTTPCode:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadUnknownError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum DownloadUpdatesFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum FileValidationError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureAlreadyExists:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureBadManifest:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureBadPackageName:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureBadSharedUserId:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureCPUAbiIncompatible:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureCertificateEncoding:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureConflictingProvider:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureContainerError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureDexopt:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureDuplicatePackage:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureInconsistentCertificates:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureInsufficientStorage:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureInternalError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureInvalidApk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureInvalidInstallLocation:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureInvalidUri:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureManifestEmpty:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureManifestMalformed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureMediaUnavailable:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureMissingFeature:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureMissingSharedLibrary:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureNewerSdk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureNoCertificates:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureNoSharedUser:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureNotApk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureOlderSdk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureReplaceCouldntDelete:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureSharedUserIncompatible:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureTestOnly:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureUnexpectedException:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationFailureUpdateIncompatible:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallApplicationStalled:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallCheckOSUpdateStatusFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallDatabaseInvalidUpdateType:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallErrorMarkingPackageAsInstalled:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallManifestDedupingAgainstInstalledFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallManifestIOFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallManifestInvalidJSON:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallManifestInvalidUpdateType:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallManifestUpdateFileNotFound:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallOSFailureOnReboot:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallOSIOFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallOSMalformedURI:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallOSUnexpectedError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum InstallProcessUpdatesFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum None:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum ProcessManifestDatabaseInsertionFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum ProcessManifestFailedToGetLength:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum Unknown:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

.field public static final enum UpdateCancelledFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;


# instance fields
.field private final mFailureString:Ljava/lang/String;

.field private final mStep:Lcom/amazon/whispersync/dcp/ota/OTAStep;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 9
    new-instance v6, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v4, Lcom/amazon/whispersync/dcp/ota/OTAStep;->None:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-string v5, "Unknown"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v6, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->Unknown:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->None:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "None"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v12, "None"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->None:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->DownloadManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadManifestParsingFailed"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v6, "ManifestParsingFailed"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManifestParsingFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 12
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->DownloadManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadManifestContainsMultipleInstallManifests"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const-string v12, "MultipleInstallManifests"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManifestContainsMultipleInstallManifests:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 13
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->DownloadManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadManifestContainsNoInstallManifests"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v6, "NoInstallManifest"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManifestContainsNoInstallManifests:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 14
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->DownloadManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadManifestImportingFailed"

    const/4 v9, 0x5

    const/4 v10, 0x4

    const-string v12, "ImportingFailed"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManifestImportingFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 15
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->InstallManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallManifestUpdateFileNotFound"

    const/4 v3, 0x6

    const/4 v4, 0x5

    const-string v6, "UpdateFileNotFound"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestUpdateFileNotFound:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 16
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->InstallManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallManifestInvalidUpdateType"

    const/4 v9, 0x7

    const/4 v10, 0x6

    const-string v12, "InvalidUpdateType"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestInvalidUpdateType:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 17
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->InstallManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallManifestIOFailure"

    const/16 v3, 0x8

    const/4 v4, 0x7

    const-string v6, "IOFailureImportingManifest"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestIOFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 18
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->InstallManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallManifestInvalidJSON"

    const/16 v9, 0x9

    const/16 v10, 0x8

    const-string v12, "InvalidJsonImportingManifest"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestInvalidJSON:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 19
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->InstallManifest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallManifestDedupingAgainstInstalledFailed"

    const/16 v3, 0xa

    const/16 v4, 0x9

    const-string v6, "InstallManifestDedupingAgainstInstalledFailed"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestDedupingAgainstInstalledFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 21
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadFailedToSetDestinationToSystemCache"

    const/16 v9, 0xb

    const/16 v10, 0xa

    const-string v12, "FailedToSetDestinationToSystemCache"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFailedToSetDestinationToSystemCache:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 22
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadFailedToSetDestinationToSDCardDueToEncryption"

    const/16 v3, 0xc

    const/16 v4, 0xb

    const-string v6, "FailedToSetDestinationToSDCardDueToEncryption"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFailedToSetDestinationToSDCardDueToEncryption:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 24
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadFailedToCheckSDCardEncryptionState"

    const/16 v9, 0xd

    const/16 v10, 0xc

    const-string v12, "FailedToCheckSDCardEncryptionState"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFailedToCheckSDCardEncryptionState:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 25
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadCouldNotStart"

    const/16 v3, 0xe

    const/16 v4, 0xd

    const-string v6, "CouldNotStartSomeDownloads"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadCouldNotStart:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 26
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->ProcessManfiest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "ProcessManifestFailedToGetLength"

    const/16 v9, 0xf

    const/16 v10, 0xe

    const-string v12, "FailedToGetLength"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->ProcessManifestFailedToGetLength:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 27
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadItemsMissing"

    const/16 v3, 0x10

    const/16 v4, 0xf

    const-string v6, "SomeDownloadsMissing"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadItemsMissing:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 28
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadCannotResume"

    const/16 v9, 0x11

    const/16 v10, 0x10

    const-string v12, "CannotResume"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadCannotResume:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 29
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadDeviceNotFound"

    const/16 v3, 0x12

    const/16 v4, 0x11

    const-string v6, "ExternalStorageMissing"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadDeviceNotFound:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 30
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadFailedToDeleteUpdateOnOutOfSpace"

    const/16 v9, 0x13

    const/16 v10, 0x12

    const-string v12, "FailedToDeleteUpdateOnOutOfSpace"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFailedToDeleteUpdateOnOutOfSpace:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadFileExists"

    const/16 v3, 0x14

    const/16 v4, 0x13

    const-string v6, "FileAlreadyExists"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFileExists:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 32
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadFileError"

    const/16 v9, 0x15

    const/16 v10, 0x14

    const-string v12, "FileError"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFileError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 33
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadHTTPError"

    const/16 v3, 0x16

    const/16 v4, 0x15

    const-string v6, "HTTPDataError"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadHTTPError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 34
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadInsufficientSpace"

    const/16 v9, 0x17

    const/16 v10, 0x16

    const-string v12, "OutOfSpace"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadInsufficientSpace:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 35
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadTooManyRedirects"

    const/16 v3, 0x18

    const/16 v4, 0x17

    const-string v6, "TooManyRedirects"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadTooManyRedirects:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 36
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadUnhandledHTTPCode"

    const/16 v9, 0x19

    const/16 v10, 0x18

    const-string v12, "UnhandledHTTPCode"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadUnhandledHTTPCode:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 37
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadUnknownError"

    const/16 v3, 0x1a

    const/16 v4, 0x19

    const-string v6, "Unknown"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadUnknownError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 38
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadHTTPClientError4xx"

    const/16 v9, 0x1b

    const/16 v10, 0x1a

    const-string v12, "HTTPClient4xx"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadHTTPClientError4xx:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 39
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadHTTPServerError5xx"

    const/16 v3, 0x1c

    const/16 v4, 0x1b

    const-string v6, "HTTPServer5xx"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadHTTPServerError5xx:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 40
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadManagerRaceCondition"

    const/16 v9, 0x1d

    const/16 v10, 0x1c

    const-string v12, "DownloadManagerRaceCondition"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManagerRaceCondition:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 41
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadInstallManifestFailed"

    const/16 v3, 0x1e

    const/16 v4, 0x1d

    const-string v6, "FailedToDownloadInstallManifest"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadInstallManifestFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 42
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadInstallManifestBadEncoding"

    const/16 v9, 0x1f

    const/16 v10, 0x1e

    const-string v12, "BadEncodingOfInstallManifest"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadInstallManifestBadEncoding:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 43
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadDatabaseInBadState"

    const/16 v3, 0x20

    const/16 v4, 0x1f

    const-string v6, "DownloadDatabaseInBadState"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadDatabaseInBadState:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 44
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadUpdatesFailure"

    const/16 v9, 0x21

    const/16 v10, 0x20

    const-string v12, "DownloadUpdatesFailure"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadUpdatesFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 45
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadMalformedLocalURI"

    const/16 v3, 0x22

    const/16 v4, 0x21

    const-string v6, "MalformedLocalURI"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadMalformedLocalURI:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 46
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadAppPackageParseFailure"

    const/16 v9, 0x23

    const/16 v10, 0x22

    const-string v12, "AppPackageParseFailure"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadAppPackageParseFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 47
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadAppPackageNameVerificationFailure"

    const/16 v3, 0x24

    const/16 v4, 0x23

    const-string v6, "AppPackageNameVerificationFailure"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadAppPackageNameVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 48
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadAppVersionVerificationFailure"

    const/16 v9, 0x25

    const/16 v10, 0x24

    const-string v12, "AppVersionVerificationFailure"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadAppVersionVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 49
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadOSVersionVerificationFailure"

    const/16 v3, 0x26

    const/16 v4, 0x25

    const-string v6, "OSVersionVerificationFailure"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadOSVersionVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 50
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "DownloadOSVerificationFailure"

    const/16 v9, 0x27

    const/16 v10, 0x26

    const-string v12, "OSVerificationFailure"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadOSVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 51
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallOSFailureOnReboot"

    const/16 v3, 0x28

    const/16 v4, 0x27

    const-string v6, "OSInstallFailureDetected"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallOSFailureOnReboot:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 52
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureAlreadyExists"

    const/16 v9, 0x29

    const/16 v10, 0x28

    const-string v12, "AppInstallFailedAlreadyExists"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureAlreadyExists:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 53
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureInvalidApk"

    const/16 v3, 0x2a

    const/16 v4, 0x29

    const-string v6, "AppInstallFailedInvalidApk"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInvalidApk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 54
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureInvalidUri"

    const/16 v9, 0x2b

    const/16 v10, 0x2a

    const-string v12, "AppInstallFailedInvalidUri"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInvalidUri:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 55
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureInsufficientStorage"

    const/16 v3, 0x2c

    const/16 v4, 0x2b

    const-string v6, "AppInstallFailedInsufficientStorage"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInsufficientStorage:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 56
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureDuplicatePackage"

    const/16 v9, 0x2d

    const/16 v10, 0x2c

    const-string v12, "AppInstallFailedDuplicatePackage"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureDuplicatePackage:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 57
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureNoSharedUser"

    const/16 v3, 0x2e

    const/16 v4, 0x2d

    const-string v6, "AppInstallFailedNoSharedUser"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureNoSharedUser:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 58
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureUpdateIncompatible"

    const/16 v9, 0x2f

    const/16 v10, 0x2e

    const-string v12, "AppInstallFailedUpdateIncompatible"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureUpdateIncompatible:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 59
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureSharedUserIncompatible"

    const/16 v3, 0x30

    const/16 v4, 0x2f

    const-string v6, "AppInstallFailedSharedUserIncompatible"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureSharedUserIncompatible:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 60
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureMissingSharedLibrary"

    const/16 v9, 0x31

    const/16 v10, 0x30

    const-string v12, "AppInstallFailedMissingSharedLibrary"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureMissingSharedLibrary:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 61
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureReplaceCouldntDelete"

    const/16 v3, 0x32

    const/16 v4, 0x31

    const-string v6, "AppInstallFailedReplaceCouldntDelete"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureReplaceCouldntDelete:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 62
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureDexopt"

    const/16 v9, 0x33

    const/16 v10, 0x32

    const-string v12, "AppInstallFailedDexopt"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureDexopt:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 63
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureOlderSdk"

    const/16 v3, 0x34

    const/16 v4, 0x33

    const-string v6, "AppInstallFailedOlderSdk"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureOlderSdk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 64
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureConflictingProvider"

    const/16 v9, 0x35

    const/16 v10, 0x34

    const-string v12, "AppInstallFailedConflictingProvider"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureConflictingProvider:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 65
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureNewerSdk"

    const/16 v3, 0x36

    const/16 v4, 0x35

    const-string v6, "AppInstallFailedNewerSdk"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureNewerSdk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 66
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureTestOnly"

    const/16 v9, 0x37

    const/16 v10, 0x36

    const-string v12, "AppInstallFailedTestOnly"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureTestOnly:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 67
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureCPUAbiIncompatible"

    const/16 v3, 0x38

    const/16 v4, 0x37

    const-string v6, "AppInstallFailedCPUAbiIncompatible"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureCPUAbiIncompatible:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 68
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureMissingFeature"

    const/16 v9, 0x39

    const/16 v10, 0x38

    const-string v12, "AppInstallFailedMissingFeature"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureMissingFeature:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 69
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureContainerError"

    const/16 v3, 0x3a

    const/16 v4, 0x39

    const-string v6, "AppInstallFailedContainerError"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureContainerError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 70
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureInvalidInstallLocation"

    const/16 v9, 0x3b

    const/16 v10, 0x3a

    const-string v12, "AppInstallFailedInvalidInstallLocation"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInvalidInstallLocation:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 71
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureMediaUnavailable"

    const/16 v3, 0x3c

    const/16 v4, 0x3b

    const-string v6, "AppInstallFailedMediaUnavailable"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureMediaUnavailable:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 72
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureNotApk"

    const/16 v9, 0x3d

    const/16 v10, 0x3c

    const-string v12, "AppInstallFailedNotApk"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureNotApk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 73
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureBadManifest"

    const/16 v3, 0x3e

    const/16 v4, 0x3d

    const-string v6, "AppInstallFailedBadManifest"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureBadManifest:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 74
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureUnexpectedException"

    const/16 v9, 0x3f

    const/16 v10, 0x3e

    const-string v12, "AppInstallFailedUnexpectedException"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureUnexpectedException:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 75
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureNoCertificates"

    const/16 v3, 0x40

    const/16 v4, 0x3f

    const-string v6, "AppInstallFailedNoCertificates"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureNoCertificates:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 76
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureInconsistentCertificates"

    const/16 v9, 0x41

    const/16 v10, 0x40

    const-string v12, "AppInstallFailedInconsistentCertificates"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInconsistentCertificates:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 77
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureCertificateEncoding"

    const/16 v3, 0x42

    const/16 v4, 0x41

    const-string v6, "AppInstallFailedCertificateEncoding"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureCertificateEncoding:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 78
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureBadPackageName"

    const/16 v9, 0x43

    const/16 v10, 0x42

    const-string v12, "AppInstallFailedBadPackageName"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureBadPackageName:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 79
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureBadSharedUserId"

    const/16 v3, 0x44

    const/16 v4, 0x43

    const-string v6, "AppInstallFailedBadSharedUserId"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureBadSharedUserId:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 80
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureManifestMalformed"

    const/16 v9, 0x45

    const/16 v10, 0x44

    const-string v12, "AppInstallFailedManifestMalformed"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureManifestMalformed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 81
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailureManifestEmpty"

    const/16 v3, 0x46

    const/16 v4, 0x45

    const-string v6, "AppInstallFailedManifestEmpty"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureManifestEmpty:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 82
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationFailureInternalError"

    const/16 v9, 0x47

    const/16 v10, 0x46

    const-string v12, "AppInstallFailedInternalError"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInternalError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 83
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallApplicationFailure"

    const/16 v3, 0x48

    const/16 v4, 0x47

    const-string v6, "AppFailedToInstall"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 84
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallApplicationStalled"

    const/16 v9, 0x49

    const/16 v10, 0x48

    const-string v12, "AppInstallationStalled"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationStalled:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 85
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallOSMalformedURI"

    const/16 v3, 0x4a

    const/16 v4, 0x49

    const-string v6, "OSUpdateMalformedURIFailure"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallOSMalformedURI:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 86
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallOSIOFailure"

    const/16 v9, 0x4b

    const/16 v10, 0x4a

    const-string v12, "OSUpdateIOFailure"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallOSIOFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 87
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallOSUnexpectedError"

    const/16 v3, 0x4c

    const/16 v4, 0x4b

    const-string v6, "OSUpdateUnexpectedError"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallOSUnexpectedError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 88
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallErrorMarkingPackageAsInstalled"

    const/16 v9, 0x4d

    const/16 v10, 0x4c

    const-string v12, "ErrorMarkingPackageAsInstalled"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallErrorMarkingPackageAsInstalled:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 89
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallDatabaseInvalidUpdateType"

    const/16 v3, 0x4e

    const/16 v4, 0x4d

    const-string v6, "DatabaseInvalidUpdateType"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallDatabaseInvalidUpdateType:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 90
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "InstallCheckOSUpdateStatusFailure"

    const/16 v9, 0x4f

    const/16 v10, 0x4e

    const-string v12, "CheckOSUpdateStatusFailure"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallCheckOSUpdateStatusFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 91
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Install:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "InstallProcessUpdatesFailure"

    const/16 v3, 0x50

    const/16 v4, 0x4f

    const-string v6, "ProcessUpdatesFailure"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallProcessUpdatesFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 92
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->None:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "UpdateCancelledFailure"

    const/16 v9, 0x51

    const/16 v10, 0x50

    const-string v12, "UpdateCancelledFailure"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->UpdateCancelledFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 93
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "DownloadSignatureMismatch"

    const/16 v3, 0x52

    const/16 v4, 0x51

    const-string v6, "SignatureMismatch"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadSignatureMismatch:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 94
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v11, Lcom/amazon/whispersync/dcp/ota/OTAStep;->ProcessManfiest:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v8, "ProcessManifestDatabaseInsertionFailure"

    const/16 v9, 0x53

    const/16 v10, 0x52

    const-string v12, "DatabaseInsertionFailure"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->ProcessManifestDatabaseInsertionFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 95
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    sget-object v5, Lcom/amazon/whispersync/dcp/ota/OTAStep;->Download:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    const-string v2, "FileValidationError"

    const/16 v3, 0x54

    const/16 v4, 0x53

    const-string v6, "FileValidationError"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;-><init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->FileValidationError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v1, 0x55

    new-array v1, v1, [Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 7
    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->Unknown:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->None:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManifestParsingFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManifestContainsMultipleInstallManifests:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManifestContainsNoInstallManifests:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManifestImportingFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestUpdateFileNotFound:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestInvalidUpdateType:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestIOFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestInvalidJSON:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestDedupingAgainstInstalledFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFailedToSetDestinationToSystemCache:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFailedToSetDestinationToSDCardDueToEncryption:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFailedToCheckSDCardEncryptionState:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadCouldNotStart:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->ProcessManifestFailedToGetLength:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadItemsMissing:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadCannotResume:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadDeviceNotFound:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFailedToDeleteUpdateOnOutOfSpace:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFileExists:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFileError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadHTTPError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadInsufficientSpace:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadTooManyRedirects:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadUnhandledHTTPCode:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadUnknownError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadHTTPClientError4xx:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadHTTPServerError5xx:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManagerRaceCondition:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadInstallManifestFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadInstallManifestBadEncoding:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadDatabaseInBadState:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadUpdatesFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadMalformedLocalURI:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadAppPackageParseFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadAppPackageNameVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadAppVersionVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadOSVersionVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadOSVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallOSFailureOnReboot:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureAlreadyExists:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInvalidApk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInvalidUri:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInsufficientStorage:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureDuplicatePackage:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureNoSharedUser:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureUpdateIncompatible:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureSharedUserIncompatible:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x30

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureMissingSharedLibrary:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x31

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureReplaceCouldntDelete:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x32

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureDexopt:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x33

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureOlderSdk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x34

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureConflictingProvider:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x35

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureNewerSdk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x36

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureTestOnly:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x37

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureCPUAbiIncompatible:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x38

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureMissingFeature:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x39

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureContainerError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInvalidInstallLocation:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureMediaUnavailable:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureNotApk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureBadManifest:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureUnexpectedException:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureNoCertificates:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x40

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInconsistentCertificates:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x41

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureCertificateEncoding:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x42

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureBadPackageName:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x43

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureBadSharedUserId:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x44

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureManifestMalformed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x45

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureManifestEmpty:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x46

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInternalError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x47

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x48

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationStalled:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x49

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallOSMalformedURI:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x4a

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallOSIOFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x4b

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallOSUnexpectedError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x4c

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallErrorMarkingPackageAsInstalled:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x4d

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallDatabaseInvalidUpdateType:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x4e

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallCheckOSUpdateStatusFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x4f

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallProcessUpdatesFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x50

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->UpdateCancelledFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x51

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadSignatureMismatch:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x52

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->ProcessManifestDatabaseInsertionFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    const/16 v3, 0x53

    aput-object v2, v1, v3

    const/16 v2, 0x54

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    .line 97
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/ota/OTAFailure$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/amazon/whispersync/dcp/ota/OTAStep;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/whispersync/dcp/ota/OTAStep;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->mValue:I

    .line 119
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->mStep:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/amazon/whispersync/dcp/ota/OTAStep;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Failure"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->mFailureString:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(I)Lcom/amazon/whispersync/dcp/ota/OTAFailure;
    .locals 5

    .line 141
    invoke-static {}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->values()[Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 143
    invoke-virtual {v3}, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_1
    sget-object p0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->Unknown:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    return-object p0
.end method

.method public static isUnexpectedForE2EScenario(Lcom/amazon/whispersync/dcp/ota/OTAFailure;)Z
    .locals 1

    .line 166
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManifestParsingFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManifestContainsMultipleInstallManifests:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManifestContainsNoInstallManifests:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadManifestImportingFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestUpdateFileNotFound:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestInvalidUpdateType:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestIOFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestInvalidJSON:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallManifestDedupingAgainstInstalledFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFailedToSetDestinationToSystemCache:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->ProcessManifestFailedToGetLength:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadItemsMissing:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFailedToDeleteUpdateOnOutOfSpace:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadFileError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadUnhandledHTTPCode:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadUnknownError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadHTTPClientError4xx:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadInstallManifestFailed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadInstallManifestBadEncoding:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadDatabaseInBadState:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadUpdatesFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadMalformedLocalURI:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadAppPackageParseFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadAppPackageNameVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadAppVersionVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadOSVersionVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadOSVerificationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallOSFailureOnReboot:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureAlreadyExists:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInvalidApk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInvalidUri:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureDuplicatePackage:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureNoSharedUser:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureUpdateIncompatible:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureSharedUserIncompatible:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureMissingSharedLibrary:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureReplaceCouldntDelete:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureOlderSdk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureConflictingProvider:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureNewerSdk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureCPUAbiIncompatible:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureMissingFeature:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureContainerError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInvalidInstallLocation:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureNotApk:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureBadManifest:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureUnexpectedException:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureNoCertificates:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureInconsistentCertificates:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureCertificateEncoding:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureBadPackageName:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureBadSharedUserId:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureManifestMalformed:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailureManifestEmpty:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallApplicationStalled:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallOSMalformedURI:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallOSUnexpectedError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallDatabaseInvalidUpdateType:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->InstallProcessUpdatesFailure:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->DownloadSignatureMismatch:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->FileValidationError:Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/ota/OTAFailure;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/dcp/ota/OTAFailure;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->$VALUES:[Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/dcp/ota/OTAFailure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/dcp/ota/OTAFailure;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStep()Lcom/amazon/whispersync/dcp/ota/OTAStep;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->mStep:Lcom/amazon/whispersync/dcp/ota/OTAStep;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->mFailureString:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->mValue:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 161
    iget p2, p0, Lcom/amazon/whispersync/dcp/ota/OTAFailure;->mValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
