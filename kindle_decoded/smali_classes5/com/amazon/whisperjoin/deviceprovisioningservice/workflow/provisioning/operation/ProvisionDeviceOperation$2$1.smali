.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2$1;
.super Ljava/lang/Object;
.source "ProvisionDeviceOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;->apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;)Lio/reactivex/SingleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;",
        "Lio/reactivex/SingleSource<",
        "+",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;

.field final synthetic val$computeConfigurationResponse:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2$1;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2$1;->val$computeConfigurationResponse:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;)Lio/reactivex/SingleSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;",
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

    .line 160
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2$1;->this$1:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;

    iget-object v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;

    iget-object v2, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    iget-object v0, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;->val$provisionableConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2$1;->val$computeConfigurationResponse:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;

    invoke-static {v1, v2, p1, v0, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;)Lio/reactivex/Single;

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

    .line 157
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2$1;->apply(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
