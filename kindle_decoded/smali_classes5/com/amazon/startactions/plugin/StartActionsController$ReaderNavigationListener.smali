.class Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "StartActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/plugin/StartActionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderNavigationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/plugin/StartActionsController;


# direct methods
.method private constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/plugin/StartActionsController$1;)V
    .locals 0

    .line 947
    invoke-direct {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;)V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 1000
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->clearLocalState()V

    .line 1003
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "StartActionsActiveTime"

    .line 1005
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->stopTimer(Ljava/lang/String;)V

    .line 1008
    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->hideOverlay()V

    .line 1010
    :cond_0
    iget-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1002(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/ui/StartActionsOverlayController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;

    .line 1012
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getStartActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object p1

    .line 1014
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1100()Z

    move-result v0

    const-string v1, "BookClose"

    const-string v2, "StartActionsPopped"

    .line 1013
    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportBooleanMetric(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1016
    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1200()Z

    move-result v0

    const-string v2, "StartActionsCustomTutorialHandlerTriggered"

    .line 1015
    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportBooleanMetric(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 1018
    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1102(Z)Z

    .line 1019
    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$1202(Z)Z

    .line 1020
    sput-boolean p1, Lcom/amazon/startactions/plugin/StartActionsController;->canRegisterStartActionsCached:Z

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 6

    const-string v0, "first_reader_open"

    const-string/jumbo v1, "startactions.config"

    .line 952
    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 955
    invoke-static {v1, v0, v4}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 957
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 958
    invoke-static {v1, v0, v3}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 963
    :cond_1
    :goto_0
    new-instance v0, Lcom/amazon/startactions/metrics/Metric;

    const-string v2, "StartActionsBookOpen"

    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    const-string v2, "BookOpen"

    .line 964
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 965
    sget-object v2, Lcom/amazon/startactions/plugin/StartActionsState;->ON:Lcom/amazon/startactions/plugin/StartActionsState;

    const-string/jumbo v5, "server_state"

    invoke-static {v1, v5}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/startactions/plugin/StartActionsState;->fromString(Ljava/lang/String;)Lcom/amazon/startactions/plugin/StartActionsState;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "StartActionsDisabled"

    .line 968
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v2, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    xor-int/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 969
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    sget-boolean v2, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    const-string v4, "StartActions"

    const-string v5, "StartActionsEnabled"

    invoke-interface {v1, v4, v5, v2, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 973
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 976
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0, p1}, Lcom/amazon/startactions/plugin/StartActionsController;->access$700(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 978
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;->this$0:Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->access$900(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 979
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v0

    .line 980
    new-instance v1, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener$1;-><init>(Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->submit(Lcom/amazon/kindle/krx/application/IAsyncTask;)Ljava/util/concurrent/Future;

    :cond_3
    return-void
.end method
