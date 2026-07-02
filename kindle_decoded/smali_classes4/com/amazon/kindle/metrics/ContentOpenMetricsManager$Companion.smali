.class public final Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;
.super Ljava/lang/Object;
.source "ContentOpenMetricsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;
    .locals 1

    .line 14
    invoke-static {}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->access$getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES$cp()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v0

    return-object v0
.end method
