.class public Lcom/amazon/ea/ui/EndActionsActivity;
.super Lcom/amazon/ea/ui/ThemeActivity;
.source "EndActionsActivity.java"


# static fields
.field public static final ASK_ACTIVITY_REQUEST_CODE:I = 0x2

.field public static final ENTRY_POINT_KEY:Ljava/lang/String; = "com.amazon.ea.ui.EndActionsActivity.ENTRY_POINT_KEY"

.field public static final REVIEWS_ACTIVITY_REQUEST_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private layoutController:Lcom/amazon/ea/ui/layout/LayoutController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/ea/ui/EndActionsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/ui/EndActionsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/ea/ui/ThemeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/amazon/ea/ui/EndActionsActivity;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/ea/ui/layout/LayoutController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 53
    invoke-super {p0, p1}, Lcom/amazon/ea/ui/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0}, Lcom/amazon/ea/EndActionsPlugin;->setCurrentActivity(Landroid/app/Activity;)V

    .line 60
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    if-nez v0, :cond_0

    .line 61
    sget-object p1, Lcom/amazon/ea/ui/EndActionsActivity;->TAG:Ljava/lang/String;

    const-string v0, "M.session is null, activity launch"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v1, "EndActionsOnCreate"

    .line 65
    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 66
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 67
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "isLandscape"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "isPortrait"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 71
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->UNKNOWN:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    const-string v1, "EndActions"

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    const-string v2, "com.amazon.ea.ui.EndActionsActivity.ENTRY_POINT_KEY"

    .line 76
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    .line 78
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getEndActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object v2

    const-string v3, "LaunceSuccess"

    if-eqz v0, :cond_3

    .line 80
    sget-object v4, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    iget-object v5, v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->metricName:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 81
    iget-object v4, v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->metricName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v2, v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->metricName:Ljava/lang/String;

    const-string v3, "LeftNav"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    sget-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    sget-object v2, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->OPEN_BEFORE_YOU_GO:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v2}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;->emitMetric(Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, v0, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->metricName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    sget-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->END_ACTIONS:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    sget-object v2, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->OPEN_BEFORE_YOU_GO:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v2}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;->emitMetric(Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_1

    .line 91
    :cond_3
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2, v3, v4}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_4
    :goto_1
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->bindActivityToCurrentBook(Landroid/app/Activity;)V

    .line 98
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->layoutModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/model/layout/LayoutModel;

    if-nez v0, :cond_5

    .line 101
    sget-object p1, Lcom/amazon/ea/ui/EndActionsActivity;->TAG:Ljava/lang/String;

    const-string v0, "layout model was null and end actions tried to show. finishing early."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 106
    :cond_5
    invoke-virtual {v0}, Lcom/amazon/ea/model/layout/LayoutModel;->getWidgets()Ljava/util/List;

    move-result-object v2

    .line 107
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 108
    sget-object p1, Lcom/amazon/ea/ui/EndActionsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "no widgets to show in end actions, finishing early"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 112
    :cond_6
    invoke-static {p0, v0}, Lcom/amazon/ea/ui/ControllerBuilder;->createController(Landroid/app/Activity;Lcom/amazon/ea/model/layout/LayoutModel;)Lcom/amazon/ea/ui/layout/LayoutController;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/ea/ui/EndActionsActivity;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    if-nez v2, :cond_7

    .line 115
    sget-object p1, Lcom/amazon/ea/ui/EndActionsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout controller is null for model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 120
    :cond_7
    invoke-static {}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->initializeMetadataEA()V

    .line 122
    iget-object v2, p0, Lcom/amazon/ea/ui/EndActionsActivity;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    invoke-virtual {v2, p1}, Lcom/amazon/ea/ui/layout/LayoutController;->getView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_8

    .line 124
    sget-object p1, Lcom/amazon/ea/ui/EndActionsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Layout view is null for model "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 127
    :cond_8
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 128
    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v2, v3, :cond_9

    sget v2, Lcom/amazon/kindle/ea/R$string;->enjoyed_this_sample:I

    goto :goto_2

    :cond_9
    sget v2, Lcom/amazon/kindle/ea/R$string;->before_you_go:I

    :goto_2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 130
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 131
    invoke-static {p0}, Lcom/amazon/ea/ui/util/ActionBarUtil;->setupActionBar(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 134
    :goto_3
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p1

    .line 135
    invoke-static {}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->getDisplayedWidgetMetadata()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    invoke-static {}, Lcom/amazon/ea/metrics/RefTagHelper;->getRefTagSuffix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RefTagSuffix"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 138
    iget-object v0, v0, Lcom/amazon/ea/model/layout/LayoutModel;->metricsTag:Ljava/lang/String;

    const-string v2, "LayoutTag"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_a
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->isGrokAvailable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "IsGoodreadsUser"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->hasSidecarForCurrentBook()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "HasSidecar"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->hasErlForCurrentBook()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "HasErl"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 156
    invoke-super {p0}, Lcom/amazon/ea/ui/ThemeActivity;->onDestroy()V

    .line 157
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->clearCurrentActivity()V

    .line 158
    iget-object v0, p0, Lcom/amazon/ea/ui/EndActionsActivity;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/amazon/ea/ui/layout/LayoutController;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/amazon/ea/ui/EndActionsActivity;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    .line 162
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->unBindActivityFromCurrentBook(Landroid/app/Activity;)V

    .line 163
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "EndActionsOnDestroy"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "EndActions"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->finishContainerMetrics()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 180
    invoke-static {p1, p0}, Lcom/amazon/ea/ui/util/ActionBarUtil;->activityOptionItemSelected(Landroid/view/MenuItem;Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onPause()V
    .locals 2

    .line 186
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/amazon/ea/ui/EndActionsActivity;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/amazon/ea/ui/layout/LayoutController;->onPause()V

    .line 192
    :cond_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "EndActionsOnPause"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/amazon/ea/metrics/M;->onHide()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/amazon/ea/ui/EndActionsActivity;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p1}, Lcom/amazon/ea/ui/layout/LayoutController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 198
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 200
    iget-object v0, p0, Lcom/amazon/ea/ui/EndActionsActivity;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/amazon/ea/ui/layout/LayoutController;->onResume()V

    .line 204
    :cond_0
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "EndActionsOnResume"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/amazon/ea/metrics/M;->onDisplay()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/ea/ui/EndActionsActivity;->layoutController:Lcom/amazon/ea/ui/layout/LayoutController;

    invoke-virtual {v0, p1}, Lcom/amazon/ea/ui/layout/LayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 210
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 213
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/amazon/ea/ui/EndActionsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Purchases are blocked; vetoing EndActionsActivity"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 221
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 222
    sget-object v0, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "EndActionsOnStop"

    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->requestShowChrome()V

    return-void
.end method
