.class public Lcom/amazon/kcp/library/LibraryScreenlet;
.super Lcom/amazon/kindle/krx/ui/BaseScreenlet;
.source "LibraryScreenlet.java"


# static fields
.field private static final LIBRARY_FRAGMENT_TAG:Ljava/lang/String; = "libFragmentTag"


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    return-void
.end method

.method private getLibraryFragment()Lcom/amazon/kcp/library/LibraryFragment;
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "libFragmentTag"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryFragment;

    return-object v0
.end method

.method private hideLibraryFragment()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 142
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getLibraryFragment()Lcom/amazon/kcp/library/LibraryFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 146
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 147
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method static newInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/krx/ui/Screenlet;
    .locals 1

    .line 43
    new-instance v0, Lcom/amazon/kcp/library/LibraryScreenlet;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryScreenlet;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    return-object v0
.end method

.method static newIntent()Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 2

    .line 48
    new-instance v0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    sget-object v1, Lcom/amazon/kcp/library/LibraryScreenletType;->INSTANCE:Lcom/amazon/kcp/library/LibraryScreenletType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletType;)V

    return-object v0
.end method

.method public static newIntent(Landroid/os/Bundle;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;
    .locals 2

    .line 53
    new-instance v0, Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    sget-object v1, Lcom/amazon/kcp/library/LibraryScreenletType;->INSTANCE:Lcom/amazon/kcp/library/LibraryScreenletType;

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/krx/ui/ScreenletIntent;-><init>(Lcom/amazon/kindle/krx/ui/ScreenletType;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showLibraryFragment()V
    .locals 4

    .line 125
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 127
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getLibraryFragment()Lcom/amazon/kcp/library/LibraryFragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryScreenlet;->createLibraryFragment(Landroid/app/Activity;)Lcom/amazon/kcp/library/LibraryFragment;

    move-result-object v2

    .line 131
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->library_screenlet_root:I

    const-string v3, "libFragmentTag"

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/library/LibraryFragment;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    .line 136
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 137
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method


# virtual methods
.method protected createLibraryFragment(Landroid/app/Activity;)Lcom/amazon/kcp/library/LibraryFragment;
    .locals 1

    .line 121
    const-class v0, Lcom/amazon/kcp/library/LibraryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/LibraryFragment;

    return-object p1
.end method

.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenlet;->getContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 164
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getStatusForMetrics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getLibraryFragment()Lcom/amazon/kcp/library/LibraryFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFragment;->getStatusForMetrics()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    const-class v0, Lcom/amazon/kcp/library/LibraryScreenlet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivate()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->showLibraryFragment()V

    .line 75
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getLibraryFragment()Lcom/amazon/kcp/library/LibraryFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFragment;->onActivate()V

    goto :goto_0

    .line 79
    :cond_0
    const-class v0, Lcom/amazon/kcp/library/LibraryScreenlet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 59
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->library_screenlet_root:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDeactivate()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->hideLibraryFragment()V

    .line 86
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getLibraryFragment()Lcom/amazon/kcp/library/LibraryFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFragment;->onDeactivate()V

    goto :goto_0

    .line 90
    :cond_0
    const-class v0, Lcom/amazon/kcp/library/LibraryScreenlet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getLibraryFragment()Lcom/amazon/kcp/library/LibraryFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFragment;->onScreenletDestroyed()V

    goto :goto_0

    .line 68
    :cond_0
    const-class v0, Lcom/amazon/kcp/library/LibraryScreenlet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onNewIntent(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getLibraryFragment()Lcom/amazon/kcp/library/LibraryFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryFragment;->onNewScreenletIntent(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V

    goto :goto_0

    .line 100
    :cond_0
    const-class p1, Lcom/amazon/kcp/library/LibraryScreenlet;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReset(Lcom/amazon/kindle/krx/ui/ScreenletReason;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryScreenlet;->getLibraryFragment()Lcom/amazon/kcp/library/LibraryFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFragment;->onReset()V

    goto :goto_0

    .line 110
    :cond_0
    const-class p1, Lcom/amazon/kcp/library/LibraryScreenlet;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
