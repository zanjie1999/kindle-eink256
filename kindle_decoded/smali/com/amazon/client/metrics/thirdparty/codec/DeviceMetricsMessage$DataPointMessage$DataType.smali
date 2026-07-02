.class public final enum Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

.field public static final enum CLICKSTREAM:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

.field public static final enum COUNTER:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

.field public static final enum DISCRETE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

.field public static final enum TIMER:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

.field private static final VALUES:[Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    const/4 v1, 0x0

    const-string v2, "COUNTER"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->COUNTER:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    const/4 v2, 0x1

    const-string v3, "TIMER"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->TIMER:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    const/4 v3, 0x2

    const-string v4, "DISCRETE"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->DISCRETE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    const/4 v4, 0x3

    const-string v5, "CLICKSTREAM"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->CLICKSTREAM:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    sget-object v6, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->COUNTER:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->TIMER:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->DISCRETE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->$VALUES:[Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    new-instance v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType$1;

    invoke-direct {v0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType$1;-><init>()V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->values()[Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    move-result-object v0

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->VALUES:[Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->CLICKSTREAM:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->DISCRETE:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->TIMER:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->COUNTER:Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0
.end method

.method public static valueOf(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->forNumber(I)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;
    .locals 1

    const-class v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;
    .locals 1

    sget-object v0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->$VALUES:[Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/codec/DeviceMetricsMessage$DataPointMessage$DataType;->value:I

    return v0
.end method
