.class public Lcom/amazon/krf/internal/NavigationControllerImpl;
.super Ljava/lang/Object;
.source "NavigationControllerImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/Navigable;
.implements Lcom/amazon/krf/platform/Disposable;


# static fields
.field public static final COVER_PAGE:I = 0x1

.field public static final FIRST_PAGE:I = 0x4

.field public static final LAST_PAGE:I = 0x5

.field public static final LOCATION:I = 0x6

.field public static final NEXT_PAGE:I = 0x2

.field public static final POSITION:I = 0x7

.field public static final POSITION_ASYNC:I = 0x8

.field public static final PREVIOUS_PAGE:I = 0x3

.field public static final START_READING_LOCATION:I = 0xa

.field public static final TABLE_OF_CONTENTS:I = 0x9


# instance fields
.field private mContext:Lcom/amazon/krf/internal/NativeObject;

.field private mNavListenerDelegate:Lcom/amazon/krf/internal/NavigationListenerDelegate;

.field private mPanZoomListenerDelegate:Lcom/amazon/krf/internal/PanZoomListenerDelegate;


# direct methods
.method constructor <init>(Lcom/amazon/krf/internal/ContentViewerImpl;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/amazon/krf/internal/NavigationListenerDelegate;

    invoke-direct {v0}, Lcom/amazon/krf/internal/NavigationListenerDelegate;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/internal/NavigationControllerImpl;->mNavListenerDelegate:Lcom/amazon/krf/internal/NavigationListenerDelegate;

    .line 12
    new-instance v0, Lcom/amazon/krf/internal/PanZoomListenerDelegate;

    invoke-direct {v0}, Lcom/amazon/krf/internal/PanZoomListenerDelegate;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/internal/NavigationControllerImpl;->mPanZoomListenerDelegate:Lcom/amazon/krf/internal/PanZoomListenerDelegate;

    .line 15
    iput-object p1, p0, Lcom/amazon/krf/internal/NavigationControllerImpl;->mContext:Lcom/amazon/krf/internal/NativeObject;

    .line 16
    invoke-virtual {p1}, Lcom/amazon/krf/internal/NativeObject;->getHandle()J

    move-result-wide v0

    iget-object p1, p0, Lcom/amazon/krf/internal/NavigationControllerImpl;->mNavListenerDelegate:Lcom/amazon/krf/internal/NavigationListenerDelegate;

    iget-object v2, p0, Lcom/amazon/krf/internal/NavigationControllerImpl;->mPanZoomListenerDelegate:Lcom/amazon/krf/internal/PanZoomListenerDelegate;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/amazon/krf/internal/NavigationControllerImpl;->attachListeners(JLcom/amazon/krf/platform/NavigationListener;Lcom/amazon/krf/platform/PanZoomListener;)V

    return-void
.end method

.method private native attachListeners(JLcom/amazon/krf/platform/NavigationListener;Lcom/amazon/krf/platform/PanZoomListener;)V
.end method

.method private doCanGotoNavigation(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doNative(IZ)Z

    move-result p1

    return p1
.end method

.method private doGotoNavigation(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doNative(IZ)Z

    move-result p1

    return p1
.end method

.method private doNative(IJ)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 144
    invoke-direct/range {v0 .. v6}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doNative(IJLcom/amazon/krf/platform/Position;ZZ)Z

    move-result p1

    return p1
.end method

.method private doNative(IJLcom/amazon/krf/platform/Position;ZZ)Z
    .locals 10

    move-object v9, p0

    .line 156
    iget-object v0, v9, Lcom/amazon/krf/internal/NavigationControllerImpl;->mContext:Lcom/amazon/krf/internal/NativeObject;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/NativeObject;->getHandle()J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/amazon/krf/internal/NavigationControllerImpl;->nativeGoto(JIJLcom/amazon/krf/platform/Position;ZZ)Z

    move-result v0

    return v0
.end method

.method private doNative(ILcom/amazon/krf/platform/Position;Z)Z
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v6, p3

    .line 148
    invoke-direct/range {v0 .. v6}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doNative(IJLcom/amazon/krf/platform/Position;ZZ)Z

    move-result p1

    return p1
.end method

.method private doNative(IZ)Z
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    .line 152
    invoke-direct/range {v0 .. v6}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doNative(IJLcom/amazon/krf/platform/Position;ZZ)Z

    move-result p1

    return p1
.end method

.method private native nativeGoto(JIJLcom/amazon/krf/platform/Position;ZZ)Z
.end method

.method private native nativeGotoPercent(JD)Z
.end method

.method private native nativeSetRubberbandingEnabled(JZ)Z
.end method


# virtual methods
.method public addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationControllerImpl;->mNavListenerDelegate:Lcom/amazon/krf/internal/NavigationListenerDelegate;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/NavigationListenerDelegate;->addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    move-result p1

    return p1
.end method

.method public addPanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationControllerImpl;->mPanZoomListenerDelegate:Lcom/amazon/krf/internal/PanZoomListenerDelegate;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/PanZoomListenerDelegate;->addPanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z

    move-result p1

    return p1
.end method

.method public canGoToCoverPage()Z
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doCanGotoNavigation(I)Z

    move-result v0

    return v0
.end method

.method public canGoToNextPage()Z
    .locals 1

    const/4 v0, 0x2

    .line 64
    invoke-direct {p0, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doCanGotoNavigation(I)Z

    move-result v0

    return v0
.end method

.method public canGoToPreviousPage()Z
    .locals 1

    const/4 v0, 0x3

    .line 74
    invoke-direct {p0, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doCanGotoNavigation(I)Z

    move-result v0

    return v0
.end method

.method public canGoToTableOfContentsPage()Z
    .locals 1

    const/16 v0, 0x9

    .line 89
    invoke-direct {p0, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doCanGotoNavigation(I)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/amazon/krf/internal/NavigationControllerImpl;->mContext:Lcom/amazon/krf/internal/NativeObject;

    return-void
.end method

.method public goToCoverPage()Z
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doGotoNavigation(I)Z

    move-result v0

    return v0
.end method

.method public goToFirstPage()Z
    .locals 1

    const/4 v0, 0x4

    .line 54
    invoke-direct {p0, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doGotoNavigation(I)Z

    move-result v0

    return v0
.end method

.method public goToLastPage()Z
    .locals 1

    const/4 v0, 0x5

    .line 59
    invoke-direct {p0, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doGotoNavigation(I)Z

    move-result v0

    return v0
.end method

.method public goToLocation(J)Z
    .locals 1

    const/4 v0, 0x6

    .line 94
    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doNative(IJ)Z

    move-result p1

    return p1
.end method

.method public goToNextPage()Z
    .locals 1

    const/4 v0, 0x2

    .line 69
    invoke-direct {p0, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doGotoNavigation(I)Z

    move-result v0

    return v0
.end method

.method public goToPercent(D)Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationControllerImpl;->mContext:Lcom/amazon/krf/internal/NativeObject;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/NativeObject;->getHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/amazon/krf/internal/NavigationControllerImpl;->nativeGotoPercent(JD)Z

    move-result p1

    return p1
.end method

.method public goToPosition(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->goToPosition(Lcom/amazon/krf/platform/Position;Z)Z

    move-result p1

    return p1
.end method

.method public goToPosition(Lcom/amazon/krf/platform/Position;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    :goto_0
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p2, p1, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doNative(ILcom/amazon/krf/platform/Position;Z)Z

    move-result p1

    return p1
.end method

.method public goToPositionAsync(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->goToPosition(Lcom/amazon/krf/platform/Position;Z)Z

    move-result p1

    return p1
.end method

.method public goToPositionOnLoad(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->goToPositionOnLoad(Lcom/amazon/krf/platform/Position;Z)Z

    move-result p1

    return p1
.end method

.method public goToPositionOnLoad(Lcom/amazon/krf/platform/Position;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    :goto_0
    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, p2, p1, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doNative(ILcom/amazon/krf/platform/Position;Z)Z

    move-result p1

    return p1
.end method

.method public goToPositionOnLoadAsync(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->goToPositionOnLoad(Lcom/amazon/krf/platform/Position;Z)Z

    move-result p1

    return p1
.end method

.method public goToPreviousPage()Z
    .locals 1

    const/4 v0, 0x3

    .line 79
    invoke-direct {p0, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doGotoNavigation(I)Z

    move-result v0

    return v0
.end method

.method public goToStartReadingPage()Z
    .locals 1

    const/16 v0, 0xa

    .line 49
    invoke-direct {p0, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doGotoNavigation(I)Z

    move-result v0

    return v0
.end method

.method public goToTableOfContentsPage()Z
    .locals 1

    const/16 v0, 0x9

    .line 44
    invoke-direct {p0, v0}, Lcom/amazon/krf/internal/NavigationControllerImpl;->doGotoNavigation(I)Z

    move-result v0

    return v0
.end method

.method public removeNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationControllerImpl;->mNavListenerDelegate:Lcom/amazon/krf/internal/NavigationListenerDelegate;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/NavigationListenerDelegate;->removeNavigaitonListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    move-result p1

    return p1
.end method

.method public removePanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationControllerImpl;->mPanZoomListenerDelegate:Lcom/amazon/krf/internal/PanZoomListenerDelegate;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/PanZoomListenerDelegate;->removePanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z

    move-result p1

    return p1
.end method

.method public setRubberbandingEnabled(Z)Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationControllerImpl;->mContext:Lcom/amazon/krf/internal/NativeObject;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/NativeObject;->getHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/krf/internal/NavigationControllerImpl;->nativeSetRubberbandingEnabled(JZ)Z

    move-result p1

    return p1
.end method
