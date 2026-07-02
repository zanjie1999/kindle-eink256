.class public Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;
.super Ljava/lang/Object;
.source "AirDeviceActivationSerialNumberEncoder.java"

# interfaces
.implements Lcom/audible/mobile/identity/DeviceActivationSerialNumberEncoder;


# static fields
.field private static final HASH_ALGORITHM:Ljava/lang/String; = "SHA-1"

.field private static final HEX_ARRAY:[C

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MAX_DSN_LENGTH:I = 0x28


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "0123456789ABCDEF"

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->HEX_ARRAY:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SHA-1"

    .line 47
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->messageDigest:Ljava/security/MessageDigest;

    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 132
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 133
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 134
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 135
    sget-object v4, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->HEX_ARRAY:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 136
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    .line 118
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 120
    sget-object v0, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "SHA-1doesn\'t exist!"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getTrimmedDeviceSerialNumber(Lcom/audible/mobile/identity/DeviceSerialNumber;I)Lcom/audible/mobile/identity/DeviceSerialNumber;
    .locals 1

    .line 127
    new-instance v0, Lcom/audible/mobile/identity/impl/ImmutableDeviceSerialNumberImpl;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->trimToDsnLimitIfNecessary(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/audible/mobile/identity/impl/ImmutableDeviceSerialNumberImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private trimToDsnLimitIfNecessary(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_1

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public encode(Lcom/audible/mobile/identity/DeviceSerialNumber;)Lcom/audible/mobile/identity/DeviceSerialNumber;
    .locals 5

    if-nez p1, :cond_0

    .line 68
    sget-object p1, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Input DSN is null! This should never happen."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->NullDeviceSerialNumberReceived:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_0
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-gt v1, v2, :cond_1

    .line 76
    sget-object v0, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "DSN size is within limitation. Don\'t encode."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->NoDeviceSerialNumberEncodingRequired:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-object p1

    .line 82
    :cond_1
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->DeviceSerialNumberEncodingRequired:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v1, v3, v4}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 84
    iget-object v1, p0, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->messageDigest:Ljava/security/MessageDigest;

    if-nez v1, :cond_2

    .line 85
    sget-object v0, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Hash algorithm doesn\'t exist! Can\'t encode. Return trimmed DSN."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->NoMessageDigestAlgorithm:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 87
    invoke-direct {p0, p1, v2}, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->getTrimmedDeviceSerialNumber(Lcom/audible/mobile/identity/DeviceSerialNumber;I)Lcom/audible/mobile/identity/DeviceSerialNumber;

    move-result-object p1

    return-object p1

    .line 91
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    if-nez v0, :cond_3

    .line 95
    sget-object v0, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Hash function error. Can\'t encode. Return trimmed DSN."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->MessageDigestFailure:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 97
    invoke-direct {p0, p1, v2}, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->getTrimmedDeviceSerialNumber(Lcom/audible/mobile/identity/DeviceSerialNumber;I)Lcom/audible/mobile/identity/DeviceSerialNumber;

    move-result-object p1

    return-object p1

    .line 101
    :cond_3
    invoke-direct {p0, v0}, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 103
    sget-object v0, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "DSN size is > 40! Hash function is incorrect. We trim hashed DSN and move on."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->HashedDeviceSerialNumberTrimRequired:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 106
    invoke-direct {p0, p1, v2}, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->trimToDsnLimitIfNecessary(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_4
    sget-object v0, Lcom/audible/android/kcp/activation/AirDeviceActivationSerialNumberEncoder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "DSN has been encoded successfully!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->DeviceSerialNumberEncoded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 111
    new-instance v0, Lcom/audible/mobile/identity/impl/ImmutableDeviceSerialNumberImpl;

    invoke-direct {v0, p1}, Lcom/audible/mobile/identity/impl/ImmutableDeviceSerialNumberImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
