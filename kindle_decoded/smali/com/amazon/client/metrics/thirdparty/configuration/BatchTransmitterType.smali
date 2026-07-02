.class public final enum Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;
.super Ljava/lang/Enum;
.source "BatchTransmitterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

.field public static final enum CRITICAL:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

.field public static final enum NOS:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

.field public static final enum PERIODIC:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

.field public static final enum SCHEDULED:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

.field public static final enum URGENT:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    const/4 v1, 0x0

    const-string v2, "PERIODIC"

    const-string v3, "Periodic"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->PERIODIC:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    .line 9
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    const/4 v2, 0x1

    const-string v3, "NOS"

    const-string v4, "Nos"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->NOS:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    .line 10
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    const/4 v3, 0x2

    const-string v4, "URGENT"

    const-string v5, "Urgent"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->URGENT:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    .line 11
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    const/4 v4, 0x3

    const-string v5, "SCHEDULED"

    const-string v6, "Scheduled"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->SCHEDULED:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    .line 12
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    const/4 v5, 0x4

    const-string v6, "CRITICAL"

    const-string v7, "Critical"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->CRITICAL:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    .line 6
    sget-object v7, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->PERIODIC:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->NOS:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->URGENT:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->SCHEDULED:Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->$VALUES:[Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->values()[Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 26
    invoke-virtual {v3}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid BatchTransmitterType"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->$VALUES:[Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;->mName:Ljava/lang/String;

    return-object v0
.end method
