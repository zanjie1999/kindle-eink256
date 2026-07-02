.class final Lcom/amazon/whisperbridge/ble/BleScanner$BLEScanCallback;
.super Landroid/bluetooth/le/ScanCallback;
.source "BleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperbridge/ble/BleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BLEScanCallback"
.end annotation


# instance fields
.field private final mBleScannerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/whisperbridge/ble/BleScanner;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/whisperbridge/ble/BleScanner$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperbridge/ble/BleScanner;Lcom/amazon/whisperbridge/ble/BleScanner$Callback;)V
    .locals 1

    .line 231
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 233
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleScanner$BLEScanCallback;->mBleScannerWeakReference:Ljava/lang/ref/WeakReference;

    .line 234
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleScanner$BLEScanCallback;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 259
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleScanner$BLEScanCallback;->mBleScannerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleScanner$BLEScanCallback;->mBleScannerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperbridge/ble/BleScanner;

    invoke-virtual {v1, v0}, Lcom/amazon/whisperbridge/ble/BleScanner;->addScanResult(Landroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScanFailed(I)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleScanner$BLEScanCallback;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleScanner$BLEScanCallback;->mCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperbridge/ble/BleScanner$Callback;

    invoke-static {p1}, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->access$100(I)Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/whisperbridge/ble/BleScanner$Callback;->onScanError(Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;)V

    :cond_0
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown callback-type encountered in onScanResult"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleScanner$BLEScanCallback;->mBleScannerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 243
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleScanner$BLEScanCallback;->mBleScannerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/BleScanner;

    invoke-virtual {p1, p2}, Lcom/amazon/whisperbridge/ble/BleScanner;->addScanResult(Landroid/bluetooth/le/ScanResult;)V

    :cond_2
    return-void
.end method
