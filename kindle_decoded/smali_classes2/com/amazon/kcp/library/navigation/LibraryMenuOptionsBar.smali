.class public Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;
.super Ljava/lang/Object;
.source "LibraryMenuOptionsBar.java"


# instance fields
.field private final authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final libraryMenuContainer:Landroid/view/ViewGroup;

.field private final libraryMenuOptionsBar:Landroidx/appcompat/widget/ActionMenuView;

.field private final menuBottomDivider:Landroid/view/View;

.field private final viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Landroid/view/View;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->secondary_menu:I

    const/4 v1, 0x1

    .line 40
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->secondary_menu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iput-object p1, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->libraryMenuOptionsBar:Landroidx/appcompat/widget/ActionMenuView;

    .line 41
    iput-object p2, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->libraryMenuContainer:Landroid/view/ViewGroup;

    .line 42
    iput-object p3, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    .line 43
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 44
    iput-object p4, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->menuBottomDivider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getSecondaryMenu()Lcom/amazon/kindle/library/navigation/ISecondaryMenu;
    .locals 1

    .line 62
    invoke-static {}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->getInstance()Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->getSecondaryToolbarMenu()Lcom/amazon/kindle/library/navigation/ISecondaryMenu;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 114
    invoke-static {}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->getInstance()Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->onDestroy()V

    return-void
.end method

.method public refreshLayout()V
    .locals 1

    .line 107
    invoke-static {}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->getInstance()Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->getSecondaryToolbarMenu()Lcom/amazon/kindle/library/navigation/ISecondaryMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/amazon/kindle/library/navigation/ISecondaryMenu;->refreshLayout()V

    :cond_0
    return-void
.end method

.method public setLibraryMenuOptionsBarEnabled(Z)V
    .locals 1

    .line 100
    invoke-static {}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->getInstance()Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->setSecondaryMenuEnabled(Z)V

    return-void
.end method

.method setUpSecondaryMenu(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryViewChangedListener;Lcom/amazon/kcp/library/LibraryContext;)V
    .locals 9

    .line 94
    invoke-static {}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->getInstance()Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->libraryMenuOptionsBar:Landroidx/appcompat/widget/ActionMenuView;

    .line 95
    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v4

    iget-object v6, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->libraryMenuContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->viewOptionsModel:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v8, p4

    .line 94
    invoke-virtual/range {v0 .. v8}, Lcom/amazon/kindle/library/navigation/SecondaryMenuManager;->setupSecondaryMenu(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Landroid/view/View;Landroid/view/Menu;Lcom/amazon/kcp/library/LibraryViewChangedListener;Landroid/view/ViewGroup;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;Lcom/amazon/kcp/library/LibraryContext;)V

    return-void
.end method

.method public setupLibraryMenuOptionsToolbar(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryViewChangedListener;Lcom/amazon/kcp/library/LibraryContext;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->libraryMenuOptionsBar:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getSecondaryMenuType()Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;->None:Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    if-eq v0, v1, :cond_0

    .line 75
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->setUpSecondaryMenu(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/LibraryViewChangedListener;Lcom/amazon/kcp/library/LibraryContext;)V

    .line 76
    iget-object p1, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->libraryMenuContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->menuBottomDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->libraryMenuContainer:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/amazon/kcp/library/navigation/LibraryMenuOptionsBar;->menuBottomDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
