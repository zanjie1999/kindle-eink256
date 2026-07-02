.class public final enum Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;
.super Ljava/lang/Enum;
.source "BatchTransmitterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

.field public static final enum CRITICAL:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

.field public static final enum NOS:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum PERIODIC:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

.field public static final enum SCHEDULED:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

.field public static final enum URGENT:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    const/4 v1, 0x0

    const-string v2, "PERIODIC"

    const-string v3, "Periodic"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->PERIODIC:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    .line 35
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    const/4 v2, 0x1

    const-string v3, "NOS"

    const-string v4, "Nos"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->NOS:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    .line 46
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    const/4 v3, 0x2

    const-string v4, "URGENT"

    const-string v5, "Urgent"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->URGENT:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    .line 59
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    const/4 v4, 0x3

    const-string v5, "SCHEDULED"

    const-string v6, "Scheduled"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->SCHEDULED:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    .line 73
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    const/4 v5, 0x4

    const-string v6, "CRITICAL"

    const-string v7, "Critical"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->CRITICAL:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    .line 15
    sget-object v7, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->PERIODIC:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->NOS:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->URGENT:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->SCHEDULED:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->$VALUES:[Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

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

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput-object p3, p0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->$VALUES:[Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    return-object v0
.end method
