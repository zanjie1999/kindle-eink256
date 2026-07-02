.class public Lcom/amazon/startactions/ui/widget/AudibleWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "AudibleWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/AudibleWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final CUSTOM_WIDGET_NAME:Ljava/lang/String; = "audibleWidget"

.field private static final CUSTOM_WIDGET_REQUESTER_NAME:Ljava/lang/String; = "startactionsAudibleWidget"

.field private static final CUSTOM_WIDGET_TIMEOUT_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.widget.AudibleWidget"


# instance fields
.field private final customWidget:Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/AudibleWidgetDef;Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 127
    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/AudibleWidget;->customWidget:Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/AudibleWidgetDef;)Lcom/amazon/startactions/ui/widget/AudibleWidget;
    .locals 10

    .line 62
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 63
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 68
    :cond_0
    new-instance v0, Lcom/amazon/startactions/metrics/Metric;

    const-string v2, "StartActionsAudibleWidgetGet"

    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    const-string v2, "AudibleWidgetTimeout"

    .line 69
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v4, "AudibleWidgetFound"

    .line 70
    invoke-static {v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 75
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 76
    new-instance v5, Lcom/amazon/startactions/ui/widget/AudibleWidget$1;

    invoke-direct {v5, v0}, Lcom/amazon/startactions/ui/widget/AudibleWidget$1;-><init>(Lcom/amazon/startactions/metrics/Metric;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    const/4 v6, 0x1

    .line 90
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 91
    sget-object v7, Lcom/amazon/startactions/ui/widget/AudibleWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "retrieving custom widget from Audible with timeout."

    invoke-static {v7, v8}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v7, "AudibleWidgetTime"

    .line 93
    invoke-virtual {v0, v7}, Lcom/amazon/startactions/metrics/Metric;->startTimer(Ljava/lang/String;)V

    const-wide/16 v7, 0x64

    .line 94
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7, v8, v9}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    if-nez v5, :cond_3

    .line 97
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 98
    sget-object p0, Lcom/amazon/startactions/ui/widget/AudibleWidget;->TAG:Ljava/lang/String;

    const-string v4, "no Audible ICustomWidget found, invalidating widget."

    invoke-static {p0, v4}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 117
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-object v1

    .line 103
    :cond_3
    :try_start_1
    invoke-static {v4}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 104
    new-instance v4, Lcom/amazon/startactions/ui/widget/AudibleWidget;

    invoke-direct {v4, p0, v5}, Lcom/amazon/startactions/ui/widget/AudibleWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/AudibleWidgetDef;Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-virtual {v0}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 117
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-object v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 112
    :try_start_2
    sget-object v2, Lcom/amazon/startactions/ui/widget/AudibleWidget;->TAG:Ljava/lang/String;

    const-string v4, "exception occurred retrieving custom widget."

    invoke-static {v2, v4, p0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    invoke-virtual {v0}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 117
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-object v1

    :catch_1
    move-exception p0

    .line 107
    :try_start_3
    sget-object v4, Lcom/amazon/startactions/ui/widget/AudibleWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "timeout occurred retrieving custom widget."

    invoke-static {v4, v5, p0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    invoke-virtual {v0}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 117
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-object v1

    .line 116
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 117
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 118
    throw p0

    .line 64
    :cond_4
    :goto_1
    sget-object p0, Lcom/amazon/startactions/ui/widget/AudibleWidget;->TAG:Ljava/lang/String;

    const-string v0, "Suppressing Audible widget because current book is null or a dictionary"

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 132
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 133
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/AudibleWidget;->customWidget:Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "AudibleWidgetViewFound"

    const-string v3, "DisplayedAudible"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 137
    sget-object p2, Lcom/amazon/startactions/ui/widget/AudibleWidget;->TAG:Ljava/lang/String;

    const-string v1, "Audible ICustomWidget returned null view, displaying error."

    invoke-static {p2, v1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_simple_text:I

    invoke-virtual {p2, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 141
    sget p2, Lcom/amazon/kindle/ea/R$id;->simple_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 142
    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_audible_error_text:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 143
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/amazon/kindle/ea/R$color;->startactions_amazon_red:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 147
    invoke-static {v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 148
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v4}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    return-object p1

    .line 155
    :cond_0
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 156
    invoke-static {v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 157
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 159
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AudibleWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v2, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 161
    new-instance v0, Lcom/amazon/startactions/ui/widget/AudibleWidget$2;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/AudibleWidget$2;-><init>(Lcom/amazon/startactions/ui/widget/AudibleWidget;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    sget-object v0, Lcom/amazon/startactions/ui/widget/AudibleWidget;->TAG:Ljava/lang/String;

    const-string v2, "inflating audible widget view."

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "DisplayedAudibleWidget"

    .line 172
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    .line 175
    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_audible:I

    invoke-virtual {p2, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 176
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 0

    return-void
.end method
