.class abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError;
.super Ljava/lang/Object;
.source "WJProvisionee.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MapErrorToDeviceError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Completable;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError$Single;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;)V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError;->mOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    return-void
.end method


# virtual methods
.method protected getDeviceError(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceError;
    .locals 2

    .line 316
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 319
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceError;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError;->mOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->getOpName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceError;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 321
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceError;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$MapErrorToDeviceError;->mOperation:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/Provisionee$DeviceOperation;->getOpName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceError;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method
