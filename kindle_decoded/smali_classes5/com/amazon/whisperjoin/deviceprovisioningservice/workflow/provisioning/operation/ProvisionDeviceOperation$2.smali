.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;
.super Ljava/lang/Object;
.source "ProvisionDeviceOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->getProvisionableConfiguration(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;",
        "Lio/reactivex/SingleSource<",
        "+",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;

.field final synthetic val$provisionableConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

.field final synthetic val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;->val$provisionableConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;)Lio/reactivex/SingleSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;",
            ")",
            "Lio/reactivex/SingleSource<",
            "+",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got compute configuration data response from DSS"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;->getRegistrationDetails()Lcom/amazon/devicesetupservice/v1/RegistrationDetails;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Registration Token is null, falling back to MAP token on the device."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;->generatePreAuthLinkCode()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;)V

    .line 157
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;->getRegistrationDetails()Lcom/amazon/devicesetupservice/v1/RegistrationDetails;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;

    invoke-virtual {v0}, Lcom/amazon/devicesetupservice/v1/RegistrationDetails;->getRegistrationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/devicesetupservice/v1/RegistrationDetails;->getExpiresAt()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;-><init>(Ljava/lang/String;J)V

    .line 168
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;->val$provisionableConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    invoke-static {v0, v2, v1, v3, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;)Lio/reactivex/Single;

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

    .line 149
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;->apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
