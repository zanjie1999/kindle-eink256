.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfigurationFactory;
.super Ljava/lang/Object;
.source "WorkflowConfigurationFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WorkflowConfigurationFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static createDefault()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
    .locals 3

    .line 170
    :try_start_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/PublicKeyDecompressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 173
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfigurationFactory;->TAG:Ljava/lang/String;

    const-string v2, "Barcode Public Key decompression error happened during non-barcode setup"

    invoke-static {v1, v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static createWorkflowConfigurationForAllDevices(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
    .locals 2

    .line 155
    :try_start_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->withBeaconType(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object p0
    :try_end_0
    .catch Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/PublicKeyDecompressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 158
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfigurationFactory;->TAG:Ljava/lang/String;

    const-string v1, "Barcode Public Key decompression error happened during non-barcode setup"

    invoke-static {v0, v1, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createWorkflowConfigurationForTargetDevice(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
    .locals 1

    .line 120
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->OOBE:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    invoke-static {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfigurationFactory;->createWorkflowConfigurationForTargetDevice(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static createWorkflowConfigurationForTargetDevice(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
    .locals 1

    if-eqz p0, :cond_0

    .line 102
    :try_start_0
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->withBeaconType(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;

    .line 104
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->withDeviceId(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;

    .line 105
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration$Builder;->build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object p0
    :try_end_0
    .catch Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/PublicKeyDecompressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 108
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfigurationFactory;->TAG:Ljava/lang/String;

    const-string v0, "Barcode Public Key decompression error happened during non-barcode setup"

    invoke-static {p1, v0, p0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "deviceId can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
