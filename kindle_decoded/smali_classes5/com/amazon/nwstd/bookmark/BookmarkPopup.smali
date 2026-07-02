.class public abstract Lcom/amazon/nwstd/bookmark/BookmarkPopup;
.super Lcom/amazon/nwstd/ui/PopupWidget;
.source "BookmarkPopup.java"

# interfaces
.implements Lcom/amazon/nwstd/bookmark/IBookmarkListController;


# instance fields
.field private final mAddBookmarkCallback:Lcom/amazon/foundation/internal/IObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
            ">;"
        }
    .end annotation
.end field

.field protected mBookmarkClosedEventProvider:Lcom/amazon/foundation/internal/IntEventProvider;

.field protected mBookmarkListModel:Lcom/amazon/nwstd/bookmark/BookmarkListModel;

.field protected mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

.field private mBookmarkOpenedEventProvider:Lcom/amazon/foundation/internal/EventProvider;

.field private final mDeleteBookmarkCallback:Lcom/amazon/foundation/internal/IObjectCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/android/docviewer/bookmarks/IBookmark;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientationCallback:Lcom/amazon/foundation/IIntCallback;

.field private mOrientationChangeEvent:Lcom/amazon/foundation/IIntEventProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/ui/PopupWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p1, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {p1}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkOpenedEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    .line 63
    new-instance p1, Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-direct {p1}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkClosedEventProvider:Lcom/amazon/foundation/internal/IntEventProvider;

    .line 74
    new-instance p1, Lcom/amazon/nwstd/bookmark/BookmarkPopup$1;

    invoke-direct {p1, p0}, Lcom/amazon/nwstd/bookmark/BookmarkPopup$1;-><init>(Lcom/amazon/nwstd/bookmark/BookmarkPopup;)V

    iput-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mOrientationCallback:Lcom/amazon/foundation/IIntCallback;

    .line 84
    new-instance p1, Lcom/amazon/nwstd/bookmark/BookmarkPopup$2;

    invoke-direct {p1, p0}, Lcom/amazon/nwstd/bookmark/BookmarkPopup$2;-><init>(Lcom/amazon/nwstd/bookmark/BookmarkPopup;)V

    iput-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mAddBookmarkCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    .line 98
    new-instance p1, Lcom/amazon/nwstd/bookmark/BookmarkPopup$3;

    invoke-direct {p1, p0}, Lcom/amazon/nwstd/bookmark/BookmarkPopup$3;-><init>(Lcom/amazon/nwstd/bookmark/BookmarkPopup;)V

    iput-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mDeleteBookmarkCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    return-void
.end method

.method private updateCustomButtons()V
    .locals 1

    .line 217
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCustomActionMenuController()Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/amazon/android/menu/CustomActionMenuController;->updateButtons()V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mOrientationChangeEvent:Lcom/amazon/foundation/IIntEventProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    iget-object v2, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mOrientationCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v2}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 166
    iput-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mOrientationChangeEvent:Lcom/amazon/foundation/IIntEventProvider;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getAddedEvent()Lcom/amazon/foundation/internal/ObjectEventProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mAddBookmarkCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-virtual {v0, v2}, Lcom/amazon/foundation/internal/ObjectEventProvider;->unregister(Lcom/amazon/foundation/internal/IObjectCallback;)Z

    .line 171
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getDeletedEvent()Lcom/amazon/foundation/internal/ObjectEventProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mDeleteBookmarkCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-virtual {v0, v2}, Lcom/amazon/foundation/internal/ObjectEventProvider;->unregister(Lcom/amazon/foundation/internal/IObjectCallback;)Z

    .line 172
    iput-object v1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    :cond_1
    return-void
.end method

.method public getBookmarkListClosedEvent()Lcom/amazon/foundation/IIntEventProvider;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkClosedEventProvider:Lcom/amazon/foundation/internal/IntEventProvider;

    return-object v0
.end method

