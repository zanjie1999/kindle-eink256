.class public Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "AndroidBookReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AndroidBookReaderNavigationEventListener"
.end annotation


# instance fields
.field private bookCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private m_reader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 189
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;->bookCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;->m_reader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 224
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;->bookCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;->m_reader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 230
    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->access$202(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;Lcom/amazon/kindle/contentprovider/TtsBookBridge;)Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    .line 233
    :cond_1
    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;->m_reader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;->m_reader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    if-nez p1, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->access$100(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 202
    invoke-static {p1}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->access$100(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->access$300(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;I)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->isSpeaking()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->stop()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;->m_reader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    if-eqz p1, :cond_0

    .line 215
    invoke-static {p1}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->access$100(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method protected setActiveBookReader(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;->m_reader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    if-eq v0, p1, :cond_0

    .line 238
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;->m_reader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    .line 239
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;->bookCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    return-void
.end method
