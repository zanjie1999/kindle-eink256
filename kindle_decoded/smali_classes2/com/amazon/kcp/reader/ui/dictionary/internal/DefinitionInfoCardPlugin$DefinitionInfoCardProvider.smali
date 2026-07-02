.class Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;
.super Lcom/amazon/kindle/krx/ui/InfoCardProvider;
.source "DefinitionInfoCardPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefinitionInfoCardProvider"
.end annotation


# static fields
.field private static final PRIORITY_NO_DEFINITION:I = 0x3e8

.field private static final PRIORITY_WITH_DEFINITION:I = 0xbb8


# instance fields
.field definitionInfocardViewCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;",
            ">;"
        }
    .end annotation
.end field

.field private dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

.field private priorityTimeCalculation:J

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/InfoCardProvider;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 66
    iput-wide v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->priorityTimeCalculation:J

    .line 69
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method private generateCardView(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->definitionInfocardViewCache:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    sget v1, Lcom/amazon/kindle/dcm/R$layout;->info_card_definition_v2:I

    invoke-static {v0, v1}, Lcom/amazon/kindle/krx/ui/InfoCardProvider;->inflateCardView(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;

    :cond_1
    if-eqz v0, :cond_3

    .line 158
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$bool;->enable_cache_info_card_view:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->definitionInfocardViewCache:Ljava/lang/ref/SoftReference;

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->setDictionaryPresenter(Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;)V

    .line 163
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->setCurrentSelection(Lcom/amazon/kindle/krx/content/IContentSelection;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method closeDictionary()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->closeDictionary()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    :cond_0
    return-void
.end method

.method public get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;
    .locals 14

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->generateCardView(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    .line 82
    :cond_0
    sget-object v3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->DICTIONARY_GET_CARD:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 83
    invoke-virtual {v3}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 85
    invoke-static {v3, v2, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->updatePopupVisibility()Z

    move-result v4

    const/4 v5, 0x0

    .line 87
    invoke-static {v3, v2, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v6

    if-eqz v4, :cond_1

    .line 92
    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v5, "InfoCardDictionary"

    const-string v7, "DictionaryCardShown"

    invoke-virtual {v6, v5, v7, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 97
    :cond_1
    iget-wide v7, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->priorityTimeCalculation:J

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v3, v7, v12

    if-eqz v3, :cond_2

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    add-long v10, v7, v9

    .line 100
    sget-object v9, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v7, "InfoCardDictionaryTimer"

    const-string v8, "DictionaryCardCreationTimer"

    invoke-virtual/range {v6 .. v11}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 102
    iput-wide v12, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->priorityTimeCalculation:J

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v2

    :goto_0
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 8

    .line 110
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->DICTIONARY_GET_PRIORITY:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 111
    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 115
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    if-nez v5, :cond_0

    .line 116
    new-instance v5, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    invoke-direct {v5}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;-><init>()V

    iput-object v5, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    .line 119
    :cond_0
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    .line 120
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->hasDefinitionForWord(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    move-result-object p1

    const/4 v5, 0x0

    .line 122
    invoke-static {v0, v2, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    iput-wide v6, p0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->priorityTimeCalculation:J

    .line 134
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->HAS_DEFINITION:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;->DICTIONARY_NOT_LOCAL:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter$DefinitionState;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const/16 p1, 0xbb8

    goto :goto_1

    :cond_3
    const/16 p1, 0x3e8

    :goto_1
    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 47
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DefinitionInfoCardPlugin$DefinitionInfoCardProvider;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method