.method public getBookmarkListOpenedEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkOpenedEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public hide(Z)Z
    .locals 1

    .line 190
    invoke-super {p0, p1}, Lcom/amazon/nwstd/ui/PopupWidget;->hide(Z)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkClosedEventProvider:Lcom/amazon/foundation/internal/IntEventProvider;

    invoke-virtual {p1, v0}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 192
    invoke-direct {p0}, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->updateCustomButtons()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public initialize(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;Lcom/amazon/nwstd/docviewer/INewsstandNavigator;Lcom/amazon/nwstd/docviewer/IContentInformationProvider;Lcom/amazon/foundation/IIntEventProvider;)V
    .locals 2

    .line 123
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x10a0001

    invoke-static {p3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    .line 124
    new-instance v0, Lcom/amazon/nwstd/bookmark/BookmarkPopup$4;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/bookmark/BookmarkPopup$4;-><init>(Lcom/amazon/nwstd/bookmark/BookmarkPopup;)V

    invoke-virtual {p3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 139
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/ui/PopupWidget;->setPortraitModeOpenAnimation(Landroid/view/animation/Animation;)V

    .line 140
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/ui/PopupWidget;->setLandscapeModeOpenAnimation(Landroid/view/animation/Animation;)V

    .line 141
    invoke-virtual {p0, p3}, Lcom/amazon/nwstd/ui/PopupWidget;->setPortraitModeCloseAnimation(Landroid/view/animation/Animation;)V

    .line 142
    invoke-virtual {p0, p3}, Lcom/amazon/nwstd/ui/PopupWidget;->setLandscapeModeCloseAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iput-object p4, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mOrientationChangeEvent:Lcom/amazon/foundation/IIntEventProvider;

    .line 146
    iput-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    .line 151
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getAddedEvent()Lcom/amazon/foundation/internal/ObjectEventProvider;

    move-result-object p3

    iget-object p4, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mAddBookmarkCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-virtual {p3, p4}, Lcom/amazon/foundation/internal/ObjectEventProvider;->register(Lcom/amazon/foundation/internal/IObjectCallback;)Z

    .line 152
    iget-object p3, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getDeletedEvent()Lcom/amazon/foundation/internal/ObjectEventProvider;

    move-result-object p3

    iget-object p4, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mDeleteBookmarkCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    invoke-virtual {p3, p4}, Lcom/amazon/foundation/internal/ObjectEventProvider;->register(Lcom/amazon/foundation/internal/IObjectCallback;)Z

    .line 155
    new-instance p3, Lcom/amazon/nwstd/bookmark/BookmarkListModel;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p1, p2, p4}, Lcom/amazon/nwstd/bookmark/BookmarkListModel;-><init>(Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;Lcom/amazon/nwstd/docviewer/INewsstandNavigator;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkListModel:Lcom/amazon/nwstd/bookmark/BookmarkListModel;

    .line 157
    iget-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mOrientationChangeEvent:Lcom/amazon/foundation/IIntEventProvider;

    if-eqz p1, :cond_0

    .line 158
    iget-object p2, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mOrientationCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {p1, p2}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    :cond_0
    return-void
.end method

.method public isBookmarkListOpened()Z
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/amazon/nwstd/ui/PopupWidget;->isShown()Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkListModel:Lcom/amazon/nwstd/bookmark/BookmarkListModel;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/amazon/nwstd/bookmark/BookmarkListModel;->updateBookmarkableList()V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->updateLayout()V

    return-void
.end method

.method protected abstract scrollToTop()V
.end method

.method public abstract setBookmarkableListVisible(Z)V
.end method

.method public show(Z)Z
    .locals 2

    .line 178
    invoke-super {p0, p1}, Lcom/amazon/nwstd/ui/PopupWidget;->show(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->refresh()V

    .line 180
    invoke-virtual {p0}, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->scrollToTop()V

    .line 181
    iget-object p1, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkOpenedEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {p1}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 182
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/nwstd/bookmark/BookmarkPopup;->mBookmarkManager:Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/bookmarks/BookmarkManager;->getMetricsTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenPopupBookmark"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract updateBookmarkListView()V
.end method

.method protected abstract updateLayout()V
.end method
