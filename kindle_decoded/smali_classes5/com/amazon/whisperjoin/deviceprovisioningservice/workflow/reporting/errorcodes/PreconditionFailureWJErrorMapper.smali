.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/PreconditionFailureWJErrorMapper;
.super Ljava/lang/Object;
.source "PreconditionFailureWJErrorMapper.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PreconditionFailureException;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PreconditionFailureException;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 21
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/BluetoothLowEnergyNotSupportedException;

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Precondition;->bluetoothLowEnergyNotSupported()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/BluetoothNotEnabledException;

    if-eqz v0, :cond_1

    .line 24
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Precondition;->bluetoothNotEnabled()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 25
    :cond_1
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/RequiredLocationPermissionsForScanningNotGrantedException;

    if-eqz v0, :cond_2

    .line 26
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Precondition;->requiredPermissionsNotGranted()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 28
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unhandled ProvisioningFailureException"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 0

    .line 15
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PreconditionFailureException;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/PreconditionFailureWJErrorMapper;->map(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PreconditionFailureException;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1
.end method
