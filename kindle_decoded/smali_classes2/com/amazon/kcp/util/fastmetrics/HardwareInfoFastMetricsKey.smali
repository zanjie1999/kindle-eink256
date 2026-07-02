.class public final enum Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;
.super Ljava/lang/Enum;
.source "HardwareInfoFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum API_LEVEL:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum BRAND:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum CPU:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum CPU_ARCH:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum CPU_FEATURES:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum CPU_INSTRUCTIONSETS:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum GPU_RENDERER:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum GPU_VENDOR:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum GPU_VERSION:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum HARDWARE_CODENAME:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum MANUFACTURER:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum MODEL:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum OS_VERSION:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum SNIFF_TEST_RESULT:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

.field public static final enum SNIFF_TEST_VERSION:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/4 v2, 0x0

    const-string v3, "SNIFF_TEST_VERSION"

    const-string v4, "hardware_compatibility_test_version"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->SNIFF_TEST_VERSION:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/4 v2, 0x1

    const-string v3, "SNIFF_TEST_RESULT"

    const-string v4, "hardware_compatibility_test_result"

    .line 16
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->SNIFF_TEST_RESULT:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/4 v2, 0x2

    const-string v3, "BRAND"

    const-string v4, "brand"

    .line 17
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->BRAND:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/4 v2, 0x3

    const-string v3, "MODEL"

    const-string v4, "model"

    .line 18
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->MODEL:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/4 v2, 0x4

    const-string v3, "MANUFACTURER"

    const-string v4, "manufacturer"

    .line 19
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->MANUFACTURER:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/4 v2, 0x5

    const-string v3, "HARDWARE_CODENAME"

    const-string v4, "hardware"

    .line 20
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->HARDWARE_CODENAME:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/4 v2, 0x6

    const-string v3, "OS_VERSION"

    const-string v4, "android_version"

    .line 21
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->OS_VERSION:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/4 v2, 0x7

    const-string v3, "API_LEVEL"

    const-string v4, "android_api_level"

    .line 22
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->API_LEVEL:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/16 v2, 0x8

    const-string v3, "CPU"

    const-string v4, "cpu"

    .line 23
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->CPU:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/16 v2, 0x9

    const-string v3, "CPU_ARCH"

    const-string v4, "cpu_arch"

    .line 24
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->CPU_ARCH:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/16 v2, 0xa

    const-string v3, "CPU_INSTRUCTIONSETS"

    const-string v4, "cpu_instructionsets"

    .line 25
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->CPU_INSTRUCTIONSETS:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/16 v2, 0xb

    const-string v3, "CPU_FEATURES"

    const-string v4, "cpu_features"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->CPU_FEATURES:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/16 v2, 0xc

    const-string v3, "GPU_VENDOR"

    const-string v4, "gpu_vendor"

    .line 27
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->GPU_VENDOR:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/16 v2, 0xd

    const-string v3, "GPU_RENDERER"

    const-string v4, "gpu_renderer"

    .line 28
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->GPU_RENDERER:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    const/16 v2, 0xe

    const-string v3, "GPU_VERSION"

    const-string v4, "gpu_version"

    .line 29
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->GPU_VERSION:Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetricsKey;->value:Ljava/lang/String;

    return-object v0
.end method
