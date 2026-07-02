.class public final enum Lcom/audible/license/metrics/MetricNames;
.super Ljava/lang/Enum;
.source "MetricNames.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/Metric$Name;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/license/metrics/MetricNames;",
        ">;",
        "Lcom/audible/mobile/metric/domain/Metric$Name;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/license/metrics/MetricNames;

.field public static final enum BatchRefreshNoNetwork:Lcom/audible/license/metrics/MetricNames;

.field public static final enum FailedToDecryptVoucher:Lcom/audible/license/metrics/MetricNames;

.field public static final enum FailedToParseAllowedUsersRule:Lcom/audible/license/metrics/MetricNames;

.field public static final enum FailedToParseDefaultExpiredRule:Lcom/audible/license/metrics/MetricNames;

.field public static final enum FailedToParseVoucherObject:Lcom/audible/license/metrics/MetricNames;

.field public static final enum FailedToParseVoucherRulesObject:Lcom/audible/license/metrics/MetricNames;

.field public static final enum FailedToSaveVoucherFile:Lcom/audible/license/metrics/MetricNames;

.field public static final enum FailedValidationEmptyRules:Lcom/audible/license/metrics/MetricNames;

.field public static final enum FailedValidationExpired:Lcom/audible/license/metrics/MetricNames;

.field public static final enum FailedValidationNotAllowedUser:Lcom/audible/license/metrics/MetricNames;

.field public static final enum GetVoucherCalled:Lcom/audible/license/metrics/MetricNames;

.field public static final enum GetVoucherFailed:Lcom/audible/license/metrics/MetricNames;

.field public static final enum GetVoucherRefreshFailed:Lcom/audible/license/metrics/MetricNames;

.field public static final enum GetVoucherRefreshTriggered:Lcom/audible/license/metrics/MetricNames;

.field public static final enum MultipleAccountFailedToDeleteMapFile:Lcom/audible/license/metrics/MetricNames;

.field public static final enum MultipleAccountLoadAccountsMapClassNotFoundException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum MultipleAccountLoadAccountsMapGenericException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum MultipleAccountLoadAccountsMapIOException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum MultipleAccountSaveMapIOException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum StreamingMetadataProviderTimer:Lcom/audible/license/metrics/MetricNames;

.field public static final enum TimeToProvideVoucher:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherAllowedUsersRuleFailedToParseDirectedIds:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherBackfillAcrNotFound:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherBackfillDbInsertionError:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherBadPaddingException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherDeniedContentNotEligible:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherDeniedOtherReason:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherDeniedRequesterNotEligible:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherExpiredRuleFailedToParseExpiredDate:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherExpiredRuleNoExpiredDate:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherExpiredRuleNoParameters:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherExpiredRuleNoType:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherFetcherTimer:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherFileNotFoundException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherIVDoesNotExist:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherIllegalBlockSizeException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherInvalidAlgorithmParameterException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherInvalidIV:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherInvalidKey:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherInvalidKeyException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherIsEmpty:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherJSONException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherKeyDoesNotExist:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherLoadException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherManagerFailedToCreateVoucherDirectory:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherManagerFailedToDeleteVoucherFile:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherMetadataNotFound:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherNoSuchAlgorithmException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherNoSuchPaddingException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherNotFound:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherRefreshAcrNotFound:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherRefreshDrmTypeNotFound:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherRefreshMetadataNotFound:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherRulesManagerFailedToParseRule:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherSaveFailed:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherShortBufferException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherUnsupportedEncodingException:Lcom/audible/license/metrics/MetricNames;

