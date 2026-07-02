.class public final enum Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;
.super Ljava/lang/Enum;
.source "HttpRequestSignerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

.field public static final enum DCP:Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

.field public static final enum DCP_OAUTH:Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

.field public static final enum OAUTH:Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    const/4 v1, 0x0

    const-string v2, "DCP"

    const-string v3, "Dcp"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;->DCP:Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    .line 19
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    const/4 v2, 0x1

    const-string v3, "DCP_OAUTH"

    const-string v4, "DcpOAuth"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;->DCP_OAUTH:Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    .line 24
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    const/4 v3, 0x2

    const-string v4, "OAUTH"

    const-string v5, "OAuth"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;->OAUTH:Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    .line 10
    sget-object v5, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;->DCP:Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;->DCP_OAUTH:Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;->$VALUES:[Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

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
    iput-object p3, p0, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;->$VALUES:[Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    return-object v0
.end method
