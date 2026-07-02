.class public Lcom/amazon/startactions/plugin/StartActionsController;
.super Ljava/lang/Object;
.source "StartActionsController.java"

# interfaces
.implements Lcom/amazon/readingactions/helpers/IChromeClickHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;,
        Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;,
        Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;,
        Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;,
        Lcom/amazon/startactions/plugin/StartActionsController$LocaleChangeReceiver;,
        Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;,
        Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;,
        Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;,
        Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;
    }
.end annotation


# static fields
.field private static final CONFIG_KEY_FIRST_READER_OPEN:Ljava/lang/String; = "first_reader_open"

.field private static final SA_ENDPOINT_FORMAT:Ljava/lang/String; = "https://sars.amazon.com/sidecar/sa/%s/%s"

.field private static final SA_HEADER_STATE:Ljava/lang/String; = "x-amzn-startactions-state"

.field private static final SA_LEFT_NAV_PRIORITY:I = 0x258

.field private static final SA_NLN_INFO_BUTTON_PRIORITY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.plugin.StartActionsController"

.field public static canRegisterStartActions:Z = false

.field public static canRegisterStartActionsCached:Z = false

.field private static didStartActionsPopThisReadingSession:Z = false

.field private static didTriggerStartActionsCustomTutorialHandler:Z = false

.field public static isEnabledFromSettings:Z = true

.field private static startActionsLauncherMetric:Lcom/amazon/startactions/metrics/Metric; = null

.field public static startActionsOpenedAutomatically:Z = false


# instance fields
.field private final appManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final context:Landroid/content/Context;

.field private final launcher:Lcom/amazon/startactions/plugin/StartActionsLauncher;

.field private final libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private overlayController:Lcom/amazon/startactions/ui/StartActionsOverlayController;

.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field private final readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

.field private final sidecarRetriever:Lcom/amazon/readingactions/helpers/ISidecarRetriever;

.field private startActionsCustomTutorialHandler:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;

.field private final tutorialManager:Lcom/amazon/kindle/krx/tutorial/ITutorialManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Lcom/amazon/kindle/krx/application/IApplicationManager;Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/amazon/kindle/krx/tutorial/ITutorialManager;Lcom/amazon/startactions/ui/StartActionsOverlayController;Lcom/amazon/startactions/plugin/StartActionsLauncher;Lcom/amazon/readingactions/helpers/ISidecarRetriever;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 215
    iput-object p2, p0, Lcom/amazon/startactions/plugin/StartActionsController;->context:Landroid/content/Context;

    .line 216
    iput-object p3, p0, Lcom/amazon/startactions/plugin/StartActionsController;->appManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 217
    iput-object p4, p0, Lcom/amazon/startactions/plugin/StartActionsController;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 218
    iput-object p5, p0, Lcom/amazon/startactions/plugin/StartActionsController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 219
    iput-object p6, p0, Lcom/amazon/startactions/plugin/StartActionsController;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 220
    iput-object p7, p0, Lcom/amazon/startactions/plugin/StartActionsController;->tutorialManager:Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    .line 221
    new-instance p1, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    invoke-direct {p1, p0}, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;)V

    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController;->settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    .line 222
    iput-object p8, p0, Lcom/amazon/startactions/plugin/StartActionsController;->overlayController:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    .line 223
    iput-object p9, p0, Lcom/amazon/startactions/plugin/StartActionsController;->launcher:Lcom/amazon/startactions/plugin/StartActionsLauncher;

    .line 224
    iput-object p10, p0, Lcom/amazon/startactions/plugin/StartActionsController;->sidecarRetriever:Lcom/amazon/readingactions/helpers/ISidecarRetriever;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/readingactions/helpers/ISidecarRetriever;)V
    .locals 11

    .line 189
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 190
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v3

    .line 191
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v4

    .line 192
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v5

    .line 193
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v6

    .line 194
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getTutorialManager()Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    move-result-object v7

    new-instance v9, Lcom/amazon/startactions/plugin/StartActionsLauncher;

    .line 196
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    const-class v8, Lcom/amazon/startactions/plugin/StartActionsController;

    invoke-interface {v1, v8}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    sget-object v8, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->INSTANCE:Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;

    invoke-direct {v9, p2, v0, v1, v8}, Lcom/amazon/startactions/plugin/StartActionsLauncher;-><init>(Lcom/amazon/readingactions/helpers/ISidecarRetriever;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;)V

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v10, p2

    .line 187
    invoke-direct/range {v0 .. v10}, Lcom/amazon/startactions/plugin/StartActionsController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Lcom/amazon/kindle/krx/application/IApplicationManager;Lcom/amazon/kindle/krx/library/ILibraryManager;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/amazon/kindle/krx/tutorial/ITutorialManager;Lcom/amazon/startactions/ui/StartActionsOverlayController;Lcom/amazon/startactions/plugin/StartActionsLauncher;Lcom/amazon/readingactions/helpers/ISidecarRetriever;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->overlayController:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/ui/StartActionsOverlayController;)Lcom/amazon/startactions/ui/StartActionsOverlayController;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amazon/startactions/plugin/StartActionsController;->overlayController:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    return-object p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 115
    sget-boolean v0, Lcom/amazon/startactions/plugin/StartActionsController;->didStartActionsPopThisReadingSession:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0

    .line 115
    sput-boolean p0, Lcom/amazon/startactions/plugin/StartActionsController;->didStartActionsPopThisReadingSession:Z

    return p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 115
    sget-boolean v0, Lcom/amazon/startactions/plugin/StartActionsController;->didTriggerStartActionsCustomTutorialHandler:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    .line 115
    sput-boolean p0, Lcom/amazon/startactions/plugin/StartActionsController;->didTriggerStartActionsCustomTutorialHandler:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/kindle/krx/reader/IReaderManager;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsCustomTutorialHandler:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController;->requestSidecar(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/amazon/startactions/plugin/StartActionsController;)Landroid/content/Context;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController;->recordFeatureAvailability(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/startactions/plugin/StartActionsController;)Lcom/amazon/kindle/krx/application/IApplicationManager;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->appManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    return-object p0
