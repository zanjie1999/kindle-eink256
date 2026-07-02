.class public final Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetrics;
.super Ljava/lang/Object;
.source "HardwareInfoFastMetrics.kt"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetrics;-><init>()V

    .line 36
    const-class v0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetrics;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(HardwareInfoFastMetrics::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recordHardwareInfo(Ljava/lang/String;ILcom/amazon/kcp/application/IAndroidDeviceInformation;)V
    .locals 3

    const-string v0, "sniffTestVersion"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_1

    .line 49
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->HARDWARE_CONFIG:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 50
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->HARDWARE_CONFIG:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    .line 49
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string v2, "fastMetrics.getPayloadBu\u2026ARE_CONFIG.schemaVersion)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->SNIFF_TEST_VERSION:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 53
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->SNIFF_TEST_RESULT:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p2, :cond_0

    .line 57
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->BRAND:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getBrand()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 58
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->MODEL:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getDeviceModelId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 59
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->MANUFACTURER:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 60
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->HARDWARE_CODENAME:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getHardware()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 61
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->OS_VERSION:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 62
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->API_LEVEL:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getAndroidApiLevel()I

    move-result p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 65
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->CPU:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getProcessor()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 66
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->CPU_ARCH:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getCPUArchitecture()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 67
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->CPU_INSTRUCTIONSETS:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getCPUInstructionSets()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 68
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->CPU_FEATURES:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getCPUFeatures()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 71
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->GPU_VENDOR:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getGpuVendor()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 72
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->GPU_RENDERER:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getGpuRenderer()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 73
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->GPU_VERSION:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getGpuVersion()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 76
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    .line 78
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetrics;->TAG:Ljava/lang/String;

    const-string p1, "Hardware info metrics reported"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
