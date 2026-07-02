.class public final enum Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;
.super Ljava/lang/Enum;
.source "BleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperbridge/ble/BleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScanError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

.field public static final enum SCAN_FAILED_ALREADY_STARTED:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

.field public static final enum SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

.field public static final enum SCAN_FAILED_FEATURE_UNSUPPORTED:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

.field public static final enum SCAN_FAILED_INTERNAL_ERROR:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

.field public static final enum SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

.field public static final enum SCAN_FAILED_SCANNING_TOO_FREQUENTLY:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;


# instance fields
.field private mString:Ljava/lang/String;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 42
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SCAN_FAILED_ALREADY_STARTED"

    const-string v4, "Scan failed, already started"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_ALREADY_STARTED:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    .line 43
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    const/4 v3, 0x2

    const-string v4, "SCAN_FAILED_APPLICATION_REGISTRATION_FAILED"

    const-string v5, "Scan failed, application registration failed"

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    .line 44
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    const/4 v4, 0x3

    const-string v5, "SCAN_FAILED_INTERNAL_ERROR"

    const-string v6, "Scan failed, internal error"

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_INTERNAL_ERROR:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    .line 45
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    const/4 v5, 0x4

    const-string v6, "SCAN_FAILED_FEATURE_UNSUPPORTED"

    const-string v7, "Scan failed, feature unsupported"

    invoke-direct {v0, v6, v4, v5, v7}, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_FEATURE_UNSUPPORTED:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    .line 46
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    const/4 v6, 0x5

    const-string v7, "SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES"

    const-string v8, "Scan failed, out of hardware resources"

    invoke-direct {v0, v7, v5, v6, v8}, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    .line 47
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    const/4 v7, 0x6

    const-string v8, "SCAN_FAILED_SCANNING_TOO_FREQUENTLY"

    const-string v9, "Scan failed, scanning too frequently"

    invoke-direct {v0, v8, v6, v7, v9}, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_SCANNING_TOO_FREQUENTLY:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    new-array v7, v7, [Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    .line 41
    sget-object v8, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_ALREADY_STARTED:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_INTERNAL_ERROR:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_FEATURE_UNSUPPORTED:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->$VALUES:[Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput p3, p0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->mValue:I

    .line 85
    iput-object p4, p0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->mString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(I)Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->fromInt(I)Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    move-result-object p0

    return-object p0
.end method

.method private static fromInt(I)Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 69
    invoke-static {}, Lcom/amazon/whisperbridge/ble/BleScanner;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Scan ScanError encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_INTERNAL_ERROR:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    return-object p0

    .line 67
    :pswitch_0
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_SCANNING_TOO_FREQUENTLY:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    return-object p0

    .line 65
    :pswitch_1
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    return-object p0

    .line 61
    :pswitch_2
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_FEATURE_UNSUPPORTED:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    return-object p0

    .line 63
    :pswitch_3
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_INTERNAL_ERROR:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    return-object p0

    .line 59
    :pswitch_4
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_APPLICATION_REGISTRATION_FAILED:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    return-object p0

    .line 57
    :pswitch_5
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_ALREADY_STARTED:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;
    .locals 1

    .line 41
    const-class v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->$VALUES:[Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    invoke-virtual {v0}, [Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->mString:Ljava/lang/String;

    return-object v0
.end method
