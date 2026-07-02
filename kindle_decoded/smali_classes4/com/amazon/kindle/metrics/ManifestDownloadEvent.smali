.class public final enum Lcom/amazon/kindle/metrics/ManifestDownloadEvent;
.super Ljava/lang/Enum;
.source "DeliveryManifestDownloadMetricsEmitter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/metrics/ManifestDownloadEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

.field public static final enum ERROR_EVENT:Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

.field public static final enum SUCCESS_EVENT:Lcom/amazon/kindle/metrics/ManifestDownloadEvent;


# instance fields
.field private final metricName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

    new-instance v1, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

    const/4 v2, 0x0

    const-string v3, "SUCCESS_EVENT"

    const-string v4, "Success"

    .line 52
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->SUCCESS_EVENT:Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

    const/4 v2, 0x1

    const-string v3, "ERROR_EVENT"

    const-string v4, "Error"

    .line 53
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->ERROR_EVENT:Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->$VALUES:[Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->metricName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/metrics/ManifestDownloadEvent;
    .locals 1

    const-class v0, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/metrics/ManifestDownloadEvent;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->$VALUES:[Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

    invoke-virtual {v0}, [Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/metrics/ManifestDownloadEvent;

    return-object v0
.end method


# virtual methods
.method public final getMetricName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/metrics/ManifestDownloadEvent;->metricName:Ljava/lang/String;

    return-object v0
.end method
