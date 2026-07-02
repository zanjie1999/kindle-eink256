.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisionerBLECommandErrorMapper;
.super Ljava/lang/Object;
.source "ProvisionerBLECommandErrorMapper.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
        "Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBLETransportOperationErrorDetailsProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisionerBLECommandErrorMapper;->mBLETransportOperationErrorDetailsProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;

    return-void
.end method

.method private getCommandErrorDetails(Ljava/lang/Throwable;)I
    .locals 1

    .line 67
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisionerBLECommandErrorMapper;->mBLETransportOperationErrorDetailsProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;->getDetails(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;)I

    move-result p1

    return p1

    .line 69
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;

    if-eqz v0, :cond_1

    .line 70
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisionerBLECommandErrorMapper;->getProvisioningCommandErrorDetails(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;)I

    move-result p1

    return p1

    .line 72
    :cond_1
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CommonErrorDetailsProvider;->getCommonErrorDetails(Ljava/lang/Throwable;)I

    move-result p1

    return p1
.end method

.method private getProvisioningCommandErrorDetails(Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;)I
    .locals 1

    .line 87
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;->getStatusCode()I

    move-result p1

    const v0, 0x493e0

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public map(Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 2

    .line 23
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->getFailureCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisionerBLECommandErrorMapper;->getCommandErrorDetails(Ljava/lang/Throwable;)I

    move-result v0

    .line 25
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisionerBLECommandErrorMapper$1;->$SwitchMap$com$amazon$whisperbridge$constants$Command:[I

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;->getCommand()Lcom/amazon/whisperbridge/constants/Command;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    .line 57
    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->unknown(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_0
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->getSupportedNotifications(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_1
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->completeProvisioning(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 51
    :pswitch_2
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->getRegistrationStatus(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 49
    :pswitch_3
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->setRegistrationToken(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 47
    :pswitch_4
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->setConfiguration(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_5
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->getConnectionStatus(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_6
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->saveNetwork(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 41
    :pswitch_7
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->getDeviceDetails(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 39
    :pswitch_8
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->getVisibleNetworks(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_9
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->jpakeRoundCertValidation(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_a
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->jpakeRound3(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 33
    :pswitch_b
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->jpakeRound2(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_c
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->jpakeRound1(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_d
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->exchangeAuthEcdheKey(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 27
    :pswitch_e
    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$BLECommand;->exchangeEcdheKey(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisionerBLECommandErrorMapper;->map(Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1
.end method
