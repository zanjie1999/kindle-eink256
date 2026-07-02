.class Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError;
.source "WJProvisionee.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Completable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError<",
        "Lio/reactivex/Completable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Lio/reactivex/Completable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 296
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError;->getDeviceError(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceError;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;->apply(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
