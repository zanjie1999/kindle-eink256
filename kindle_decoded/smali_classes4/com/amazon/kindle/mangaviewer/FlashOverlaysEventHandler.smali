.class public final Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;
.super Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;
.source "FlashOverlaysEventHandler.java"


# instance fields
.field private m_layout:Lcom/amazon/kcp/reader/ui/BookLayout;

.field private navigationListener:Lcom/amazon/android/docviewer/KindleDocViewerEvents;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/BookLayout;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/SimpleTouchEventHandler;-><init>()V

    .line 18
    new-instance v0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1;-><init>(Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;)V

    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;->navigationListener:Lcom/amazon/android/docviewer/KindleDocViewerEvents;

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/BookLayout;

    .line 34
    invoke-virtual {p2, v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;)Lcom/amazon/kcp/reader/ui/BookLayout;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/BookLayout;

    return-object p0
.end method


# virtual methods
.method public singleTap(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/BookLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/BookLayout;->areOverlaysVisible()Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;->m_layout:Lcom/amazon/kcp/reader/ui/BookLayout;

    invoke-static {v0, p1, p2}, Lcom/amazon/android/util/UIUtils;->setReaderOverlaysVisiblity(Lcom/amazon/kcp/reader/ui/ReaderLayout;ZZ)V

    return p2
.end method
