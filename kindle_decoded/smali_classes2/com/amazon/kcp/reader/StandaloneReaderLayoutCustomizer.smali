.class public Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;
.super Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;
.source "StandaloneReaderLayoutCustomizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->onCreate(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 32
    new-instance p1, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer$1;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer$1;-><init>(Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->registerLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    return-void
.end method

.method public onReaderModeChanged(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p2

    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    .line 61
    :cond_2
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 63
    sget-object p2, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer$2;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p1, 0x0

    .line 69
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    const/4 p1, 0x4

    .line 65
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public onSelectionAreaChanged(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutAccessibleSelectionButtons()V

    return-void
.end method
