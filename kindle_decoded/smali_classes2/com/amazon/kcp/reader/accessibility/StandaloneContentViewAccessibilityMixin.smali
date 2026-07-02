.class public Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;
.super Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;
.source "StandaloneContentViewAccessibilityMixin.java"


# instance fields
.field private layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;->speak(Ljava/lang/String;)V

    return-void
.end method

.method private speak(Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public initializeForAccessibility(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;->initializeForAccessibility(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 23
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsTouchAccessibility()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p4, :cond_0

    .line 24
    iput-object p4, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;->layout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 28
    new-instance p1, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin$1;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin$1;-><init>(Lcom/amazon/kcp/reader/accessibility/StandaloneContentViewAccessibilityMixin;Landroid/content/Context;)V

    invoke-virtual {p4, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->registerLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    :cond_0
    return-void
.end method
