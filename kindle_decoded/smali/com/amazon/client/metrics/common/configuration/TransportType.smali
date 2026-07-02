.class public final enum Lcom/amazon/client/metrics/common/configuration/TransportType;
.super Ljava/lang/Enum;
.source "TransportType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/common/configuration/TransportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/common/configuration/TransportType;

.field public static final enum HTTP:Lcom/amazon/client/metrics/common/configuration/TransportType;

.field public static final enum OUTPUT_STREAM:Lcom/amazon/client/metrics/common/configuration/TransportType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/TransportType;

    const/4 v1, 0x0

    const-string v2, "HTTP"

    const-string v3, "Http"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/client/metrics/common/configuration/TransportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/TransportType;->HTTP:Lcom/amazon/client/metrics/common/configuration/TransportType;

    .line 23
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/TransportType;

    const/4 v2, 0x1

    const-string v3, "OUTPUT_STREAM"

    const-string v4, "OutputStream"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/client/metrics/common/configuration/TransportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/TransportType;->OUTPUT_STREAM:Lcom/amazon/client/metrics/common/configuration/TransportType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/client/metrics/common/configuration/TransportType;

    .line 10
    sget-object v4, Lcom/amazon/client/metrics/common/configuration/TransportType;->HTTP:Lcom/amazon/client/metrics/common/configuration/TransportType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/client/metrics/common/configuration/TransportType;->$VALUES:[Lcom/amazon/client/metrics/common/configuration/TransportType;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/amazon/client/metrics/common/configuration/TransportType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/common/configuration/TransportType;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/client/metrics/common/configuration/TransportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/common/configuration/TransportType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/common/configuration/TransportType;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/client/metrics/common/configuration/TransportType;->$VALUES:[Lcom/amazon/client/metrics/common/configuration/TransportType;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/common/configuration/TransportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/common/configuration/TransportType;

    return-object v0
.end method
