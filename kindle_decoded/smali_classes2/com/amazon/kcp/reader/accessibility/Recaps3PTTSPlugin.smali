.class public final Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin;
.super Ljava/lang/Object;
.source "Recaps3PTTSPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->bookopen_before:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    minApi = 0x11
    name = "Recaps3PTTSPlugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin$Companion;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

.field private recapsAndroidBookReader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    const-class v0, Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(Recaps3PTTSPlugin::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 29
    const-class p1, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin;->bookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    .line 30
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public final onReadingModeBookViewControllerEvent(Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;->getStateControl()Lcom/amazon/kindle/recaps/TtsStateControl;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/recaps/TtsStateControl;->INIT_TTS:Lcom/amazon/kindle/recaps/TtsStateControl;

    if-ne v0, v1, :cond_1

    .line 40
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;->getTtsBookBridge()Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;-><init>(Lcom/amazon/kindle/contentprovider/TtsBookBridge;Z)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin;->recapsAndroidBookReader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    .line 41
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin;->bookViewController:Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->getTTSNavigationListener()Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/recaps/controller/ReadingModeBookViewController;->setTTSReaderNavigationListener(Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;)V

    goto :goto_0

    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;->getStateControl()Lcom/amazon/kindle/recaps/TtsStateControl;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/recaps/TtsStateControl;->START_TTS:Lcom/amazon/kindle/recaps/TtsStateControl;

    if-ne v0, v1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin;->recapsAndroidBookReader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->startSpeaking()V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;->getStateControl()Lcom/amazon/kindle/recaps/TtsStateControl;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/recaps/TtsStateControl;->STOP_TTS:Lcom/amazon/kindle/recaps/TtsStateControl;

    if-ne p1, v0, :cond_3

    .line 45
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/Recaps3PTTSPlugin;->recapsAndroidBookReader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->stop()V

    :cond_3
    :goto_0
    return-void
.end method
