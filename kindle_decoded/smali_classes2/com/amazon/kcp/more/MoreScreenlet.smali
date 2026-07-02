.class public final Lcom/amazon/kcp/more/MoreScreenlet;
.super Lcom/amazon/kindle/krx/ui/BaseScreenlet;
.source "MoreScreenlet.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;


# instance fields
.field fragmentHandler:Lcom/amazon/kcp/more/MoreFragmentHandler;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    .line 28
    new-instance v0, Lcom/amazon/kcp/more/MoreFragmentHandler;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, p1, p0}, Lcom/amazon/kcp/more/MoreFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    iput-object v0, p0, Lcom/amazon/kcp/more/MoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/more/MoreFragmentHandler;

    return-void
.end method

.method static newInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/krx/ui/Screenlet;
    .locals 1

    .line 38
    new-instance v0, Lcom/amazon/kcp/more/MoreScreenlet;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/more/MoreScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    return-object v0
.end method

.method static newIntent()Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 2

    .line 43
    new-instance v0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    sget-object v1, Lcom/amazon/kcp/more/MoreScreenletType;->INSTANCE:Lcom/amazon/kcp/more/MoreScreenletType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletType;)V

    return-object v0
.end method


# virtual methods
.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 92
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    return-object v0
.end method

.method public onActivate()V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/amazon/kcp/more/MoreScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/amazon/kcp/more/MoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/more/MoreFragmentHandler;

    sget v2, Lcom/amazon/kcp/more/R$id;->more_screenlet_root:I

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/more/MoreFragmentHandler;->show(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 56
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 57
    invoke-virtual {p0}, Lcom/amazon/kcp/more/MoreScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 49
    sget v0, Lcom/amazon/kcp/more/R$layout;->more_screenlet:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDeactivate()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/amazon/kcp/more/MoreScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/amazon/kcp/more/MoreScreenlet;->fragmentHandler:Lcom/amazon/kcp/more/MoreFragmentHandler;

    sget v2, Lcom/amazon/kcp/more/R$id;->more_screenlet_root:I

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/more/MoreFragmentHandler;->hide(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 64
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kcp/more/MoreScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public onReset(Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 0

    return-void
.end method

.method public setLibraryMenuOptionsBarEnabled(Z)V
    .locals 0

    return-void
.end method

.method public showGroupItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 0

    return-void
.end method
