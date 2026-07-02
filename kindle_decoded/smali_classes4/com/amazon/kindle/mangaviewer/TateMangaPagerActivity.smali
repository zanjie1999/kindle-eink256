.class public Lcom/amazon/kindle/mangaviewer/TateMangaPagerActivity;
.super Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;
.source "TateMangaPagerActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/TateMangaPagerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializeEventHandlers()V
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaAdapter:Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;

    .line 17
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 18
    sget v1, Lcom/amazon/kindle/kmv/R$id;->manga_root_layout:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/MangaLayout;

    .line 19
    invoke-interface {v0}, Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;

    sget v4, Lcom/amazon/kindle/kmv/R$id;->manga_root_layout:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/mangaviewer/MangaLayout;

    invoke-direct {v3, v0, v4}, Lcom/amazon/kindle/mangaviewer/LinkEventHandler;-><init>(Lcom/amazon/android/docviewer/mobi/MangaDocViewer;Lcom/amazon/kindle/mangaviewer/MangaLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    :cond_0
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/modules/MangaViewerModule;->isManga(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;

    invoke-direct {v3, v1}, Lcom/amazon/kindle/mangaviewer/ZoomEventHandler;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 26
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;

    iget-object v4, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaViewPager:Lcom/amazon/kindle/mangaviewer/IMangaViewPager;

    invoke-direct {v3, v4, p0, v1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelHandler;-><init>(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;Landroid/content/Context;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 27
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/PanEventHandler;

    invoke-direct {v3, v1}, Lcom/amazon/kindle/mangaviewer/PanEventHandler;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/PageEventHandler;

    invoke-direct {v3, v1}, Lcom/amazon/kindle/mangaviewer/PageEventHandler;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    if-eqz v0, :cond_2

    .line 31
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v3, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;

    invoke-direct {v3, v1, v0}, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;-><init>(Lcom/amazon/kcp/reader/ui/BookLayout;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivity;->mangaListener:Lcom/amazon/kindle/mangaviewer/MangaTouchListener;

    new-instance v1, Lcom/amazon/kindle/mangaviewer/BoundarySwipeEventHandler;

    invoke-direct {v1}, Lcom/amazon/kindle/mangaviewer/BoundarySwipeEventHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/mangaviewer/MangaTouchListener;->addEventHandler(Lcom/amazon/kindle/mangaviewer/ITouchEventHandler;)Z

    goto :goto_0

    .line 35
    :cond_3
    sget-object v0, Lcom/amazon/kindle/mangaviewer/TateMangaPagerActivity;->TAG:Ljava/lang/String;

    const-string v1, "MangaTouchListener was null when attempting to initialize event handlers."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
