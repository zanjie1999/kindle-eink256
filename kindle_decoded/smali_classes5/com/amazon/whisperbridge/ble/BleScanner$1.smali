.class final Lcom/amazon/whisperbridge/ble/BleScanner$1;
.super Ljava/lang/Object;
.source "BleScanner.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperbridge/ble/BleScanner;->createLegacyScanner(Landroid/bluetooth/BluetoothAdapter;Lcom/amazon/whisperbridge/ble/BleScanner$Callback;)Lcom/amazon/whisperbridge/ble/BleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bleScanner:Lcom/amazon/whisperbridge/ble/BleScanner;


# direct methods
.method constructor <init>(Lcom/amazon/whisperbridge/ble/BleScanner;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleScanner$1;->val$bleScanner:Lcom/amazon/whisperbridge/ble/BleScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleScanner$1;->val$bleScanner:Lcom/amazon/whisperbridge/ble/BleScanner;

    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    invoke-direct {v1, p1, p3, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;-><init>(Landroid/bluetooth/BluetoothDevice;[BI)V

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleScanner;->notifyScanData(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)V

    return-void
.end method
