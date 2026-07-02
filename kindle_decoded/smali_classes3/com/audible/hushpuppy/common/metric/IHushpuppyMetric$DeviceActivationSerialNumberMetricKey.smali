.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

.field public static final enum DeviceSerialNumberEncoded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

.field public static final enum DeviceSerialNumberEncodingRequired:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

.field public static final enum HashedDeviceSerialNumberTrimRequired:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

.field public static final enum MessageDigestFailure:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

.field public static final enum NoDeviceSerialNumberEncodingRequired:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

.field public static final enum NoMessageDigestAlgorithm:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

.field public static final enum NullDeviceSerialNumberReceived:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 591
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    const/4 v1, 0x0

    const-string v2, "NullDeviceSerialNumberReceived"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->NullDeviceSerialNumberReceived:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    .line 593
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    const/4 v2, 0x1

    const-string v3, "NoDeviceSerialNumberEncodingRequired"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->NoDeviceSerialNumberEncodingRequired:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    .line 595
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    const/4 v3, 0x2

    const-string v4, "DeviceSerialNumberEncodingRequired"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->DeviceSerialNumberEncodingRequired:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    .line 597
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    const/4 v4, 0x3

    const-string v5, "NoMessageDigestAlgorithm"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->NoMessageDigestAlgorithm:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    .line 599
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    const/4 v5, 0x4

    const-string v6, "MessageDigestFailure"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->MessageDigestFailure:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    .line 601
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    const/4 v6, 0x5

    const-string v7, "HashedDeviceSerialNumberTrimRequired"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->HashedDeviceSerialNumberTrimRequired:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    .line 603
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    const/4 v7, 0x6

    const-string v8, "DeviceSerialNumberEncoded"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->DeviceSerialNumberEncoded:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    .line 589
    sget-object v9, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->NullDeviceSerialNumberReceived:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    aput-object v9, v8, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->NoDeviceSerialNumberEncodingRequired:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    aput-object v1, v8, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->DeviceSerialNumberEncodingRequired:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    aput-object v1, v8, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->NoMessageDigestAlgorithm:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    aput-object v1, v8, v4

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->MessageDigestFailure:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    aput-object v1, v8, v5

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->HashedDeviceSerialNumberTrimRequired:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 589
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;
    .locals 1

    .line 589
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;
    .locals 1

    .line 589
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DeviceActivationSerialNumberMetricKey;

    return-object v0
.end method
