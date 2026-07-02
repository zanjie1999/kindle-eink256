.class public final enum Lcom/amazon/client/metrics/common/configuration/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/common/configuration/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/common/configuration/NetworkType;

.field public static final enum ETHERNET:Lcom/amazon/client/metrics/common/configuration/NetworkType;

.field public static final enum WAN:Lcom/amazon/client/metrics/common/configuration/NetworkType;

.field public static final enum WIFI:Lcom/amazon/client/metrics/common/configuration/NetworkType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/NetworkType;

    const/4 v1, 0x0

    const-string v2, "WIFI"

    const-string v3, "Wifi"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/client/metrics/common/configuration/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/NetworkType;->WIFI:Lcom/amazon/client/metrics/common/configuration/NetworkType;

    .line 19
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/NetworkType;

    const/4 v2, 0x1

    const-string v3, "ETHERNET"

    const-string v4, "Ethernet"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/client/metrics/common/configuration/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/NetworkType;->ETHERNET:Lcom/amazon/client/metrics/common/configuration/NetworkType;

    .line 24
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/NetworkType;

    const/4 v3, 0x2

    const-string v4, "WAN"

    const-string v5, "Wan"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/client/metrics/common/configuration/NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/NetworkType;->WAN:Lcom/amazon/client/metrics/common/configuration/NetworkType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/client/metrics/common/configuration/NetworkType;

    .line 10
    sget-object v5, Lcom/amazon/client/metrics/common/configuration/NetworkType;->WIFI:Lcom/amazon/client/metrics/common/configuration/NetworkType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/client/metrics/common/configuration/NetworkType;->ETHERNET:Lcom/amazon/client/metrics/common/configuration/NetworkType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/client/metrics/common/configuration/NetworkType;->$VALUES:[Lcom/amazon/client/metrics/common/configuration/NetworkType;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/amazon/client/metrics/common/configuration/NetworkType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/common/configuration/NetworkType;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/client/metrics/common/configuration/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/common/configuration/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/common/configuration/NetworkType;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/client/metrics/common/configuration/NetworkType;->$VALUES:[Lcom/amazon/client/metrics/common/configuration/NetworkType;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/common/configuration/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/common/configuration/NetworkType;

    return-object v0
.end method
