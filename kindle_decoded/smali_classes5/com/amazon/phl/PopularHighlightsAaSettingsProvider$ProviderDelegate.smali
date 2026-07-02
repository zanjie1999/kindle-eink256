.class public final Lcom/amazon/phl/PopularHighlightsAaSettingsProvider$ProviderDelegate;
.super Ljava/lang/Object;
.source "PopularHighlightsAaSettingsProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/phl/PopularHighlightsAaSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderDelegate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/phl/PopularHighlightsAaSettingsProvider$ProviderDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProvider()Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;
    .locals 1

    .line 28
    invoke-static {}, Lcom/amazon/phl/PopularHighlightsAaSettingsProvider;->access$getProvider$cp()Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;

    move-result-object v0

    return-object v0
.end method

.method public final initializeDelegate(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;Lcom/amazon/phl/settings/PHLOnOffToggle;Lcom/amazon/phl/metrics/InBookMetricsReporter;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "phlManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "phlOnOffToggle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsReporter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/phl/InitializedPopularHighlightsAaSettingsProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;Lcom/amazon/phl/settings/PHLOnOffToggle;Lcom/amazon/phl/metrics/InBookMetricsReporter;)V

    invoke-virtual {p0, v0}, Lcom/amazon/phl/PopularHighlightsAaSettingsProvider$ProviderDelegate;->setProvider(Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;)V

    return-void
.end method

.method public final setProvider(Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p1}, Lcom/amazon/phl/PopularHighlightsAaSettingsProvider;->access$setProvider$cp(Lcom/amazon/phl/IPopularHighlightsAaSettingsProvider;)V

    return-void
.end method
