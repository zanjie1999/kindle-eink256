.class public Lcom/amazon/sitb/android/view/samples/SampleBarViewFactory;
.super Ljava/lang/Object;
.source "SampleBarViewFactory.java"

# interfaces
.implements Lcom/amazon/sitb/android/view/ViewFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/sitb/android/view/ViewFactory<",
        "Lcom/amazon/sitb/android/view/UpsellBarView;",
        ">;"
    }
.end annotation


# instance fields
.field private metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroid/view/View;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/sitb/android/view/samples/SampleBarViewFactory;->create()Lcom/amazon/sitb/android/view/UpsellBarView;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/amazon/sitb/android/view/UpsellBarView;
    .locals 3

    .line 24
    new-instance v0, Lcom/amazon/sitb/android/view/samples/SampleBarView;

    iget-object v1, p0, Lcom/amazon/sitb/android/view/samples/SampleBarViewFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v2, p0, Lcom/amazon/sitb/android/view/samples/SampleBarViewFactory;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-direct {v0, v1, v2}, Lcom/amazon/sitb/android/view/samples/SampleBarView;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/metrics/MetricsService;)V

    return-object v0
.end method

.method public resolveDependencies(Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;)V
    .locals 1

    .line 30
    invoke-virtual {p1}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/sitb/android/view/samples/SampleBarViewFactory;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 31
    invoke-virtual {p1}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getMetricsService()Lcom/amazon/sitb/android/metrics/MetricsService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/sitb/android/view/samples/SampleBarViewFactory;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    return-void
.end method
