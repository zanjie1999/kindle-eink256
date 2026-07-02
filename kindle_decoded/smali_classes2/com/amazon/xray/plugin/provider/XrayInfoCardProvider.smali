.class public Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;
.super Ljava/lang/Object;
.source "XrayInfoCardProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/InfoCardView;",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_FEEDBACK_ERROR_TEXT_IDS:[I

.field protected static final DEFAULT_FEEDBACK_ERROR_TYPE_IDS:[I

.field private static final FEEDBACK_LOAD_TIMEOUT_MS:I = 0xc8

.field private static final INFO_CARD_PRIORITY:I = 0xfa0

.field private static final INFO_CARD_TIMEOUT_MS:I = 0x190


# instance fields
.field private final metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 56
    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_feedback_content_incorrect:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_feedback_content_spoilers:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_feedback_content_insufficient_details:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_feedback_content_inappropriate:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_feedback_other:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sput-object v1, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->DEFAULT_FEEDBACK_ERROR_TEXT_IDS:[I

    new-array v0, v0, [I

    .line 63
    sget v1, Lcom/amazon/kindle/xray/R$string;->xray_feedback_incorrect_content_short:I

    aput v1, v0, v3

    sget v1, Lcom/amazon/kindle/xray/R$string;->xray_feedback_spoiler_short:I

    aput v1, v0, v4

    sget v1, Lcom/amazon/kindle/xray/R$string;->xray_feedback_insufficient_detail_short:I

    aput v1, v0, v5

    sget v1, Lcom/amazon/kindle/xray/R$string;->xray_feedback_content_inappropriate_short:I

    aput v1, v0, v6

    sget v1, Lcom/amazon/kindle/xray/R$string;->xray_feedback_other_short:I

    aput v1, v0, v7

    sput-object v0, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->DEFAULT_FEEDBACK_ERROR_TYPE_IDS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    sget-object v1, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-virtual {v1}, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->create()Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/xray/metrics/MetricsRecorder;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 83
    iput-object p2, p0, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    return-void
.end method

.method private getDefaultFeedbackErrors()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/FeedbackErrorType;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 179
    :goto_0
    sget-object v2, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->DEFAULT_FEEDBACK_ERROR_TEXT_IDS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 180
    new-instance v2, Lcom/amazon/xray/model/FeedbackErrorType;

    iget-object v3, p0, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->DEFAULT_FEEDBACK_ERROR_TEXT_IDS:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 181
    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->DEFAULT_FEEDBACK_ERROR_TYPE_IDS:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/xray/model/FeedbackErrorType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;
    .locals 10

    .line 88
    invoke-static {p1}, Lcom/amazon/xray/plugin/util/ContentUtil;->validateContentSelection(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 91
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/util/AccountUtil;->isChildAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 98
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->acquire(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 101
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 102
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    .line 103
    new-instance v4, Lcom/amazon/xray/model/loader/InfoCardTask;

    invoke-direct {v4, v0, v2, v3}, Lcom/amazon/xray/model/loader/InfoCardTask;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;II)V

    const-wide/16 v2, 0x190

    invoke-static {v4, v2, v3}, Lcom/amazon/xray/model/loader/ContentLoader;->load(Lcom/amazon/xray/model/loader/ContentLoader$Task;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/xray/model/object/Entity;

    if-eqz v2, :cond_3

    .line 106
    new-instance v3, Lcom/amazon/xray/model/loader/FeedbackErrorsTask;

    invoke-direct {v3, v0}, Lcom/amazon/xray/model/loader/FeedbackErrorsTask;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    const-wide/16 v4, 0xc8

    invoke-static {v3, v4, v5}, Lcom/amazon/xray/model/loader/ContentLoader;->load(Lcom/amazon/xray/model/loader/ContentLoader$Task;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 107
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->getDefaultFeedbackErrors()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move-object v3, v1

    .line 110
    :goto_0
    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->release(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->release(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    .line 111
    throw p1

    :cond_4
    move-object v2, v1

    move-object v3, v2

    .line 114
    :goto_1
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v4

    const-string v0, "FoundEntity"

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    .line 119
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    const-string v6, "XrayReadingSession"

    invoke-static {v1, v6}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v1

    const-string v6, "XrayInfoCardsShown"

    .line 121
    invoke-virtual {v1, v6}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 123
    new-instance v9, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v9, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 124
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v2}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "EntityId"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    .line 128
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v8

    const-string v5, "XrayInfoCard"

    const-string v6, "EntityLookup"

    .line 126
    invoke-interface/range {v4 .. v9}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performContentAction(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    .line 130
    iget-object v0, p0, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    invoke-interface {v0, v2}, Lcom/amazon/xray/metrics/MetricsRecorder;->openXrayInfoCard(Lcom/amazon/xray/model/object/Entity;)V

    .line 132
    invoke-virtual {p0, v2, p1, v3}, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->getInfoCard(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/kindle/krx/content/IContentSelection;Ljava/util/List;)Lcom/amazon/xray/ui/widget/XrayInfoCard;

    move-result-object p1

    return-object p1

    .line 134
    :cond_5
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    .line 135
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    .line 138
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v8

    const-string v5, "XrayInfoCard"

    const-string v6, "EntityLookup"

    .line 136
    invoke-interface/range {v4 .. v9}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performContentAction(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/InfoCardView;

    move-result-object p1

    return-object p1
.end method

.method protected getInfoCard(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/kindle/krx/content/IContentSelection;Ljava/util/List;)Lcom/amazon/xray/ui/widget/XrayInfoCard;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/model/object/Entity;",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/FeedbackErrorType;",
            ">;)",
            "Lcom/amazon/xray/ui/widget/XrayInfoCard;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    .line 166
    sget v1, Lcom/amazon/kindle/xray/R$layout;->xray_view_info_card_v2:I

    .line 167
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/ui/widget/XrayInfoCard;

    .line 169
    iget-object v1, p0, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->configureInfoCard(Lcom/amazon/xray/model/object/Entity;Lcom/amazon/kindle/krx/content/IContentSelection;Ljava/util/List;Lcom/amazon/xray/metrics/MetricsRecorder;)V

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 0

    const/16 p1, 0xfa0

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/xray/plugin/provider/XrayInfoCardProvider;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method
