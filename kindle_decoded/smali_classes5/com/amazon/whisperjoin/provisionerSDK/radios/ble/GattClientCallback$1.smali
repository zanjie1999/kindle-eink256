.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$1;
.super Ljava/lang/Object;
.source "GattClientCallback.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;-><init>(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    .line 69
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connection promise fulfilled"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
