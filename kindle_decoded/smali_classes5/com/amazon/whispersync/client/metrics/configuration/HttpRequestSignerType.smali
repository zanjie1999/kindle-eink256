.class public final enum Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;
.super Ljava/lang/Enum;
.source "HttpRequestSignerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

.field public static final enum DCP:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

.field public static final enum DCP_OAUTH:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

.field public static final enum OAUTH:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    const/4 v1, 0x0

    const-string v2, "DCP"

    const-string v3, "Dcp"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->DCP:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    .line 9
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    const/4 v2, 0x1

    const-string v3, "DCP_OAUTH"

    const-string v4, "DcpOAuth"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->DCP_OAUTH:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    const/4 v3, 0x2

    const-string v4, "OAUTH"

    const-string v5, "OAuth"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->OAUTH:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    .line 6
    sget-object v5, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->DCP:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->DCP_OAUTH:Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->$VALUES:[Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->values()[Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 25
    invoke-virtual {v3}, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid RequestSignerType"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->$VALUES:[Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;->mName:Ljava/lang/String;

    return-object v0
.end method
