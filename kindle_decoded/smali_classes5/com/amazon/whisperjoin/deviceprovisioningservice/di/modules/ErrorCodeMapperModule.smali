.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;
.super Ljava/lang/Object;
.source "ErrorCodeMapperModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesBLETransportOperationErrorDetailsProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;
    .locals 1

    .line 53
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;-><init>()V

    return-object v0
.end method

.method public providesConnectionFailureMapper(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;",
            ")",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ConnectionFailureException;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ConnectionFailureExceptionWJErrorMapper;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ConnectionFailureExceptionWJErrorMapper;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;)V

    return-object v0
.end method

.method public providesDSSClientErrorMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WebServiceErrorCodeMapper;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WebServiceErrorCodeMapper;-><init>()V

    return-object v0
.end method

.method public providesErrorMapper(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PreconditionFailureException;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ConnectionFailureException;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningNotGranted;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenFailedValidationException;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenNotFoundException;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WorkflowFailureException;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v11, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)V

    return-object v11
.end method

.method public providesPreconditionalFailureMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PreconditionFailureException;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/PreconditionFailureWJErrorMapper;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/PreconditionFailureWJErrorMapper;-><init>()V

    return-object v0
.end method

.method public providesProvisionerCommandErrorMapper(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;",
            ")",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisionerBLECommandErrorMapper;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisionerBLECommandErrorMapper;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;)V

    return-object v0
.end method

.method public providesProvisionignNotGrantedMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningNotGranted;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisioningNotGrantedWJErrorMapper;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisioningNotGrantedWJErrorMapper;-><init>()V

    return-object v0
.end method

.method public providesProvisioningFailureMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisioningFailureWJErrorMapper;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/ProvisioningFailureWJErrorMapper;-><init>()V

    return-object v0
.end method

.method public providesTrustProviderInitializationErrorMapper(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;",
            ">;)",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/TrustProviderInitializationExceptionWJErrorMapper;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/TrustProviderInitializationExceptionWJErrorMapper;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)V

    return-object v0
.end method

.method public providesWiFiSyncAuthTokenFailedValidationMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenFailedValidationException;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WiFiSyncAuthTokenFailedValidationWJErrorMapper;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WiFiSyncAuthTokenFailedValidationWJErrorMapper;-><init>()V

    return-object v0
.end method

.method public providesWiFiSyncAuthTokenNotFoundMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenNotFoundException;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WiFiSyncAuthTokenNotFoundWJErrorMapper;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WiFiSyncAuthTokenNotFoundWJErrorMapper;-><init>()V

    return-object v0
.end method

.method public providesWorkflowFailureExceptionErrorMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WorkflowFailureException;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WorkflowFailureWJErrorMapper;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WorkflowFailureWJErrorMapper;-><init>()V

    return-object v0
.end method
