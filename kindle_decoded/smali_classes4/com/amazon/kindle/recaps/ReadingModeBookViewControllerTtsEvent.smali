.class public final Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;
.super Ljava/lang/Object;
.source "ReadingModeBookViewControllerTtsEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final stateControl:Lcom/amazon/kindle/recaps/TtsStateControl;

.field private final ttsBookBridge:Lcom/amazon/kindle/contentprovider/TtsBookBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/recaps/TtsStateControl;Lcom/amazon/kindle/contentprovider/TtsBookBridge;)V
    .locals 1

    const-string v0, "stateControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ttsBookBridge"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;->stateControl:Lcom/amazon/kindle/recaps/TtsStateControl;

    iput-object p2, p0, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;->ttsBookBridge:Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    return-void
.end method


# virtual methods
.method public final getStateControl()Lcom/amazon/kindle/recaps/TtsStateControl;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;->stateControl:Lcom/amazon/kindle/recaps/TtsStateControl;

    return-object v0
.end method

.method public final getTtsBookBridge()Lcom/amazon/kindle/contentprovider/TtsBookBridge;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/recaps/ReadingModeBookViewControllerTtsEvent;->ttsBookBridge:Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
