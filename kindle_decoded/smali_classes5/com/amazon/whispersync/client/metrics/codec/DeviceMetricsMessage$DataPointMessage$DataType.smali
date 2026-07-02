.class public final enum Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;",
        ">;",
        "Lcom/amazon/whispersync/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

.field public static final enum CLICKSTREAM:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

.field public static final CLICKSTREAM_VALUE:I = 0x3

.field public static final enum COUNTER:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

.field public static final COUNTER_VALUE:I = 0x0

.field public static final enum DISCRETE:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

.field public static final DISCRETE_VALUE:I = 0x2

.field public static final enum TIMER:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

.field public static final TIMER_VALUE:I = 0x1

.field private static final VALUES:[Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

.field private static internalValueMap:Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    const/4 v1, 0x0

    const-string v2, "COUNTER"

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->COUNTER:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    new-instance v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    const/4 v2, 0x1

    const-string v3, "TIMER"

    invoke-direct {v0, v3, v2, v2, v2}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->TIMER:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    new-instance v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    const/4 v3, 0x2

    const-string v4, "DISCRETE"

    invoke-direct {v0, v4, v3, v3, v3}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->DISCRETE:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    new-instance v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    const/4 v4, 0x3

    const-string v5, "CLICKSTREAM"

    invoke-direct {v0, v5, v4, v4, v4}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->CLICKSTREAM:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    const/4 v5, 0x4

    new-array v6, v5, [Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    sget-object v7, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->COUNTER:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    aput-object v7, v6, v1

    sget-object v7, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->TIMER:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    aput-object v7, v6, v2

    sget-object v7, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->DISCRETE:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    aput-object v7, v6, v3

    aput-object v0, v6, v4

    sput-object v6, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->$VALUES:[Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    new-instance v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->internalValueMap:Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;

    new-array v0, v5, [Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    sget-object v5, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->COUNTER:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->TIMER:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->DISCRETE:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->CLICKSTREAM:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->VALUES:[Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->index:I

    iput p4, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->value:I

    return-void
.end method

.method public static final getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->internalValueMap:Lcom/amazon/whispersync/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;
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
    sget-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->CLICKSTREAM:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->DISCRETE:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->TIMER:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->COUNTER:Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0
.end method

.method public static valueOf(Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;
    .locals 2

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->VALUES:[Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;
    .locals 1

    const-class v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->$VALUES:[Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/amazon/whispersync/client/metrics/codec/DeviceMetricsMessage$DataPointMessage$DataType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
