.class public Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;
.super Ljava/lang/Object;
.source "RubyResumeWidgetProvider.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;,
        Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;,
        Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;
    }
.end annotation


# static fields
.field private static final IGNORE_UPDATE_EVENTS:Z = true

.field private static final MAX_ITEMS:I = 0x32

.field private static final MIN_BOOKS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final resources:Landroid/content/res/Resources;


# instance fields
.field private adapter:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

.field private counter:Lcom/amazon/kcp/library/LibraryCounter;

.field protected dataProvider:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

.field private ignoreDownloadEvents:Z

.field protected isWidgetViewBound:Z

.field private onClickHandler:Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

.field private resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

.field private resumeWidgetEmpty:Landroid/widget/LinearLayout;

.field private resumeWidgetEmptyLink:Landroid/widget/TextView;

.field private resumeWidgetEmptyNotice:Landroid/widget/TextView;

.field private resumeWidgetEmptyTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->TAG:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x32

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;-><init>(ZI)V

    return-void
.end method

.method protected constructor <init>(ZI)V
    .locals 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->counter:Lcom/amazon/kcp/library/LibraryCounter;

    .line 85
    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->dataProvider:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    .line 86
    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->onClickHandler:Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->isWidgetViewBound:Z

    .line 102
    new-instance v0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;-><init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->adapter:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    .line 103
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->getLibraryContentFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/amazon/kcp/library/LibraryCounter;

    sget-object v2, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    new-instance v4, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$1;-><init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/library/LibraryCounter;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kindle/callback/ICallback;)V

    iput-object v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->counter:Lcom/amazon/kcp/library/LibraryCounter;

    .line 113
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->counter:Lcom/amazon/kcp/library/LibraryCounter;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->counter:Lcom/amazon/kcp/library/LibraryCounter;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    .line 116
    iput-boolean p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->ignoreDownloadEvents:Z

    .line 117
    invoke-virtual {p0, p2, v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->createDataProvider(ILcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->dataProvider:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    .line 118
    invoke-static {}, Lcom/amazon/kcp/home/util/HomeContext;->getFragment()Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1, p0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->addHomeVisibilityListener(Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;)V

    goto :goto_0

    .line 122
    :cond_0
    const-class p1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/ui/ResumeShovelerView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Landroid/widget/LinearLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmpty:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->onClickHandler:Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;Ljava/util/List;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->bindResumeDetail(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;Ljava/util/List;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->reportImpressionDataForResume(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->setResumeWidgetEmptyView()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->setResumeWidgetTrialView()V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->reportHideContextForResume()V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->adapter:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    return-object p0
.end method

.method private bindResumeDetail(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->adapter:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->updateAdapterAndNotify(Ljava/util/List;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->adapter:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->updateAdapterAndNotify(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private createHomeWidget(I)Lcom/amazon/kindle/home/card/HomeCard;
    .locals 2

    .line 364
    new-instance v0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;-><init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;ILcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$1;)V

    return-object v0
.end method

.method private getLibraryContentFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 7

    .line 134
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->CAROUSEL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 136
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v4, 0x0

    sget-object v5, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    aput-object v5, v3, v4

    sget-object v4, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLES_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    sget-object v6, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    sget-object v6, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    aput-object v6, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 146
    invoke-interface {v1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBooksBlocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    sget-object v4, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    sget-object v4, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLES_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandBlocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    sget-object v4, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isDocsBlocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 159
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 161
    sget-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->OR:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    invoke-static {v2, v0, v5}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Ljava/util/List;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 169
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->CAROUSEL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 170
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/krx/metrics/MetricsData;

    sget-object v3, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->TAG:Ljava/lang/String;

    const-string v4, "AmazonKindle"

    invoke-direct {v2, v4, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 171
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    const-string v3, "FYLCardNullLibraryContentFilter"

    .line 172
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    .line 170
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :cond_4
    return-object v0
.end method

.method private refreshLibraryContentFromDB()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->dataProvider:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    new-instance v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$5;-><init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->loadDataFromDb(Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;)V

    return-void
.end method

.method private reportHideContextForResume()V
    .locals 2

    .line 357
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "HomeResumeWidget"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportImpressionDataForResume(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 335
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    .line 342
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    .line 344
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HomeResumeShovelerShown"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "ResumeShovelerSize"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "HomeResumeWidgetShown"

    .line 346
    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo p1, "resume section with library books"

    goto :goto_0

    :cond_1
    const-string p1, "HomeEmptyResumeWidgetShown"

    .line 349
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    const-string p1, "empty resume section"

    .line 352
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Impression data being reported for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private setRemovedEmptyView()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyTitle:Landroid/widget/TextView;

    sget-object v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->removed_empty_view_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyNotice:Landroid/widget/TextView;

    sget-object v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->removed_empty_view_notice:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    sget-object v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->removed_empty_view_link_to_library:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    new-instance v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$4;-><init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setResumeWidgetEmptyView()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyNotice:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->counter:Lcom/amazon/kcp/library/LibraryCounter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->setRemovedEmptyView()V

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->setWelcomeEmptyView()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setResumeWidgetTrialView()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyNotice:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 270
    sget-object v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->empty_view_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyNotice:Landroid/widget/TextView;

    sget-object v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->nuo_home_msg_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setWelcomeEmptyView()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyTitle:Landroid/widget/TextView;

    sget-object v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->empty_view_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyNotice:Landroid/widget/TextView;

    sget-object v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->empty_view_notice:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected bindWidgetView(Landroid/view/View;Lcom/amazon/kindle/home/card/HomeWidgetListener;)V
    .locals 1

    .line 374
    new-instance v0, Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;-><init>(Lcom/amazon/kindle/home/card/HomeWidgetListener;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->onClickHandler:Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

    .line 375
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->resume_widget_empty_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmpty:Landroid/widget/LinearLayout;

    .line 376
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->resume_shoveler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    .line 377
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->resume_empty_view_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyTitle:Landroid/widget/TextView;

    .line 378
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->resume_empty_view_notice:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyNotice:Landroid/widget/TextView;

    .line 379
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->resume_empty_view_link:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    .line 382
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->adapter:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->adapter:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 383
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    iget-object p2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->adapter:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/home/ui/ResumeShovelerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 388
    :goto_1
    iget-boolean p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->isWidgetViewBound:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 389
    iput-boolean p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->isWidgetViewBound:Z

    .line 392
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->refreshResumeWidgetView()V

    return-void
.end method

.method public build(Landroid/content/Context;)Lcom/amazon/kindle/home/card/HomeCard;
    .locals 5

    .line 306
    sget-object p1, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->cards:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 308
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "sk-fos-elbentk"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "sk-kfa-elbentk"

    .line 309
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/home/model/CardData;

    .line 310
    invoke-virtual {v4}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 318
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result p1

    .line 319
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->counter:Lcom/amazon/kcp/library/LibraryCounter;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    move-result v2

    if-eqz v2, :cond_5

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_2
    const/4 p1, -0x1

    if-eq v2, p1, :cond_8

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/16 p1, -0x64

    .line 325
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->createHomeWidget(I)Lcom/amazon/kindle/home/card/HomeCard;

    move-result-object p1

    .line 327
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->ignoreDownloadEvents:Z

    if-eqz v0, :cond_7

    .line 328
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->refreshResumeWidgetView()V

    :cond_7
    return-object p1

    :cond_8
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method createDataProvider(ILcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;
    .locals 2

    .line 183
    new-instance v0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    new-instance v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$2;-><init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;-><init>(ILcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/callback/ICallback;)V

    return-object v0
.end method

.method onDataChange(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Lcom/amazon/kcp/callback/ResumeWidgetResult;",
            ">;)V"
        }
    .end annotation

    .line 201
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->ignoreDownloadEvents:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/callback/ResumeWidgetResult;

    invoke-virtual {p1}, Lcom/amazon/kcp/callback/ResumeWidgetResult;->getIsDelete()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->updateAdapter()V

    goto :goto_1

    .line 202
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->refreshResumeWidgetView()V

    :goto_1
    return-void
.end method

.method public onHomeDisplayed()V
    .locals 0

    .line 436
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->refreshLibraryContentFromDB()V

    return-void
.end method

.method public onHomeHidden()V
    .locals 0

    .line 441
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->refreshLibraryContentFromDB()V

    return-void
.end method

.method protected onLibraryCounterUpdated(I)V
    .locals 0

    return-void
.end method

.method protected refreshResumeWidgetView()V
    .locals 2

    .line 227
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->isWidgetViewBound:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;-><init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method updateAdapter()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->dataProvider:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->getBooks()Ljava/util/List;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 211
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->adapter:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->updateAdapterMaintainingOrder(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method updateMetadataList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const/4 v2, 0x0

    .line 419
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 420
    invoke-interface {v1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 421
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_0

    .line 428
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
