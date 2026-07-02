.class public interface abstract Lcom/amazon/kindle/mangaviewer/IMangaViewPager;
.super Ljava/lang/Object;
.source "IMangaViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;
    }
.end annotation


# static fields
.field public static final MANGA_VIEWMODE_CHANGED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v1, "MANGA_VIEWMODE_CHANGED_EVENT"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->MANGA_VIEWMODE_CHANGED_EVENT_TYPE:Lcom/amazon/kindle/event/EventType;

    return-void
.end method


# virtual methods
.method public abstract backwardOneItem()V
.end method

.method public abstract forwardOneItem()V
.end method

.method public abstract getAdapter()Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCurrentChild()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;
.end method

.method public abstract getCurrentImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;
.end method

.method public abstract getCurrentItem()I
.end method

.method public abstract getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;
.end method

.method public abstract getLeftImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;
.end method

.method public abstract getMangaSettingsController()Lcom/amazon/kindle/mangaviewer/MangaSettingsController;
.end method

.method public abstract getRightImageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;
.end method

.method public abstract getViewMode()Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;
.end method

.method public abstract getVirtualPanelGrid()Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;
.end method

.method public abstract getVirtualPanelTipCountLimit()I
.end method

.method public abstract handlePositionJump()V
.end method

.method public abstract isInAnimation()Z
.end method

.method public abstract isLeftSideTap(Landroid/view/MotionEvent;)Z
.end method

.method public abstract isRightSideTap(Landroid/view/MotionEvent;)Z
.end method

.method public abstract isScrollLocked()Z
.end method

.method public abstract isTopMarginTap(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onActivityConfigurationChanged(Landroid/content/res/Configuration;Lcom/amazon/android/docviewer/KindleDocViewer;)V
.end method

.method public abstract onActivityCreate(Lcom/amazon/android/docviewer/mobi/MangaDocViewer;)V
.end method

.method public abstract onActivityDestroy()V
.end method

.method public abstract onActivityModeChanged(Z)V
.end method

.method public abstract onActivitySizeChanged()V
.end method

.method public abstract onReaderControllerEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public abstract publishPageTurnAbortedEvent(Z)V
.end method

.method public abstract registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kindle/event/IEventHandler<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setAnimationFinished()V
.end method

.method public abstract setAnimationStarting(JZ)V
.end method

.method public abstract setBufferedEvent(Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;)V
.end method

.method public abstract setCurrentItem(I)V
.end method

.method public abstract setFocusableInTouchMode(Z)V
.end method

.method public abstract setMangaListener(Lcom/amazon/kindle/mangaviewer/MangaTouchListener;)V
.end method

.method public abstract setOnKeyListener(Landroid/view/View$OnKeyListener;)V
.end method

.method public abstract setViewMode(Lcom/amazon/kindle/mangaviewer/IMangaViewPager$ViewMode;)V
.end method
