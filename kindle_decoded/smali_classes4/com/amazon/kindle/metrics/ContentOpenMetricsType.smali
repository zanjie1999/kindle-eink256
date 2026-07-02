.class public final enum Lcom/amazon/kindle/metrics/ContentOpenMetricsType;
.super Ljava/lang/Enum;
.source "ContentOpenMetricsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/metrics/ContentOpenMetricsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

.field public static final enum ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

.field public static final enum TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

.field public static final enum TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

.field public static final enum TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;


# instance fields
.field private final experienceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v1, 0x0

    const-string v2, "TAP_TO_OPEN"

    const-string v3, "TapToOpen"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 5
    new-instance v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v2, 0x1

    const-string v3, "TAP_TO_OPENABLE"

    const-string v4, "TapToOpenable"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 6
    new-instance v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v3, 0x2

    const-string v4, "ONE_TAP_CX"

    const-string v5, "OneTapCX"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 7
    new-instance v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v4, 0x3

    const-string v5, "TAP_TO_DOWNLOAD"

    const-string v6, "TapToDownload"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 3
    sget-object v6, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->$VALUES:[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->experienceName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/metrics/ContentOpenMetricsType;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->$VALUES:[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    return-object v0
.end method


# virtual methods
.method public getExperienceName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->experienceName:Ljava/lang/String;

    return-object v0
.end method
