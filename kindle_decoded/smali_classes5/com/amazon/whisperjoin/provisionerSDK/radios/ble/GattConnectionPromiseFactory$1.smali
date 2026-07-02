.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory$1;
.super Ljava/lang/Object;
.source "GattConnectionPromiseFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;->getFuture()Ljava/util/concurrent/Future;
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


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;

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

    .line 33
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;->access$000(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;->getFuture()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
