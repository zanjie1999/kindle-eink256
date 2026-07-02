.class public final Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;
.super Ljava/lang/Object;
.source "MarginalGroupController.kt"

# interfaces
.implements Lcom/amazon/krf/platform/MarginalDataProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMarginalGroupController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarginalGroupController.kt\ncom/amazon/kindle/rendering/marginals/MarginalGroupController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,217:1\n1819#2,2:218\n1819#2,2:220\n*E\n*S KotlinDebug\n*F\n+ 1 MarginalGroupController.kt\ncom/amazon/kindle/rendering/marginals/MarginalGroupController\n*L\n110#1,2:218\n130#1,2:220\n*E\n"
.end annotation


# instance fields
.field private final bookPageMarginal:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

.field private final configurationLock:Ljava/lang/Object;

.field private final context:Landroid/content/Context;

.field private final footerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

.field private hasInitializedBeforeCreation:Z

.field private final headerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

.field private final mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;Landroid/content/Context;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;-><init>(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;Landroid/content/Context;ZZZLcom/amazon/android/docviewer/mobi/BookPageMarginal;Lcom/amazon/kindle/rendering/marginals/MarginalGroupFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;Landroid/content/Context;ZZZLcom/amazon/android/docviewer/mobi/BookPageMarginal;Lcom/amazon/kindle/rendering/marginals/MarginalGroupFactory;)V
    .locals 0

    const-string p3, "mcpContext"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "bookPageMarginal"

    invoke-static {p6, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "marginalGroupFactory"

    invoke-static {p7, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    iput-object p2, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->context:Landroid/content/Context;

    iput-object p6, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->bookPageMarginal:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    .line 54
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->configurationLock:Ljava/lang/Object;

    .line 58
    invoke-interface {p7, p4}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupFactory;->getHeaderGroup(Z)Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->headerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    .line 59
    invoke-interface {p7, p5}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupFactory;->getFooterGroup(Z)Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->footerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    .line 62
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->updateActivitySpecificValues$RenderingModule_release(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V

    .line 63
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;Landroid/content/Context;ZZZLcom/amazon/android/docviewer/mobi/BookPageMarginal;Lcom/amazon/kindle/rendering/marginals/MarginalGroupFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    move-object v1, p1

    and-int/lit8 v0, p8, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {p1}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_3

    if-nez v3, :cond_2

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/amazon/kindle/renderingmodule/R$bool;->book_reader_has_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v4, v0

    goto :goto_3

    :cond_3
    move v4, p4

    :goto_3
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_4

    xor-int/lit8 v0, v3, 0x1

    move v5, v0

    goto :goto_4

    :cond_4
    move v5, p5

    :goto_4
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_5

    .line 50
    new-instance v0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    move-object v2, p2

    invoke-direct {v0, p2, v5, p1}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;-><init>(Landroid/content/Context;ZLcom/amazon/kindle/yj/IMarginalContentProviderContext;)V

    move-object v6, v0

    goto :goto_5

    :cond_5
    move-object v2, p2

    move-object v6, p6

    :goto_5
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_6

    .line 51
    new-instance v0, Lcom/amazon/kindle/rendering/marginals/StandardMarginalGroupFactory;

    invoke-direct {v0, v6, p1}, Lcom/amazon/kindle/rendering/marginals/StandardMarginalGroupFactory;-><init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V

    move-object v7, v0

    goto :goto_6

    :cond_6
    move-object v7, p7

    :goto_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;-><init>(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;Landroid/content/Context;ZZZLcom/amazon/android/docviewer/mobi/BookPageMarginal;Lcom/amazon/kindle/rendering/marginals/MarginalGroupFactory;)V

    return-void
.end method

.method private final updateConfigurationValues()V
    .locals 7

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getSettings()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/krf/platform/ViewSettings;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/amazon/krf/platform/ViewSettings;

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getLeftMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getRightMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings;->getBottomMargin()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    new-instance v3, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    iget-object v4, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->bookPageMarginal:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getFontSize()F

    move-result v4

    invoke-direct {v3, v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(F)V

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    const/4 v5, 0x0

    .line 130
    iget-object v6, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->headerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->footerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    aput-object v6, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 220
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    .line 132
    invoke-interface {v5, v3}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->setFontSize(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 133
    invoke-interface {v5, v1}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 134
    invoke-interface {v5, v2}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->headerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    new-instance v2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    iget-object v4, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->bookPageMarginal:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getTopOffsetForTitle()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v4}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(F)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 140
    invoke-virtual {v0}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->bookPageMarginal:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getBottomOffsetForFooter()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {v3}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;->getValue()F

    move-result v1

    sub-float/2addr v0, v1

    .line 141
    iget-object v1, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->footerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    new-instance v2, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v0

    invoke-direct {v2, v0}, Lcom/amazon/krf/platform/ViewSettings$MeasureValue;-><init>(F)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->headerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    instance-of v1, v0, Lcom/amazon/kindle/rendering/marginals/StandardHeaderMarginalGroup;

    if-eqz v1, :cond_2

    .line 144
    check-cast v0, Lcom/amazon/kindle/rendering/marginals/StandardHeaderMarginalGroup;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    const-string v2, "Utils.getFactory().userSettingsController"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->isTimeDisplayVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->setShowClock(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final changeFooterVisibility(Z)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->footerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->setVisible(Z)V

    return-void
.end method

.method public final changeHeaderVisibility(Z)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->headerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->setVisible(Z)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 177
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->headerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    invoke-interface {v0}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->destroyMarginals()V

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->footerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    invoke-interface {v0}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->destroyMarginals()V

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->destroy()V

    return-void
.end method

.method public getMarginalsForPositionRange(Lcom/amazon/krf/platform/PositionRange;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PositionRange;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/Marginal;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    const-string v2, "range.firstPosition"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->configurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-boolean v2, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->hasInitializedBeforeCreation:Z

    if-nez v2, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->updateConfigurationValues()V

    const/4 v2, 0x1

    .line 159
    iput-boolean v2, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->hasInitializedBeforeCreation:Z

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->footerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    invoke-interface {v2, p1}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->createMarginals(Lcom/amazon/krf/platform/PositionRange;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget-object v2, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->headerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    invoke-interface {v2, p1}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->createMarginals(Lcom/amazon/krf/platform/PositionRange;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit v1

    .line 165
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 166
    invoke-static {}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupControllerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarginalList size is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    return-object v0

    :catchall_0
    move-exception p1

    .line 156
    monitor-exit v1

    throw p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final onDocViewerSettingsChangeEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->hasInitializedBeforeCreation:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v1}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getChangeType()Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->POST_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->configurationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->updateActivitySpecificValues$RenderingModule_release(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V

    .line 75
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->updateConfigurationValues()V

    .line 76
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateActivitySpecificValues$RenderingModule_release(Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V
    .locals 5

    const-string v0, "mcpContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-interface {p1}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 104
    :goto_0
    invoke-static {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getHeaderAndFooterFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    const-string v2, "FontFamily.getHeaderAndFooterFont(baseLanguage)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-interface {p1}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getSecondaryTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 108
    invoke-interface {p1, v2}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getColorTheme(Lcom/amazon/android/docviewer/KindleDocColorMode;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/amazon/krf/platform/theme/ColorTheme;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, p1

    :goto_3
    check-cast v1, Lcom/amazon/krf/platform/theme/ColorTheme;

    :cond_4
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    const/4 v2, 0x0

    .line 110
    iget-object v4, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->headerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    aput-object v4, p1, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/amazon/kindle/rendering/marginals/MarginalGroupController;->footerMarginalGroup:Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    aput-object v4, p1, v2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 218
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;

    const-string v4, "defaultFontFace"

    .line 111
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->setFont(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 113
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v1, v4}, Lcom/amazon/kindle/rendering/marginals/MarginalGroup;->setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;I)V

    goto :goto_4

    :cond_6
    return-void
.end method
