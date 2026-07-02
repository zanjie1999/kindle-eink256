.class public Lcom/amazon/kcp/reader/accessibility/StandaloneKindleAccessibilityDelegate;
.super Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;
.source "StandaloneKindleAccessibilityDelegate.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kcp/reader/accessibility/StandaloneKindleAccessibilityDelegate;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/StandaloneKindleAccessibilityDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;-><init>(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    return-void
.end method


# virtual methods
.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 23
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-eq v0, v1, :cond_0

    .line 31
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/StandaloneKindleAccessibilityDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for reading activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    .line 27
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->stopContinuousReading()Z

    .line 33
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
