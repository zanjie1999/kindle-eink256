.class public Lcom/amazon/whisperbridge/ble/BluetoothDisabledException;
.super Ljava/lang/Exception;
.source "BluetoothDisabledException.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/whisperbridge/ble/BluetoothDisabledException;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperbridge/ble/BluetoothDisabledException;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "Bluetooth is not enabled. Please prompt user for permission and enable Bluetooth before calling initializeBluetoothLE."

    .line 22
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/amazon/whisperbridge/ble/BluetoothDisabledException;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
