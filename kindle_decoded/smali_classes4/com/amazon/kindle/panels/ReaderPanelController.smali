.class public Lcom/amazon/kindle/panels/ReaderPanelController;
.super Ljava/lang/Object;
.source "ReaderPanelController.java"

# interfaces
.implements Lcom/amazon/kindle/panels/IPanelController;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private activityToLayout:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Landroidx/drawerlayout/widget/DrawerLayout;",
            ">;"
        }
    .end annotation
.end field

.field private activityToListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/panels/PanelListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private customPanelItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/panels/IPanelCustomItem;",
            ">;"
        }
    .end annotation
.end field

.field private drawerGravity:I

.field private mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final onTOCPanelCloseRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

.field private tocPanelProviderRegistry:Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/factory/KindleObjectProviderRegistry<",
            "Lcom/amazon/kindle/panels/PanelProvider<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/amazon/kindle/panels/PanelProviderState;",
            ">;"
        }
    .end annotation
.end field

.field private tocPanelView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/kindle/panels/ReaderPanelController;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/panels/ReaderPanelController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->customPanelItemsList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->onTOCPanelCloseRunnables:Ljava/util/List;

    .line 51
    sget-object v0, Lcom/amazon/kindle/panels/PanelLocation;->LEFT:Lcom/amazon/kindle/panels/PanelLocation;

    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    const v0, 0x800003

    .line 52
    iput v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->drawerGravity:I

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->activityToLayout:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->activityToListeners:Ljava/util/Map;

    .line 57
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/panels/ReaderPanelController;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method public bindPanelContent(Lcom/amazon/kindle/panels/PanelProviderState;Lcom/amazon/kindle/panels/PanelLocation;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->tocPanelView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v1, Lcom/amazon/kindle/panels/ReaderPanelController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/panels/ReaderPanelController$1;-><init>(Lcom/amazon/kindle/panels/ReaderPanelController;Lcom/amazon/kindle/panels/PanelProviderState;Lcom/amazon/kindle/panels/PanelLocation;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    if-ne p2, v0, :cond_5

    .line 92
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->tocPanelProviderRegistry:Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;

    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/ReaderPanelController;->clearSidePanelLayout()V

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->tocPanelProviderRegistry:Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/panels/PanelProvider;

    .line 101
    iget-object v2, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->tocPanelView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 102
    invoke-virtual {v1}, Lcom/amazon/kindle/panels/PanelProvider;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/kindle/panels/PanelProvider;->getListener()Lcom/amazon/kindle/panels/PanelListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 107
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->activityToLayout:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/panels/PanelProviderState;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->activityToListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/panels/PanelProviderState;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return-void
.end method

.method public clearSidePanelLayout()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->tocPanelView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->tocPanelView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/amazon/kindle/panels/ReaderPanelController$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/panels/ReaderPanelController$2;-><init>(Lcom/amazon/kindle/panels/ReaderPanelController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->tocPanelView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public closePanel(Lcom/amazon/kindle/panels/PanelLocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/panels/ReaderPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;Ljava/lang/Runnable;)V

    return-void
.end method

.method public closePanel(Lcom/amazon/kindle/panels/PanelLocation;Ljava/lang/Runnable;)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/panels/ReaderPanelController;->setMainContentFromStackForActivity(Landroid/app/Activity;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_3

    .line 168
    iget-object v1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    if-ne p1, v1, :cond_3

    .line 169
    iget p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->drawerGravity:I

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    if-eqz p2, :cond_2

    .line 172
    iget-object v1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->onTOCPanelCloseRunnables:Ljava/util/List;

    monitor-enter v1

    if-nez p1, :cond_1

    const-wide/16 v2, 0x0

    .line 174
    :try_start_0
    invoke-virtual {v0, p2, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->onTOCPanelCloseRunnables:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 182
    iget p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->drawerGravity:I

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    :cond_3
    return-void
.end method

.method public closePanels()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    :cond_0
    return-void
.end method

.method public getLeftPanelProviderRegistry()Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/factory/KindleObjectProviderRegistry<",
            "Lcom/amazon/kindle/panels/PanelProvider<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/amazon/kindle/panels/PanelProviderState;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->tocPanelProviderRegistry:Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->tocPanelProviderRegistry:Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->tocPanelProviderRegistry:Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;

    return-object v0
.end method

.method public getSidePanelLayout()Landroid/view/View;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method

.method public isTOCPanelOpened()Z
    .locals 4

    .line 238
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->isTOCPanelSettling()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->drawerGravity:I

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public notifyListenersOfClosed()V
    .locals 2

    .line 267
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->activityToListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/panels/PanelListener;

    .line 269
    invoke-virtual {v1}, Lcom/amazon/kindle/panels/PanelListener;->onClosed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyListenersOfClosing()V
    .locals 2

    .line 257
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->activityToListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/panels/PanelListener;

    .line 259
    invoke-virtual {v1}, Lcom/amazon/kindle/panels/PanelListener;->onClosing()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyListenersOfOpened()V
    .locals 2

    .line 287
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->activityToListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/panels/PanelListener;

    .line 289
    invoke-virtual {v1}, Lcom/amazon/kindle/panels/PanelListener;->onOpened()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyListenersOfOpening()V
    .locals 2

    .line 277
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->activityToListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/panels/PanelListener;

    .line 279
    invoke-virtual {v1}, Lcom/amazon/kindle/panels/PanelListener;->onOpening()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanelClosed(Lcom/amazon/kindle/panels/PanelLocation;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    if-ne p1, v0, :cond_1

    .line 193
    iget-object p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->onTOCPanelCloseRunnables:Ljava/util/List;

    monitor-enter p1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->onTOCPanelCloseRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 195
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->onTOCPanelCloseRunnables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public openPanel(Lcom/amazon/kindle/panels/PanelLocation;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    if-ne p1, v1, :cond_1

    .line 229
    iget p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->drawerGravity:I

    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kcp/reader/TableOfContentsEvent;

    sget-object v1, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->OPENING:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/TableOfContentsEvent;-><init>(Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    iget v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->drawerGravity:I

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    :cond_1
    return-void
.end method

.method public release(Landroid/app/Activity;Lcom/amazon/kindle/panels/PanelLocation;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    if-ne p2, v0, :cond_0

    .line 121
    iget-object p2, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->activityToLayout:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->activityToLayout:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->activityToListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 125
    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 126
    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->tocPanelView:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public setMainContent(Landroid/view/View;)V
    .locals 1

    .line 61
    move-object v0, p1

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 62
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_left_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->tocPanelView:Landroid/view/ViewGroup;

    .line 63
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    sget-object p1, Lcom/amazon/kindle/panels/PanelLocation;->RIGHT:Lcom/amazon/kindle/panels/PanelLocation;

    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->panelLocation:Lcom/amazon/kindle/panels/PanelLocation;

    const/4 p1, 0x5

    .line 65
    iput p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->drawerGravity:I

    :cond_0
    return-void
.end method

.method public setMainContentFromStackForActivity(Landroid/app/Activity;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->activityToLayout:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_0

    .line 154
    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderPanelController;->mainContent:Landroidx/drawerlayout/widget/DrawerLayout;

    :cond_0
    return-void
.end method
