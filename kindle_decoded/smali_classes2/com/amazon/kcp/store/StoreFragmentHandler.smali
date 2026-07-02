.class public Lcom/amazon/kcp/store/StoreFragmentHandler;
.super Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;
.source "StoreFragmentHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fragmentTag:Ljava/lang/String;

.field private final metricsContext:Ljava/lang/String;

.field private final options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kcp/store/StoreFragment$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/store/StoreFragmentHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/StoreFragmentHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kcp/store/StoreFragment$Option;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 40
    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragmentHandler;->fragmentTag:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/amazon/kcp/store/StoreFragmentHandler;->options:Ljava/util/EnumSet;

    .line 42
    iput-object p4, p0, Lcom/amazon/kcp/store/StoreFragmentHandler;->metricsContext:Ljava/lang/String;

    .line 43
    invoke-static {p5}, Lcom/amazon/kcp/store/StoreContext;->setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    return-void
.end method


# virtual methods
.method getFragment()Lcom/amazon/kcp/store/StoreFragment;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/StoreFragment;

    return-object v0
.end method

.method protected getFragmentTag()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragmentHandler;->fragmentTag:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 74
    const-class v0, Lcom/amazon/kcp/store/StoreFragmentProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/StoreFragmentProvider;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/amazon/kcp/store/StoreFragmentProvider;->getStoreFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No implementation of StoreFragmentProvider was found, aborting"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTab()Lcom/amazon/kindle/krx/library/LibraryView;
    .locals 1

    .line 102
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->STORE:Lcom/amazon/kindle/krx/library/LibraryView;

    return-object v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Fragment."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method public onDestroy(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->destroyFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 115
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/fragments/BaseLibraryFragmentHandler;->onDestroy(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public onReSelected()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->onTabReSelected()V

    :cond_0
    return-void
.end method

.method public show(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Fragment and Adding."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getStoreFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragmentHandler;->options:Ljava/util/EnumSet;

    iget-object v2, p0, Lcom/amazon/kcp/store/StoreFragmentHandler;->metricsContext:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kcp/store/StoreFragment;->generateArguments(Ljava/util/EnumSet;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 66
    invoke-static {v0}, Lcom/amazon/kcp/store/StoreContext;->setFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attaching "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Fragment."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :goto_0
    return-void
.end method
