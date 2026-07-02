.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;
.super Ljava/lang/Object;
.source "WorkflowConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mBarcodeString:Ljava/lang/String;

.field private mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

.field private mDeviceId:Ljava/lang/String;

.field private mDistressState:Ljava/lang/String;

.field private mPin:Ljava/lang/String;

.field private mProductId:Ljava/lang/String;

.field private mPublicKey:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->OOBE:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/PublicKeyDecompressionException;
        }
    .end annotation

    .line 197
    new-instance v9, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->mPublicKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->mPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->mProductId:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->mDeviceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->mBarcodeString:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->mDistressState:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$1;)V

    return-object v9
.end method

.method public withBeaconType(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->mBeaconType:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    return-object p0
.end method

.method public withDeviceId(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method
