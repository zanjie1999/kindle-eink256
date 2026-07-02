.class Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader$1;
.super Ljava/lang/Object;
.source "PreloadManagerInformationReader.java"

# interfaces
.implements Lcom/amazon/maft/metrics/MetricsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->createMetricsFactory()Lcom/amazon/maft/metrics/MetricsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newPmetMetrics(Ljava/lang/String;)Lcom/amazon/maft/metrics/PmetMetrics;
    .locals 2

    .line 46
    new-instance v0, Lcom/amazon/kcp/application/associate/PreloadPmetMetrics;

    const-string v1, "AmazonKindle"

    invoke-direct {v0, v1, p1}, Lcom/amazon/kcp/application/associate/PreloadPmetMetrics;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
