.class public final enum Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;
.super Ljava/lang/Enum;
.source "MetricsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Domain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

.field public static final enum DEVO:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

.field public static final enum MASTER:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

.field public static final enum PROD:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    const/4 v1, 0x0

    const-string v2, "DEVO"

    const-string v3, "devo"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->DEVO:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    .line 21
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    const/4 v2, 0x1

    const-string v3, "MASTER"

    const-string/jumbo v4, "master"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->MASTER:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    .line 22
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    const/4 v3, 0x2

    const-string v4, "PROD"

    const-string/jumbo v5, "prod"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->PROD:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    .line 19
    sget-object v5, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->DEVO:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->MASTER:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->$VALUES:[Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->$VALUES:[Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration$Domain;->mName:Ljava/lang/String;

    return-object v0
.end method
