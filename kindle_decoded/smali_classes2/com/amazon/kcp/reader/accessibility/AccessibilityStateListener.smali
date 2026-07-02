.class public Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;
.super Ljava/lang/Object;
.source "AccessibilityStateListener.java"


# static fields
.field private static final CHECK_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private volatile isTouchExplorationEnabled:Z

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private updateStateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 33
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->isTouchExplorationEnabled:Z

    .line 36
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener$1;-><init>(Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->updateStateRunnable:Ljava/lang/Runnable;

    .line 44
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->createAccessibilityManager()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get a hold of AccessibilityManager. Things might not respond properly to Accessibility mode changes"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener$2;-><init>(Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 58
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->updateAccessibilityState()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->updateStateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private createAccessibilityManager()Z
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_1

    .line 114
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "accessibility"

    .line 118
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 1

    .line 104
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    return-object v0
.end method

.method private updateAccessibilityState()V
    .locals 5

    .line 64
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v2

    .line 67
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 71
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->isTouchExplorationEnabled:Z

    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v4

    if-eq v4, v2, :cond_1

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accessibility state changed to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " closing the book, before the nln state was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " now it is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " closing the activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/reader/ReaderActivity;->gracefullyKillActivity(Z)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v2

    if-eq v2, v3, :cond_2

    .line 82
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setContinuousScrollEnabled(ZZ)V

    .line 85
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->hideOverlays()V

    goto :goto_1

    .line 86
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->isTouchExplorationEnabled:Z

    if-nez v0, :cond_3

    .line 87
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->TAG:Ljava/lang/String;

    const-string v2, "We got a change event, but the NLN mode didn\'t change"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v2, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v3, "AmazonKindle"

    const-string v4, "AccessibilityStateListener"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    const-string v2, "StateChangeWithoutNLNChange"

    .line 91
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 98
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/event/AccessibilityStateChangeEvent;

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->isTouchExplorationEnabled:Z

    invoke-direct {v1, v2}, Lcom/amazon/kindle/event/AccessibilityStateChangeEvent;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public isTouchExplorationEnabled()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->isTouchExplorationEnabled:Z

    return v0
.end method