.field public static final enum VoucherWithChaptersFetcherTimer:Lcom/audible/license/metrics/MetricNames;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 30
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/4 v1, 0x0

    const-string v2, "VoucherManagerFailedToCreateVoucherDirectory"

    invoke-direct {v0, v2, v1}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherManagerFailedToCreateVoucherDirectory:Lcom/audible/license/metrics/MetricNames;

    .line 35
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/4 v2, 0x1

    const-string v3, "VoucherManagerFailedToDeleteVoucherFile"

    invoke-direct {v0, v3, v2}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherManagerFailedToDeleteVoucherFile:Lcom/audible/license/metrics/MetricNames;

    .line 40
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/4 v3, 0x2

    const-string v4, "MultipleAccountLoadAccountsMapIOException"

    invoke-direct {v0, v4, v3}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->MultipleAccountLoadAccountsMapIOException:Lcom/audible/license/metrics/MetricNames;

    .line 41
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/4 v4, 0x3

    const-string v5, "MultipleAccountLoadAccountsMapClassNotFoundException"

    invoke-direct {v0, v5, v4}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->MultipleAccountLoadAccountsMapClassNotFoundException:Lcom/audible/license/metrics/MetricNames;

    .line 42
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/4 v5, 0x4

    const-string v6, "MultipleAccountLoadAccountsMapGenericException"

    invoke-direct {v0, v6, v5}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->MultipleAccountLoadAccountsMapGenericException:Lcom/audible/license/metrics/MetricNames;

    .line 47
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/4 v6, 0x5

    const-string v7, "MultipleAccountSaveMapIOException"

    invoke-direct {v0, v7, v6}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->MultipleAccountSaveMapIOException:Lcom/audible/license/metrics/MetricNames;

    .line 52
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/4 v7, 0x6

    const-string v8, "MultipleAccountFailedToDeleteMapFile"

    invoke-direct {v0, v8, v7}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->MultipleAccountFailedToDeleteMapFile:Lcom/audible/license/metrics/MetricNames;

    .line 57
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/4 v8, 0x7

    const-string v9, "FailedToSaveVoucherFile"

    invoke-direct {v0, v9, v8}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->FailedToSaveVoucherFile:Lcom/audible/license/metrics/MetricNames;

    .line 62
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v9, 0x8

    const-string v10, "VoucherIsEmpty"

    invoke-direct {v0, v10, v9}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherIsEmpty:Lcom/audible/license/metrics/MetricNames;

    .line 67
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v10, 0x9

    const-string v11, "VoucherInvalidKey"

    invoke-direct {v0, v11, v10}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherInvalidKey:Lcom/audible/license/metrics/MetricNames;

    .line 72
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v11, 0xa

    const-string v12, "VoucherInvalidIV"

    invoke-direct {v0, v12, v11}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherInvalidIV:Lcom/audible/license/metrics/MetricNames;

    .line 77
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v12, 0xb

    const-string v13, "VoucherKeyDoesNotExist"

    invoke-direct {v0, v13, v12}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherKeyDoesNotExist:Lcom/audible/license/metrics/MetricNames;

    .line 82
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v13, 0xc

    const-string v14, "VoucherIVDoesNotExist"

    invoke-direct {v0, v14, v13}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherIVDoesNotExist:Lcom/audible/license/metrics/MetricNames;

    .line 87
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v14, 0xd

    const-string v15, "VoucherUnsupportedEncodingException"

    invoke-direct {v0, v15, v14}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherUnsupportedEncodingException:Lcom/audible/license/metrics/MetricNames;

    .line 92
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v15, 0xe

    const-string v14, "VoucherLoadException"

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherLoadException:Lcom/audible/license/metrics/MetricNames;

    .line 97
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v14, 0xf

    const-string v15, "VoucherNoSuchPaddingException"

    invoke-direct {v0, v15, v14}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherNoSuchPaddingException:Lcom/audible/license/metrics/MetricNames;

    .line 102
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v15, 0x10

    const-string v14, "VoucherShortBufferException"

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherShortBufferException:Lcom/audible/license/metrics/MetricNames;

    .line 107
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v14, 0x11

    const-string v15, "VoucherInvalidKeyException"

    invoke-direct {v0, v15, v14}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherInvalidKeyException:Lcom/audible/license/metrics/MetricNames;

    .line 112
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v15, 0x12

    const-string v14, "VoucherNoSuchAlgorithmException"

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherNoSuchAlgorithmException:Lcom/audible/license/metrics/MetricNames;

    .line 117
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v14, 0x13

    const-string v15, "VoucherIllegalBlockSizeException"

    invoke-direct {v0, v15, v14}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherIllegalBlockSizeException:Lcom/audible/license/metrics/MetricNames;

    .line 122
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v15, 0x14

    const-string v14, "VoucherBadPaddingException"

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherBadPaddingException:Lcom/audible/license/metrics/MetricNames;

    .line 127
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const/16 v14, 0x15

    const-string v15, "VoucherInvalidAlgorithmParameterException"

    invoke-direct {v0, v15, v14}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherInvalidAlgorithmParameterException:Lcom/audible/license/metrics/MetricNames;

    .line 132
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v15, "VoucherFileNotFoundException"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherFileNotFoundException:Lcom/audible/license/metrics/MetricNames;

    .line 137
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherJSONException"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherJSONException:Lcom/audible/license/metrics/MetricNames;

    .line 142
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherExpiredRuleNoParameters"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherExpiredRuleNoParameters:Lcom/audible/license/metrics/MetricNames;

    .line 147
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherExpiredRuleFailedToParseExpiredDate"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherExpiredRuleFailedToParseExpiredDate:Lcom/audible/license/metrics/MetricNames;

    .line 152
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherExpiredRuleNoExpiredDate"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherExpiredRuleNoExpiredDate:Lcom/audible/license/metrics/MetricNames;

    .line 157
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherExpiredRuleNoType"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherExpiredRuleNoType:Lcom/audible/license/metrics/MetricNames;

    .line 162
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherAllowedUsersRuleFailedToParseDirectedIds"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherAllowedUsersRuleFailedToParseDirectedIds:Lcom/audible/license/metrics/MetricNames;

    .line 167
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherRulesManagerFailedToParseRule"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherRulesManagerFailedToParseRule:Lcom/audible/license/metrics/MetricNames;

    .line 172
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherFetcherTimer"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherFetcherTimer:Lcom/audible/license/metrics/MetricNames;

    .line 177
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "StreamingMetadataProviderTimer"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->StreamingMetadataProviderTimer:Lcom/audible/license/metrics/MetricNames;

    .line 182
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherWithChaptersFetcherTimer"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherWithChaptersFetcherTimer:Lcom/audible/license/metrics/MetricNames;

    .line 187
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherSaveFailed"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherSaveFailed:Lcom/audible/license/metrics/MetricNames;

    .line 192
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "FailedToDecryptVoucher"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->FailedToDecryptVoucher:Lcom/audible/license/metrics/MetricNames;

    .line 197
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherNotFound"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherNotFound:Lcom/audible/license/metrics/MetricNames;

    .line 202
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherMetadataNotFound"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherMetadataNotFound:Lcom/audible/license/metrics/MetricNames;

    .line 207
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherRefreshMetadataNotFound"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherRefreshMetadataNotFound:Lcom/audible/license/metrics/MetricNames;

    .line 212
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherRefreshAcrNotFound"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherRefreshAcrNotFound:Lcom/audible/license/metrics/MetricNames;

    .line 217
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherRefreshDrmTypeNotFound"

    const/16 v15, 0x27

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherRefreshDrmTypeNotFound:Lcom/audible/license/metrics/MetricNames;

    .line 222
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherBackfillAcrNotFound"

    const/16 v15, 0x28

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherBackfillAcrNotFound:Lcom/audible/license/metrics/MetricNames;

    .line 227
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherBackfillDbInsertionError"

    const/16 v15, 0x29

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherBackfillDbInsertionError:Lcom/audible/license/metrics/MetricNames;

    .line 232
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "FailedToParseVoucherObject"

    const/16 v15, 0x2a

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->FailedToParseVoucherObject:Lcom/audible/license/metrics/MetricNames;

    .line 237
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "FailedToParseVoucherRulesObject"

    const/16 v15, 0x2b

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->FailedToParseVoucherRulesObject:Lcom/audible/license/metrics/MetricNames;

    .line 242
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "FailedToParseAllowedUsersRule"

    const/16 v15, 0x2c

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->FailedToParseAllowedUsersRule:Lcom/audible/license/metrics/MetricNames;

    .line 247
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "FailedToParseDefaultExpiredRule"

    const/16 v15, 0x2d

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->FailedToParseDefaultExpiredRule:Lcom/audible/license/metrics/MetricNames;

    .line 252
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "FailedValidationEmptyRules"

    const/16 v15, 0x2e

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->FailedValidationEmptyRules:Lcom/audible/license/metrics/MetricNames;

    .line 257
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "FailedValidationExpired"

    const/16 v15, 0x2f

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->FailedValidationExpired:Lcom/audible/license/metrics/MetricNames;

    .line 262
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "FailedValidationNotAllowedUser"

    const/16 v15, 0x30

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->FailedValidationNotAllowedUser:Lcom/audible/license/metrics/MetricNames;

    .line 267
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "GetVoucherCalled"

    const/16 v15, 0x31

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->GetVoucherCalled:Lcom/audible/license/metrics/MetricNames;

    .line 272
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "GetVoucherFailed"

    const/16 v15, 0x32

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->GetVoucherFailed:Lcom/audible/license/metrics/MetricNames;

    .line 277
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "GetVoucherRefreshTriggered"

    const/16 v15, 0x33

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->GetVoucherRefreshTriggered:Lcom/audible/license/metrics/MetricNames;

    .line 282
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "GetVoucherRefreshFailed"

    const/16 v15, 0x34

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->GetVoucherRefreshFailed:Lcom/audible/license/metrics/MetricNames;

    .line 287
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "TimeToProvideVoucher"

    const/16 v15, 0x35

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->TimeToProvideVoucher:Lcom/audible/license/metrics/MetricNames;

    .line 292
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "BatchRefreshNoNetwork"

    const/16 v15, 0x36

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->BatchRefreshNoNetwork:Lcom/audible/license/metrics/MetricNames;

    .line 297
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherDeniedContentNotEligible"

    const/16 v15, 0x37

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherDeniedContentNotEligible:Lcom/audible/license/metrics/MetricNames;

    .line 302
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherDeniedRequesterNotEligible"

    const/16 v15, 0x38

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherDeniedRequesterNotEligible:Lcom/audible/license/metrics/MetricNames;

    .line 307
    new-instance v0, Lcom/audible/license/metrics/MetricNames;

    const-string v14, "VoucherDeniedOtherReason"

    const/16 v15, 0x39

    invoke-direct {v0, v14, v15}, Lcom/audible/license/metrics/MetricNames;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/MetricNames;->VoucherDeniedOtherReason:Lcom/audible/license/metrics/MetricNames;

    const/16 v14, 0x3a

    new-array v14, v14, [Lcom/audible/license/metrics/MetricNames;

    .line 24
    sget-object v15, Lcom/audible/license/metrics/MetricNames;->VoucherManagerFailedToCreateVoucherDirectory:Lcom/audible/license/metrics/MetricNames;

    aput-object v15, v14, v1

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherManagerFailedToDeleteVoucherFile:Lcom/audible/license/metrics/MetricNames;

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->MultipleAccountLoadAccountsMapIOException:Lcom/audible/license/metrics/MetricNames;

    aput-object v1, v14, v3

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->MultipleAccountLoadAccountsMapClassNotFoundException:Lcom/audible/license/metrics/MetricNames;

    aput-object v1, v14, v4

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->MultipleAccountLoadAccountsMapGenericException:Lcom/audible/license/metrics/MetricNames;

    aput-object v1, v14, v5

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->MultipleAccountSaveMapIOException:Lcom/audible/license/metrics/MetricNames;

    aput-object v1, v14, v6

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->MultipleAccountFailedToDeleteMapFile:Lcom/audible/license/metrics/MetricNames;

    aput-object v1, v14, v7

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->FailedToSaveVoucherFile:Lcom/audible/license/metrics/MetricNames;

    aput-object v1, v14, v8

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherIsEmpty:Lcom/audible/license/metrics/MetricNames;

    aput-object v1, v14, v9

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherInvalidKey:Lcom/audible/license/metrics/MetricNames;

    aput-object v1, v14, v10

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherInvalidIV:Lcom/audible/license/metrics/MetricNames;

    aput-object v1, v14, v11

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherKeyDoesNotExist:Lcom/audible/license/metrics/MetricNames;

    aput-object v1, v14, v12

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherIVDoesNotExist:Lcom/audible/license/metrics/MetricNames;

    aput-object v1, v14, v13

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherUnsupportedEncodingException:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherLoadException:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherNoSuchPaddingException:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherShortBufferException:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherInvalidKeyException:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherNoSuchAlgorithmException:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherIllegalBlockSizeException:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherBadPaddingException:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherInvalidAlgorithmParameterException:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherFileNotFoundException:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherJSONException:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherExpiredRuleNoParameters:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherExpiredRuleFailedToParseExpiredDate:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherExpiredRuleNoExpiredDate:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherExpiredRuleNoType:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherAllowedUsersRuleFailedToParseDirectedIds:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherRulesManagerFailedToParseRule:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherFetcherTimer:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x1e

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->StreamingMetadataProviderTimer:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x1f

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherWithChaptersFetcherTimer:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x20

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherSaveFailed:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x21

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->FailedToDecryptVoucher:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x22

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherNotFound:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x23

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherMetadataNotFound:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x24

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherRefreshMetadataNotFound:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x25

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherRefreshAcrNotFound:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x26

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherRefreshDrmTypeNotFound:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x27

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherBackfillAcrNotFound:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x28

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherBackfillDbInsertionError:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x29

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->FailedToParseVoucherObject:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x2a

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->FailedToParseVoucherRulesObject:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x2b

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->FailedToParseAllowedUsersRule:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x2c

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->FailedToParseDefaultExpiredRule:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x2d

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->FailedValidationEmptyRules:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x2e

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->FailedValidationExpired:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x2f

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->FailedValidationNotAllowedUser:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x30

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->GetVoucherCalled:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x31

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->GetVoucherFailed:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x32

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->GetVoucherRefreshTriggered:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x33

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->GetVoucherRefreshFailed:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x34

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->TimeToProvideVoucher:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x35

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->BatchRefreshNoNetwork:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x36

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherDeniedContentNotEligible:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x37

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/license/metrics/MetricNames;->VoucherDeniedRequesterNotEligible:Lcom/audible/license/metrics/MetricNames;

    const/16 v2, 0x38

    aput-object v1, v14, v2

    const/16 v1, 0x39

    aput-object v0, v14, v1

    sput-object v14, Lcom/audible/license/metrics/MetricNames;->$VALUES:[Lcom/audible/license/metrics/MetricNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/license/metrics/MetricNames;
    .locals 1

    .line 24
    const-class v0, Lcom/audible/license/metrics/MetricNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/license/metrics/MetricNames;

    return-object p0
.end method

.method public static values()[Lcom/audible/license/metrics/MetricNames;
    .locals 1

    .line 24
    sget-object v0, Lcom/audible/license/metrics/MetricNames;->$VALUES:[Lcom/audible/license/metrics/MetricNames;

    invoke-virtual {v0}, [Lcom/audible/license/metrics/MetricNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/license/metrics/MetricNames;

    return-object v0
.end method
