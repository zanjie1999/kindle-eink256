.class public Lcom/amazon/android/menu/CustomActionMenuController;
.super Ljava/lang/Object;
.source "CustomActionMenuController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/android/menu/CustomActionMenuButton;",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/android/menu/CustomActionMenuButton;",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final chromeMenuButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/menu/CustomActionMenuButton;",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/MenuItem;",
            "Lcom/amazon/android/menu/CustomActionMenuButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/android/menu/CustomActionMenuController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/menu/CustomActionMenuController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/menu/CustomActionMenuController;->idMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/amazon/android/menu/CustomActionMenuController$1;

    invoke-direct {v1, p0}, Lcom/amazon/android/menu/CustomActionMenuController$1;-><init>(Lcom/amazon/android/menu/CustomActionMenuController;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amazon/android/menu/CustomActionMenuController;->chromeMenuButtons:Ljava/util/Map;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/amazon/android/menu/CustomActionMenuController;->actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    .line 70
    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private getReddingActivity()Lcom/amazon/kcp/redding/ReddingActivity;
    .locals 1

    .line 270
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/redding/ReddingActivity;

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/redding/ReddingActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/android/menu/CustomActionMenuButton;",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/amazon/android/menu/CustomActionMenuController;->actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "actionButtonProvider not set, maybe you forgot to call setActionButtonProviderRegistry?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addCustomButtonsAsMenuItems(Landroid/view/Menu;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V
    .locals 11

    const/4 v0, 0x1

    const-string v1, "CustomActionMenuController.addCustomButtonsAsMenuItems()"

    .line 133
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 134
    iget-object v2, p0, Lcom/amazon/android/menu/CustomActionMenuController;->idMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 135
    iget-object v2, p0, Lcom/amazon/android/menu/CustomActionMenuController;->chromeMenuButtons:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 136
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/menu/CustomActionMenuButton;

    .line 137
    invoke-interface {v3}, Lcom/amazon/android/menu/CustomActionMenuButton;->getName()Ljava/lang/String;

    move-result-object v5

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CustomActionMenuController.addCustomButtonsAsMenuItems#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "()"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 139
    invoke-interface {v3}, Lcom/amazon/android/menu/CustomActionMenuButton;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 141
    invoke-interface {v3}, Lcom/amazon/android/menu/CustomActionMenuButton;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 143
    :try_start_0
    invoke-interface {v3}, Lcom/amazon/android/menu/CustomActionMenuButton;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 145
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to add menu ID for action button "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/amazon/android/menu/CustomActionMenuButton;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v6, 0x0

    .line 149
    :goto_1
    invoke-interface {v3}, Lcom/amazon/android/menu/CustomActionMenuButton;->getPriority()I

    move-result v9

    invoke-interface {v3}, Lcom/amazon/android/menu/CustomActionMenuButton;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v4, v6, v9, v10}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 150
    invoke-interface {v3, p2}, Lcom/amazon/android/menu/CustomActionMenuButton;->getIconDrawable(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 151
    invoke-interface {v3}, Lcom/amazon/android/menu/CustomActionMenuButton;->isAvailable()Z

    move-result v9

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 152
    invoke-interface {v3}, Lcom/amazon/android/menu/CustomActionMenuButton;->showAsAction()I

    move-result v9

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 153
    iget-object v9, p0, Lcom/amazon/android/menu/CustomActionMenuController;->idMap:Ljava/util/Map;

    invoke-interface {v9, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 157
    :cond_2
    invoke-static {v1, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public getMenuItemById(Ljava/lang/String;)Landroid/view/MenuItem;
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/amazon/android/menu/CustomActionMenuController;->idMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/menu/CustomActionMenuButton;

    invoke-interface {v2}, Lcom/amazon/android/menu/CustomActionMenuButton;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onBookClose(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 278
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 279
    iget-object p1, p0, Lcom/amazon/android/menu/CustomActionMenuController;->idMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 280
    iget-object p1, p0, Lcom/amazon/android/menu/CustomActionMenuController;->chromeMenuButtons:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public onClickCustomButton(Landroid/view/MenuItem;)Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/android/menu/CustomActionMenuController;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/menu/CustomActionMenuButton;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/android/menu/CustomActionMenuButton;->handleOnClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public refreshCustomButtonsAsMenuItems(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V
    .locals 10

    const/4 v0, 0x1

    const-string v1, "CustomActionMenuController.refreshCustomButtonsAsMenuItems()"

    .line 167
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 168
    iget-object v2, p0, Lcom/amazon/android/menu/CustomActionMenuController;->idMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/menu/CustomActionMenuButton;

    .line 170
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 171
    invoke-interface {v5}, Lcom/amazon/android/menu/CustomActionMenuButton;->getName()Ljava/lang/String;

    move-result-object v6

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CustomActionMenuController.refreshCustomButtonsAsMenuItems#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "()"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 173
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 174
    invoke-interface {v5, p1}, Lcom/amazon/android/menu/CustomActionMenuButton;->getIconDrawable(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 175
    invoke-interface {v5}, Lcom/amazon/android/menu/CustomActionMenuButton;->isAvailable()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 176
    invoke-interface {v5}, Lcom/amazon/android/menu/CustomActionMenuButton;->showAsAction()I

    move-result v5

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {v1, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeAll()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/amazon/android/menu/CustomActionMenuController;->chromeMenuButtons:Ljava/util/Map;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/menu/CustomActionMenuController;->chromeMenuButtons:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 233
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setActionButtonProviderRegistry(Lcom/amazon/kindle/krx/providers/IProviderRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/android/menu/CustomActionMenuButton;",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/android/menu/CustomActionMenuButton;",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            ">;>;)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/amazon/android/menu/CustomActionMenuController;->actionButtonProviderRegistry:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-void
.end method

.method public updateButtons()V
    .locals 5

    .line 237
    invoke-direct {p0}, Lcom/amazon/android/menu/CustomActionMenuController;->getReddingActivity()Lcom/amazon/kcp/redding/ReddingActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->shouldUpdateCustomButtons()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/menu/CustomActionMenuController;->chromeMenuButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 245
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/menu/CustomActionMenuButton;

    if-eqz v2, :cond_1

    .line 249
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 250
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 251
    new-instance v4, Lcom/amazon/android/menu/CustomActionMenuController$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/amazon/android/menu/CustomActionMenuController$2;-><init>(Lcom/amazon/android/menu/CustomActionMenuController;Landroid/view/ViewGroup;Lcom/amazon/android/menu/CustomActionMenuButton;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 261
    :cond_2
    invoke-interface {v1}, Lcom/amazon/android/menu/CustomActionMenuButton;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 262
    invoke-interface {v1}, Lcom/amazon/android/menu/CustomActionMenuButton;->isActivated()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 263
    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
