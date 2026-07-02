.class public Lcom/amazon/startactions/ui/layout/DefaultLayoutFactory;
.super Ljava/lang/Object;
.source "DefaultLayoutFactory.java"


# static fields
.field private static final LAYOUT_METRIC_TAG_GROUP:Ljava/lang/String; = "glf"

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.layout.DefaultLayoutFactory"

.field private static final WIDGET_ID_MARK_AS_READING:Ljava/lang/String; = "markAsReadingWidget"

.field private static final WIDGET_ID_READER_SETTINGS:Ljava/lang/String; = "readerSettings"

.field private static final WIDGET_ID_SEND_FEEDBACK:Ljava/lang/String; = "userFeedbackWidget"

.field private static final WIDGET_METRIC_TAG_MARK_AS_READING:Ljava/lang/String; = "gmar"

.field private static final WIDGET_METRIC_TAG_READER_SETTINGS:Ljava/lang/String; = "rs"

.field private static final WIDGET_METRIC_TAG_SEND_FEEDBACK:Ljava/lang/String; = "ufb"

.field private static final WIDGET_REF_TAG_PARTIAL_HEADER:Ljava/lang/String; = "hdrw"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static defaultLayoutSupported()Z
    .locals 1

    .line 70
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isArchivable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->isGrokAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static tryCreateDefaultStartActionsGrokLayout()Lcom/amazon/startactions/ui/layout/Layout;
    .locals 20

    .line 75
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 81
    :cond_0
    new-instance v10, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v11, 0x1

    new-array v2, v11, [Ljava/lang/String;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getAuthors()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    aput-object v0, v2, v12

    invoke-static {v2}, Lcom/amazon/ea/guava/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, -0x1

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;FI)V

    .line 85
    new-instance v0, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v13, 0x0

    const-string v3, "headerWidget"

    const-string v4, "hdrw"

    const-string v7, "hdrw"

    move-object v2, v0

    move-object v9, v10

    move v10, v13

    invoke-direct/range {v2 .. v10}, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;Z)V

    .line 87
    new-instance v2, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    const-string v15, "markAsReadingWidget"

    const-string v16, "gmar"

    move-object v14, v2

    invoke-direct/range {v14 .. v19}, Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;)V

    .line 89
    new-instance v3, Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;

    const/4 v4, -0x1

    const-string/jumbo v5, "userFeedbackWidget"

    const-string/jumbo v6, "ufb"

    invoke-direct {v3, v5, v6, v1, v4}, Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 94
    invoke-static {v0}, Lcom/amazon/startactions/ui/widget/HeaderWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;)Lcom/amazon/startactions/ui/widget/HeaderWidget;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {v2}, Lcom/amazon/startactions/ui/layout/LayoutResolver;->getGoodreadsShelfWidget(Lcom/amazon/ea/sidecar/def/widgets/MarkAsReadingWidgetDef;)Lcom/amazon/startactions/ui/widget/WidgetBase;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-static {v3}, Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/SendFeedbackWidgetDef;)Lcom/amazon/startactions/ui/widget/SendFeedbackWidget;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {v11}, Lcom/amazon/ea/guava/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/String;

    .line 100
    iget-object v7, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    aput-object v7, v6, v12

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v6, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    invoke-direct {v6, v1, v5}, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 103
    invoke-static {v11}, Lcom/amazon/ea/guava/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v5

    new-array v7, v11, [Ljava/lang/String;

    .line 104
    iget-object v8, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    aput-object v8, v7, v12

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v7, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    invoke-direct {v7, v1, v5}, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v5, 0x2

    .line 107
    invoke-static {v5}, Lcom/amazon/ea/guava/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/String;

    .line 108
    iget-object v10, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v9, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    invoke-direct {v9, v1, v8}, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-array v1, v5, [Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    aput-object v6, v1, v12

    aput-object v7, v1, v11

    .line 111
    invoke-static {v1}, Lcom/amazon/ea/guava/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v16

    new-array v1, v11, [Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    aput-object v9, v1, v12

    .line 112
    invoke-static {v1}, Lcom/amazon/ea/guava/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v17

    .line 114
    new-instance v15, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    aput-object v0, v1, v12

    iget-object v0, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    aput-object v0, v1, v11

    iget-object v0, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/amazon/ea/guava/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 117
    new-instance v0, Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;

    const/16 v18, 0x1

    const-string v14, "glf"

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Z)V

    .line 121
    new-instance v1, Lcom/amazon/startactions/ui/layout/SimpleWidgetProvider;

    invoke-direct {v1, v4}, Lcom/amazon/startactions/ui/layout/SimpleWidgetProvider;-><init>(Ljava/util/List;)V

    const-string v2, "d"

    invoke-static {v0, v1, v2}, Lcom/amazon/startactions/ui/layout/LayoutFactory;->tryCreateLayout(Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;Lcom/amazon/startactions/ui/layout/IWidgetProvider;Ljava/lang/String;)Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object v0

    return-object v0
.end method

.method public static tryCreateDefaultStartActionsLayout()Lcom/amazon/startactions/ui/layout/Layout;
    .locals 2

    .line 57
    invoke-static {}, Lcom/amazon/startactions/ui/layout/DefaultLayoutFactory;->defaultLayoutSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/amazon/startactions/ui/layout/DefaultLayoutFactory;->TAG:Ljava/lang/String;

    const-string v1, "Cannot create default start actions layout: Goodreads is not enabled"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    invoke-static {}, Lcom/amazon/startactions/ui/layout/DefaultLayoutFactory;->tryCreateDefaultStartActionsGrokLayout()Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object v0

    return-object v0
.end method
