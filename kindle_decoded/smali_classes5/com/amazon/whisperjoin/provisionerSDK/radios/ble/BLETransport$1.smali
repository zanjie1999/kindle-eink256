.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport$1;
.super Ljava/lang/Object;
.source "BLETransport.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->onProvisioningComplete(Ljava/lang/Object;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 185
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport$1;->apply(Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 1

    .line 188
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 189
    :cond_0
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/TransportOperationRuntimeException;

    const-string v0, "failed to change connection priority"

    invoke-direct {p1, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/TransportOperationRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
