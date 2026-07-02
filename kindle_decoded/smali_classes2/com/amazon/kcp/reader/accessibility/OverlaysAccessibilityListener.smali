.class public Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;
.super Ljava/lang/Object;
.source "OverlaysAccessibilityListener.java"


# instance fields
.field protected context:Landroid/content/Context;

.field protected docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;->view:Landroid/view/View;

    .line 28
    iput-object p3, p0, Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 29
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onReaderLayoutEvent(Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;->view:Landroid/view/View;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getEventType()Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 42
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/krl/R$string;->speak_overlays_shown:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;->speak(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected speak(Ljava/lang/String;I)V
    .locals 2

    .line 47
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;->view:Landroid/view/View;

    invoke-virtual {v0, p1, v1, p2}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkbackDelayed(Ljava/lang/CharSequence;Landroid/view/View;I)V

    return-void
.end method
