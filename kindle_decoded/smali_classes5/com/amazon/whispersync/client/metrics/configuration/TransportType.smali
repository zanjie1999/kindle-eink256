.class public final enum Lcom/amazon/whispersync/client/metrics/configuration/TransportType;
.super Ljava/lang/Enum;
.source "TransportType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/client/metrics/configuration/TransportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

.field public static final enum HTTP:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

.field public static final enum OUTPUT_STREAM:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

.field public static final enum TCOMM:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    const/4 v1, 0x0

    const-string v2, "HTTP"

    const-string v3, "Http"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->HTTP:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    .line 10
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    const/4 v2, 0x1

    const-string v3, "TCOMM"

    const-string v4, "TComm"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->TCOMM:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    .line 11
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    const/4 v3, 0x2

    const-string v4, "OUTPUT_STREAM"

    const-string v5, "OutputStream"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->OUTPUT_STREAM:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    .line 7
    sget-object v5, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->HTTP:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->TCOMM:Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->$VALUES:[Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

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
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->mName:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/configuration/TransportType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->values()[Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 25
    invoke-virtual {v3}, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->getName()Ljava/lang/String;

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

    const-string p0, " is not a valid TransportType"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/configuration/TransportType;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/client/metrics/configuration/TransportType;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->$VALUES:[Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/configuration/TransportType;->mName:Ljava/lang/String;

    return-object v0
.end method