.end method

.method public static createLayout(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/startactions/ui/layout/Layout;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 682
    sget-object p0, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v1, "Given book is null; Cannot resolve a layout."

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 686
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/util/SidecarCacheManager;->getSidecar(Ljava/lang/String;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v1

    .line 689
    new-instance v2, Lcom/amazon/startactions/metrics/Metric;

    const-string v3, "StartActionsSidecarPresence"

    invoke-static {v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    const-string v3, "Asin"

    .line 690
    invoke-static {v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/startactions/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ContentType"

    .line 691
    invoke-static {v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/startactions/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SidecarFoundInCache"

    const/4 v4, 0x0

    const-string v5, "SidecarFound"

    const/4 v6, 0x1

    if-nez v1, :cond_4

    .line 693
    invoke-static {v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 694
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v3, "Could not find sidecar in cache - checking on disk."

    invoke-static {v1, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_1
    sget-object v1, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->START_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    invoke-static {p0, v1}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->parse(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v1

    if-nez v1, :cond_2

    .line 701
    sget-object v3, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v7, "No Sidecar found!"

    invoke-static {v3, v7}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-static {v5}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_0

    .line 705
    :cond_2
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 706
    sget-object v3, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v7, "Sidecar Found"

    invoke-static {v3, v7}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :cond_3
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/amazon/ea/util/SidecarCacheManager;->putSidecar(Ljava/lang/String;Lcom/amazon/ea/sidecar/def/Sidecar;)V

    .line 710
    invoke-static {v5}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_0

    .line 714
    :cond_4
    invoke-static {v5}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 715
    invoke-static {v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 719
    :goto_0
    invoke-virtual {v2}, Lcom/amazon/startactions/metrics/Metric;->close()V

    .line 722
    invoke-static {p0}, Lcom/amazon/startactions/ui/helpers/StartActionsBookSupport;->isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v2

    const-string v3, "]"

    if-nez v2, :cond_6

    .line 723
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 724
    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Given book is not supported. Will not resolve a layout. [contentType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", bookFormat="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", contentClass="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 724
    invoke-static {v1, p0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0

    .line 733
    :cond_6
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 734
    sget-object v2, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking cache for sidecar. [asin="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_7
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/startactions/metrics/SessionManager;->containsSessionMetric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 739
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 743
    :cond_8
    invoke-static {v1}, Lcom/amazon/startactions/ui/layout/LayoutResolver;->getLayout(Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object p0

    const-string v2, "DisplayedDefaultLayout"

    if-eqz v0, :cond_9

    .line 747
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    :cond_9
    if-nez p0, :cond_c

    .line 751
    sget-object p0, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v3, "No layout resolved from sidecar! Will attempt to create default StartActions Layout."

    invoke-static {p0, v3}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-static {}, Lcom/amazon/startactions/ui/layout/DefaultLayoutFactory;->tryCreateDefaultStartActionsLayout()Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object p0

    if-nez p0, :cond_a

    .line 754
    sget-object v3, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v5, "No default layout resolved.  Returning null layout."

    invoke-static {v3, v5}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v0, :cond_c

    .line 757
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p0, :cond_b

    const/4 v4, 0x1

    :cond_b
    invoke-virtual {v0, v2, v4}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    :cond_c
    if-eqz v0, :cond_e

    if-eqz v1, :cond_d

    const-string v2, "RefTagSuffix"

    .line 764
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/Sidecar;->commonData:Lcom/amazon/ea/sidecar/def/CommonData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/CommonData;->refTagSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/startactions/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz p0, :cond_e

    const-string v1, "LayoutTag"

    .line 767
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p0}, Lcom/amazon/startactions/ui/layout/Layout;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-object p0
.end method

.method public static didStartActionsOpenAutomatically()Z
    .locals 1

    .line 1256
    sget-boolean v0, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsOpenedAutomatically:Z

    return v0
.end method

.method private dismissStartActionsIfShowing()V
    .locals 3

    .line 908
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_1

    .line 910
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v1, "no current book found when attempting to dismiss start actions, ignoring."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 916
    :cond_1
    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController;->overlayController:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 922
    :cond_2
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 923
    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v2, "Hiding start actions overlay after navigation event"

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :cond_3
    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController;->overlayController:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->dismissOverlay(Ljava/lang/String;)V

    return-void

    .line 917
    :cond_4
    :goto_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 918
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v1, "Start Actions is not showing; ignoring dismiss requests."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static getStartActionsLauncherMetric()Lcom/amazon/startactions/metrics/Metric;
    .locals 1

    .line 778
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsLauncherMetric:Lcom/amazon/startactions/metrics/Metric;

    return-object v0
.end method

.method private initializeSessionMetrics(Lcom/amazon/startactions/metrics/Metric;)V
    .locals 2

    const-string v0, "DidAnything"

    .line 803
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "AllLayoutsRejected"

    .line 804
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedDefaultLayout"

    .line 805
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "ClosedThroughHeader"

    .line 806
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v0, "ClosedThroughTouchingOutside"

    .line 807
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v0, "ClosedThroughChromeShow"

    .line 808
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v0, "ClickedOpenLeftNavTeaser"

    .line 809
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v0, "ClickedOpenBookInfoButton"

    .line 810
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v0, "StartActionsDisabledFromReaderSettingsWidget"

    .line 811
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initCount(Ljava/lang/String;)V

    const-string v0, "DisplayedAudible"

    .line 814
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedAuthorBio"

    .line 815
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedAuthorTextList"

    .line 816
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedGoodreads"

    .line 817
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedBookDetails"

    .line 818
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedBookGridWidget"

    .line 819
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedMarkAsReading"

    .line 820
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedPositionInSeries"

    .line 821
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedReaderSettings"

    .line 822
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedSendFeedback"

    .line 823
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedShoveler"

    .line 824
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedSimpleText"

    .line 825
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedTimeToRead"

    .line 826
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedDynamicButton"

    .line 827
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedGoodreadsShelf"

    .line 828
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "IsGoodreadsUser"

    .line 831
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->isGrokAvailable()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v0, "FromDisk"

    .line 834
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    return-void
.end method

.method public static parseAndCacheSidecar(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/Sidecar;
    .locals 3

    .line 498
    sget-object v0, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->START_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/SidecarParser;->parse(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 501
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 502
    sget-object p0, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v0, "No Sidecar file parsed; nothing to pre-cache."

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 506
    :cond_1
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->genreMetadataProvider:Lcom/amazon/startactions/plugin/StartActionsGenreMetadataProvider;

    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/Sidecar;->commonData:Lcom/amazon/ea/sidecar/def/CommonData;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/CommonData;->fictionStatus:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/amazon/startactions/plugin/StartActionsGenreMetadataProvider;->registerFictionStatus(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    .line 509
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/amazon/ea/util/SidecarCacheManager;->putSidecar(Ljava/lang/String;Lcom/amazon/ea/sidecar/def/Sidecar;)V

    return-object v0
.end method

.method private recordCommonMetrics(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/metrics/Metric;)V
    .locals 2

    const-string v0, "Asin"

    .line 790
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ContentType"

    .line 791
    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/amazon/startactions/metrics/Metric;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "HasNetworkConnectivity"

    .line 792
    invoke-static {p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    return-void
.end method

.method private recordFeatureAvailability(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 6

    .line 934
    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/StartActionsBookSupport;->isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v2

    .line 935
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ea/util/SidecarCacheManager;->getSidecar(Ljava/lang/String;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string/jumbo p1, "startactions.config"

    const-string/jumbo v4, "server_state"

    .line 936
    invoke-static {p1, v4}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsState;->fromString(Ljava/lang/String;)Lcom/amazon/startactions/plugin/StartActionsState;

    move-result-object p1

    .line 938
    sget-object v4, Lcom/amazon/startactions/plugin/StartActionsState;->OFF:Lcom/amazon/startactions/plugin/StartActionsState;

    invoke-virtual {v4, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 939
    :goto_1
    invoke-static {}, Lcom/amazon/startactions/ui/layout/DefaultLayoutFactory;->defaultLayoutSupported()Z

    move-result v5

    .line 940
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "StartActions"

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordAuxContentAvailability(Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method private requestSidecar(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    if-nez p1, :cond_0

    .line 332
    sget-object p1, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v0, "Given book is null; cannot request a sidecar"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 337
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/util/BookUtil;->getFormattedContentType(Lcom/amazon/kindle/krx/content/ContentType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 338
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "https://sars.amazon.com/sidecar/sa/%s/%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {p0, v0, p1}, Lcom/amazon/startactions/plugin/StartActionsController;->downloadSidecar(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method


# virtual methods
.method public canDisplayChromeOption(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public canRegisterChromeClick(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;)Z
    .locals 2

    .line 546
    sget-object p1, Lcom/amazon/startactions/plugin/StartActionsController$3;->$SwitchMap$com$amazon$readingactions$helpers$IChromeClickHandler$ActionType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return p2

    :cond_0
    return v0

    .line 548
    :cond_1
    sget-boolean p1, Lcom/amazon/startactions/plugin/StartActionsController;->canRegisterStartActionsCached:Z

    if-eqz p1, :cond_2

    sget-boolean p2, Lcom/amazon/startactions/plugin/StartActionsController;->canRegisterStartActions:Z

    :cond_2
    return p2
.end method

.method public canRegisterStartActions(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 5

    const-string/jumbo v0, "startactions.config"

    const-string/jumbo v1, "server_state"

    .line 301
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/plugin/StartActionsState;->fromString(Ljava/lang/String;)Lcom/amazon/startactions/plugin/StartActionsState;

    move-result-object v0

    .line 305
    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsState;->ON:Lcom/amazon/startactions/plugin/StartActionsState;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "]"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsState;->SUPPRESSED:Lcom/amazon/startactions/plugin/StartActionsState;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    sget-object p1, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hiding Left Nav & Book Info button; invalid server state. [state="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 310
    :cond_0
    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/StartActionsBookSupport;->isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hiding left nav & Book Info button; book not supported [contentType="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", bookFormat="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", contentClass="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 316
    :cond_1
    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->createLayout(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object p1

    if-nez p1, :cond_2

    .line 317
    sget-object p1, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v0, "Hiding left nav & Book Info button; could not create a valid layout"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public downloadSidecar(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 12

    .line 354
    invoke-static {p2}, Lcom/amazon/startactions/ui/helpers/StartActionsBookSupport;->isSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    const-string v1, "]"

    if-nez v0, :cond_1

    .line 355
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 356
    sget-object p1, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given book is not supported. Will not download sidecar. [contentType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", bookFormat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getBookFormat()Lcom/amazon/kindle/krx/content/BookFormat;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", contentClass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 356
    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 364
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading sidecar. [bookId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_2
    sget-object v0, Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;->START_ACTIONS:Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;

    invoke-static {p2, v0}, Lcom/amazon/ea/util/SidecarFileUtil;->getSidecarName(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;)Ljava/lang/String;

    move-result-object v0

    .line 372
    new-instance v7, Lcom/amazon/startactions/metrics/Metric;

    const-string v1, "StartActionsSidecarDownload"

    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v7, v1}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p2, v7}, Lcom/amazon/startactions/plugin/StartActionsController;->recordCommonMetrics(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/metrics/Metric;)V

    const-string v1, "SidecarDownloadTime"

    .line 374
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/amazon/startactions/metrics/Metric;->startTimer(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 376
    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController;->appManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v8

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Lcom/amazon/startactions/plugin/StartActionsController$1;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/amazon/startactions/plugin/StartActionsController$1;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook;JLcom/amazon/startactions/metrics/Metric;)V

    move-object v1, v8

    move-object v2, v9

    move-object v3, p1

    move-object v4, v0

    move v5, v10

    move-object v6, v11

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->downloadSidecar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/krx/download/IKRXResponseHandler;)Ljava/lang/String;

    return-void
.end method

.method public handleChromeClick(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;)Z
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->appManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    if-ne p3, v0, :cond_0

    sget-object p3, Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;->OVERFLOW_MENU:Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

    if-ne p2, p3, :cond_0

    .line 529
    sget-object p2, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->OVERFLOW_MENU:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/startactions/plugin/StartActionsController;->launchStartActions(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public initialize()V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/startactions/plugin/StartActionsTodoEventHandler;

    iget-object v2, p0, Lcom/amazon/startactions/plugin/StartActionsController;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-direct {v1, p0, v2}, Lcom/amazon/startactions/plugin/StartActionsTodoEventHandler;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/kindle/krx/library/ILibraryManager;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->register(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V

    .line 231
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    new-instance v1, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/startactions/plugin/StartActionsController$ReaderNavigationListener;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/plugin/StartActionsController$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 232
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    new-instance v1, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;

    invoke-direct {v1, p0, v2}, Lcom/amazon/startactions/plugin/StartActionsController$ReaderActivityLifecycleListener;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/plugin/StartActionsController$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    .line 233
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    new-instance v1, Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;

    invoke-direct {v1, p0, v2}, Lcom/amazon/startactions/plugin/StartActionsController$LibraryListener;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/plugin/StartActionsController$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->registerLibraryEventListener(Lcom/amazon/kindle/krx/library/ILibraryEventListener;)V

    .line 234
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->appManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    new-instance v1, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;

    iget-object v3, p0, Lcom/amazon/startactions/plugin/StartActionsController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v1, v3, p0}, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/readingactions/helpers/IChromeClickHandler;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    new-instance v1, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;

    invoke-direct {v1}, Lcom/amazon/startactions/plugin/BookRecommendationsPanelContentProvider;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerPanelProvider(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V

    .line 240
    :goto_0
    new-instance v0, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;

    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-direct {v0, p0, v1}, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/kindle/krx/reader/IReaderManager;)V

    iput-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsCustomTutorialHandler:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;

    .line 241
    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController;->tutorialManager:Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/tutorial/ITutorialManager;->registerCustomTutorialHandler(Lcom/amazon/kindle/krx/tutorial/ICustomTutorialHandler;)V

    .line 244
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->appManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    new-instance v0, Lcom/amazon/startactions/provider/AboutThisBookWidgetItemProvider;

    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1, p0}, Lcom/amazon/startactions/provider/AboutThisBookWidgetItemProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/readingactions/helpers/IChromeClickHandler;)V

    .line 246
    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    goto :goto_1

    .line 249
    :cond_1
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v1, "Setting IPanelContentProvider for Start Actions. [priority=600]"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    new-instance v1, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;

    invoke-direct {v1, p0, v2}, Lcom/amazon/startactions/plugin/StartActionsController$LeftNavPanelLauncher;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/plugin/StartActionsController$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerPanelProvider(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    new-instance v1, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;

    invoke-direct {v1, p0, v2}, Lcom/amazon/startactions/plugin/StartActionsController$BookInfoButtonLauncher;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/plugin/StartActionsController$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerBookInfoButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 256
    const-class v0, Lcom/amazon/kindle/setting/item/ItemsProvider;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/amazon/discovery/Discoveries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/setting/item/ItemsProvider;

    .line 258
    instance-of v3, v1, Lcom/amazon/ea/AboutThisBookSettingItemProvider;

    if-eqz v3, :cond_2

    .line 259
    check-cast v1, Lcom/amazon/ea/AboutThisBookSettingItemProvider;

    iget-object v3, p0, Lcom/amazon/startactions/plugin/StartActionsController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v4, p0, Lcom/amazon/startactions/plugin/StartActionsController;->settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    invoke-virtual {v1, v3, v4}, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;)V

    goto :goto_2

    .line 266
    :cond_3
    sget-object v0, Lcom/amazon/ea/AboutThisBookAaSettingsProvider;->ProviderDelegate:Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;

    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v3, p0, Lcom/amazon/startactions/plugin/StartActionsController;->settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    invoke-virtual {v0, v1, v3}, Lcom/amazon/ea/AboutThisBookAaSettingsProvider$ProviderDelegate;->initializeDelegate(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;)V

    .line 268
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->setContext(Landroid/content/Context;)V

    .line 271
    invoke-static {}, Lcom/amazon/startactions/metrics/SessionManager;->closeSavedSessions()V

    .line 274
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->context:Landroid/content/Context;

    new-instance v1, Lcom/amazon/startactions/plugin/StartActionsController$LocaleChangeReceiver;

    invoke-direct {v1, p0, v2}, Lcom/amazon/startactions/plugin/StartActionsController$LocaleChangeReceiver;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/startactions/plugin/StartActionsController$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "server_state"

    const-string/jumbo v1, "startactions.config"

    .line 278
    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 281
    invoke-static {v2}, Lcom/amazon/startactions/plugin/StartActionsState;->fromString(Ljava/lang/String;)Lcom/amazon/startactions/plugin/StartActionsState;

    goto :goto_3

    .line 283
    :cond_4
    sget-object v2, Lcom/amazon/startactions/plugin/StartActionsState;->HIDDEN:Lcom/amazon/startactions/plugin/StartActionsState;

    .line 285
    invoke-virtual {v2}, Lcom/amazon/startactions/plugin/StartActionsState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {v1, v0, v2}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setStringPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_3
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    invoke-virtual {v0}, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->getControlForReader()Lcom/amazon/kindle/krx/settings/OnOffToggle;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/plugin/StartActionsController;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v2, p0, Lcom/amazon/startactions/plugin/StartActionsController;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/amazon/ea/util/AboutThisBookSettingUtil;->getAboutThisBookStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->setValue(Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    invoke-virtual {v0}, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->getControlForReader()Lcom/amazon/kindle/krx/settings/OnOffToggle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/amazon/startactions/plugin/StartActionsController;->isEnabledFromSettings:Z

    return-void
.end method

.method protected launchStartActions(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;)Z
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->launcher:Lcom/amazon/startactions/plugin/StartActionsLauncher;

    invoke-virtual {v0}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->isBottomSheetEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 570
    invoke-static {v0}, Lcom/amazon/readingactions/helpers/WeblabManager;->isGRAutoshelfEnabledInSABSE(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    iget-boolean v1, p2, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->userInitiated:Z

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsOpenedAutomatically:Z

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/plugin/StartActionsController;->launcher:Lcom/amazon/startactions/plugin/StartActionsLauncher;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/startactions/plugin/StartActionsLauncher;->launchStartActionsBottomSheet(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;)Z

    move-result p1

    return p1

    .line 576
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/startactions/plugin/StartActionsController;->launchStartActionsOverlay(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;)Z

    move-result p1

    return p1
.end method

.method protected launchStartActionsOverlay(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;)Z
    .locals 11

    .line 588
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getStartActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object v0

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchStartActions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->metricName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BeginLaunch"

    .line 590
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Success"

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 592
    sget-object p1, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string p2, "Current book is null; will not launch Start Actions."

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ExitEarlyBookIsNull"

    .line 593
    invoke-virtual {v0, v1, p1}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportBooleanMetric(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3

    .line 599
    :cond_0
    iget-object v4, p0, Lcom/amazon/startactions/plugin/StartActionsController;->overlayController:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 600
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 601
    sget-object v4, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v5, "Launching a Start Actions overlay, but there is already an old one showing.  Closing the old overlay."

    invoke-static {v4, v5}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v4, "HideOverlay"

    .line 604
    invoke-virtual {v0, v1, v4}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v4, p0, Lcom/amazon/startactions/plugin/StartActionsController;->overlayController:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    invoke-virtual {v4}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->hideOverlay()V

    .line 609
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object v4

    .line 610
    invoke-direct {p0, p1, v4}, Lcom/amazon/startactions/plugin/StartActionsController;->recordCommonMetrics(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/metrics/Metric;)V

    .line 611
    invoke-direct {p0, v4}, Lcom/amazon/startactions/plugin/StartActionsController;->initializeSessionMetrics(Lcom/amazon/startactions/metrics/Metric;)V

    .line 614
    sget-object v4, Lcom/amazon/startactions/plugin/StartActionsController$3;->$SwitchMap$com$amazon$startactions$plugin$StartActionsController$StartActionsEntryPoint:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v7, 0x2

    if-eq v4, v7, :cond_4

    if-eq v4, v5, :cond_3

    .line 633
    new-instance v4, Lcom/amazon/startactions/metrics/Metric;

    const-string v7, "UNKNOWN"

    invoke-static {v7}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v4, v7}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsLauncherMetric:Lcom/amazon/startactions/metrics/Metric;

    goto :goto_0

    .line 627
    :cond_3
    new-instance v4, Lcom/amazon/startactions/metrics/Metric;

    const-string v7, "StartActionsLoadTimeOnDisplayBookInfoButton"

    .line 628
    invoke-static {v7}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v4, v7}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsLauncherMetric:Lcom/amazon/startactions/metrics/Metric;

    .line 629
    sget-object v4, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    sget-object v7, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v4, v7}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;->emitMetric(Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_0

    .line 621
    :cond_4
    new-instance v4, Lcom/amazon/startactions/metrics/Metric;

    const-string v7, "StartActionsLoadTimeOnDisplayLeftNavTeaser"

    .line 622
    invoke-static {v7}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v4, v7}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsLauncherMetric:Lcom/amazon/startactions/metrics/Metric;

    .line 623
    sget-object v4, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    sget-object v7, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v4, v7}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;->emitMetric(Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_0

    .line 616
    :cond_5
    new-instance v4, Lcom/amazon/startactions/metrics/Metric;

    const-string v7, "StartActionsLoadTimeOnSRL"

    invoke-static {v7}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {v4, v7}, Lcom/amazon/startactions/metrics/Metric;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsLauncherMetric:Lcom/amazon/startactions/metrics/Metric;

    .line 617
    sget-object v4, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->START_ACTIONS:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    sget-object v7, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v4, v7}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;->emitMetric(Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ActionType;)V

    .line 635
    :goto_0
    iget-object v4, p2, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->metricName:Ljava/lang/String;

    sget-object v7, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->START_ACTIONS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    invoke-virtual {v7}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->ABOUT_THIS_BOOK:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;

    .line 636
    invoke-virtual {v8}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingActionContainer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 635
    invoke-static {v4, v7, v8}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->startContainerMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-boolean v4, p2, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->userInitiated:Z

    xor-int/2addr v4, v6

    sput-boolean v4, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsOpenedAutomatically:Z

    .line 638
    sget-object v4, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsLauncherMetric:Lcom/amazon/startactions/metrics/Metric;

    invoke-direct {p0, p1, v4}, Lcom/amazon/startactions/plugin/StartActionsController;->recordCommonMetrics(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/metrics/Metric;)V

    .line 639
    sget-object v4, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsLauncherMetric:Lcom/amazon/startactions/metrics/Metric;

    const-string v7, "LoadTime"

    invoke-static {v7}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/amazon/startactions/metrics/Metric;->startTimer(Ljava/lang/String;)V

    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 647
    :try_start_0
    new-instance v4, Lcom/amazon/startactions/ui/StartActionsOverlayController;

    iget-object v9, p0, Lcom/amazon/startactions/plugin/StartActionsController;->startActionsCustomTutorialHandler:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;

    invoke-direct {v4, p1, v9}, Lcom/amazon/startactions/ui/StartActionsOverlayController;-><init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/startactions/plugin/StartActionsController$StartActionsCustomTutorialHandler;)V

    iput-object v4, p0, Lcom/amazon/startactions/plugin/StartActionsController;->overlayController:Lcom/amazon/startactions/ui/StartActionsOverlayController;

    .line 648
    invoke-virtual {v4}, Lcom/amazon/startactions/ui/StartActionsOverlayController;->showOverlay()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 651
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start Actions cannot be initialized. CAUSE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 652
    sget-object v10, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    invoke-static {v10, v9, v4}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 653
    invoke-virtual {v0, v1, v9}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 656
    :goto_1
    invoke-virtual {v0, v1, v2, v4}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportBooleanMetric(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 658
    invoke-static {v5}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 659
    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->LEFT_NAVIGATION_BAR:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    if-eq p2, v1, :cond_6

    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->BOOK_INFO_BUTTON:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    if-ne p2, v1, :cond_7

    :cond_6
    const/4 v3, 0x1

    .line 661
    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "UserInitiated"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "SuccessfulLaunch"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_8

    .line 665
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "startactions.dismissed.books"

    invoke-static {p2, p1, v6}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "LaunchTime"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_8
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "StartActions"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return v4
.end method

.method public onAudibleStartActionsPlayClickedEvent(Lcom/amazon/kindle/krx/events/AudibleStartActionsPlayClickedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = false
    .end annotation

    .line 864
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 865
    sget-object p1, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v0, "audible widget play now event received"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_0
    invoke-direct {p0}, Lcom/amazon/startactions/plugin/StartActionsController;->dismissStartActionsIfShowing()V

    return-void
.end method

.method public onKRXClearTutorialHistoryEvent(Lcom/amazon/kindle/krx/events/KRXClearTutorialHistoryEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 878
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 879
    sget-object p1, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v0, "Clearing tutorial shared pref"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :cond_0
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "anyactions.autoshelving"

    .line 882
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "autoShelfEnabledSubtleJITCounter"

    .line 885
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoShelfEnabledSubtleJITSequence"

    .line 886
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoShelfDisabledSubtleJITCounter"

    .line 887
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoShelfDisabledSubtleJITSequence"

    .line 888
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "sensitiveBookSubtleJITCounter"

    .line 889
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "sensitiveBookSubtleJITSequence"

    .line 890
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "startActionsBlockingTutorialEnabled"

    .line 893
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "startActionsBlockingTutorialNoticedAsins"

    .line 894
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "endActionsTutorialEnabled"

    .line 895
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "startactions.dismissed.books"

    .line 898
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 900
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onSidecarDownload(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 456
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v1, "Received onSidecarDownload callback."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    new-instance v0, Lcom/amazon/startactions/plugin/StartActionsController$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/startactions/plugin/StartActionsController$2;-><init>(Lcom/amazon/startactions/plugin/StartActionsController;Lcom/amazon/kindle/krx/content/IBook;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 470
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 472
    invoke-static {p1}, Lcom/amazon/startactions/plugin/StartActionsController;->parseAndCacheSidecar(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object p1

    .line 475
    invoke-static {p1}, Lcom/amazon/startactions/ui/layout/LayoutResolver;->getLayout(Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/startactions/ui/layout/Layout;

    move-result-object p1

    if-nez p1, :cond_2

    .line 477
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 478
    sget-object p1, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v0, "No layout returned from handler; no data to load for caching."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 484
    :cond_2
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string v1, "Processed layout from handler; storing data."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_3
    invoke-interface {p1}, Lcom/amazon/startactions/ui/layout/Layout;->prepareData()V

    return-void
.end method

.method public onXrayNavigationEvent(Lcom/amazon/xray/plugin/event/XrayNavigationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = false
    .end annotation

    .line 849
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 850
    sget-object p1, Lcom/amazon/startactions/plugin/StartActionsController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "xray navigation event received"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_0
    invoke-direct {p0}, Lcom/amazon/startactions/plugin/StartActionsController;->dismissStartActionsIfShowing()V

    return-void
.end method
