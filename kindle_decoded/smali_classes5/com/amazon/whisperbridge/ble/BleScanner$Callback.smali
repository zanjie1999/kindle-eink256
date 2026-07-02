.class public interface abstract Lcom/amazon/whisperbridge/ble/BleScanner$Callback;
.super Ljava/lang/Object;
.source "BleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperbridge/ble/BleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onScanData(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)V
.end method

.method public abstract onScanError(Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;)V
.end method
