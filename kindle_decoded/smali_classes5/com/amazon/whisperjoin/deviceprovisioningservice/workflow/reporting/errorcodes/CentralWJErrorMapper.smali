.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;
.super Ljava/lang/Object;
.source "CentralWJErrorMapper.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CentralWJErrorMapper"


# instance fields
.field private final mConnectionFailureExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ConnectionFailureException;",
            ">;"
        }
    .end annotation
.end field

.field private final mDSSClientErrorWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreconditionFailureExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PreconditionFailureException;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisionerCommandErrorWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisioningFailureExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvisioningNotGrantedWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningNotGranted;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustProviderInitializationFailedExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;",
            ">;"
        }
    .end annotation
.end field

.field private final mWiFiSyncAuthTokenFailedValidationExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenFailedValidationException;",
            ">;"
        }
    .end annotation
.end field

.field private final mWiFiSyncAuthTokenNotFoundExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenNotFoundException;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkflowFailureExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WorkflowFailureException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mProvisionerCommandErrorWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 47
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mDSSClientErrorWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 48
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mProvisioningFailureExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 49
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mPreconditionFailureExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 50
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mConnectionFailureExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 51
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mTrustProviderInitializationFailedExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 52
    iput-object p7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mProvisioningNotGrantedWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 53
    iput-object p8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mWiFiSyncAuthTokenFailedValidationExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 54
    iput-object p9, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mWiFiSyncAuthTokenNotFoundExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 55
    iput-object p10, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mWorkflowFailureExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 3

    .line 61
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mapping throwable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PreconditionFailureException;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mPreconditionFailureExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/PreconditionFailureException;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ConnectionFailureException;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mConnectionFailureExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ConnectionFailureException;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 67
    :cond_1
    instance-of v0, p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mProvisionerCommandErrorWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    check-cast p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 69
    :cond_2
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mProvisioningFailureExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningFailureException;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 71
    :cond_3
    instance-of v0, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mDSSClientErrorWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 73
    :cond_4
    instance-of v0, p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;

    if-eqz v0, :cond_5

    .line 74
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mTrustProviderInitializationFailedExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 75
    :cond_5
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningNotGranted;

    if-eqz v0, :cond_6

    .line 76
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mProvisioningNotGrantedWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisioningNotGranted;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 77
    :cond_6
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenFailedValidationException;

    if-eqz v0, :cond_7

    .line 78
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mWiFiSyncAuthTokenFailedValidationExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenFailedValidationException;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 79
    :cond_7
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenNotFoundException;

    if-eqz v0, :cond_8

    .line 80
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mWiFiSyncAuthTokenNotFoundExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WiFiSyncAuthTokenNotFoundException;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 81
    :cond_8
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WorkflowFailureException;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CentralWJErrorMapper;->mWorkflowFailureExceptionWJErrorMapper:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/WorkflowFailureException;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;->map(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1

    .line 84
    :cond_9
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/CommonErrorDetailsProvider;->getCommonErrorDetails(Ljava/lang/Throwable;)I

    move-result p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Other;->unknown(I)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object p1

    return-object p1
.end method
