.class public Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;
.super Ljava/lang/Object;
.source "SecondaryMenuManager.java"


# static fields
.field private static volatile instance:Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private secondaryToolbarMenu:Lcom/amazon/kindle/library/navigation/ISecondaryMenu;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createSecondaryMenu(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryViewChangedListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/LibraryContext;)Lcom/amazon/kindle/library/navigation/ISecondaryMenu;
    .locals 6

    .line 94
    sget-object v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager$1;->$SwitchMap$com$amazon$kindle$library$navigation$SecondaryMenuType:[I

    invoke-interface {p2}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getSecondaryMenuType()Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p2, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    .line 97
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;->isDownloadedFilterEnabled()Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;-><init>(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryViewChangedListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/LibraryContext;Z)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public static getInstance()Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;
    .locals 2

    .line 34
    sget-object v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->instance:Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->instance:Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;

    invoke-direct {v1}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;-><init>()V

    sput-object v1, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->instance:Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->instance:Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;

    return-object v0
.end method


# virtual methods
.method public getSecondaryToolbarMenu()Lcom/amazon/kindle/library/navigation/ISecondaryMenu;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->secondaryToolbarMenu:Lcom/amazon/kindle/library/navigation/ISecondaryMenu;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->secondaryToolbarMenu:Lcom/amazon/kindle/library/navigation/ISecondaryMenu;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Lcom/amazon/kindle/library/navigation/ISecondaryMenu;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setSecondaryMenuEnabled(Z)V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "secondary menu enabled - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->secondaryToolbarMenu:Lcom/amazon/kindle/library/navigation/ISecondaryMenu;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p1}, Lcom/amazon/kindle/library/navigation/ISecondaryMenu;->setSecondaryToolbarMenuEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setupSecondaryMenu(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Landroid/view/View;Landroid/view/Menu;Lcom/amazon/kcp/library/LibraryViewChangedListener;Landroid/view/ViewGroup;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/LibraryContext;)V
    .locals 6

    .line 58
    invoke-virtual {p0, p1, p2, p8, p6}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->shouldRecreateMenu(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryContext;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->secondaryToolbarMenu:Lcom/amazon/kindle/library/navigation/ISecondaryMenu;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p6, p4}, Lcom/amazon/kindle/library/navigation/ISecondaryMenu;->clearMenuOptions(Landroid/view/ViewGroup;Landroid/view/Menu;)V

    .line 62
    invoke-interface {v0}, Lcom/amazon/kindle/library/navigation/ISecondaryMenu;->onDestroy()V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p7

    move-object v5, p8

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->createSecondaryMenu(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryViewChangedListener;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/LibraryContext;)Lcom/amazon/kindle/library/navigation/ISecondaryMenu;

    move-result-object p5

    iput-object p5, p0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->secondaryToolbarMenu:Lcom/amazon/kindle/library/navigation/ISecondaryMenu;

    .line 67
    invoke-interface {p5, p6, p4}, Lcom/amazon/kindle/library/navigation/ISecondaryMenu;->createSecondaryToolbarMenu(Landroid/view/ViewGroup;Landroid/view/Menu;)V

    .line 70
    :cond_1
    iget-object p4, p0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->secondaryToolbarMenu:Lcom/amazon/kindle/library/navigation/ISecondaryMenu;

    if-eqz p4, :cond_2

    .line 72
    invoke-interface {p4}, Lcom/amazon/kindle/library/navigation/ISecondaryMenu;->getAttachedFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object p5

    if-eq p2, p5, :cond_2

    .line 73
    invoke-interface {p4, p2}, Lcom/amazon/kindle/library/navigation/ISecondaryMenu;->attachFragmentHandler(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V

    :cond_2
    const/4 p2, 0x0

    .line 75
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->activity:Landroid/app/Activity;

    return-void
.end method

.method shouldRecreateMenu(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryContext;Landroid/view/View;)Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->secondaryToolbarMenu:Lcom/amazon/kindle/library/navigation/ISecondaryMenu;

    .line 83
    iget-object v1, p0, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->activity:Landroid/app/Activity;

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0, p2, p3, p4}, Lcom/amazon/kindle/library/navigation/ISecondaryMenu;->shouldRecreate(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryContext;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
