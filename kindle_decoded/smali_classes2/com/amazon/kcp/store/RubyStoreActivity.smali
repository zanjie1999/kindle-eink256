.class public Lcom/amazon/kcp/store/RubyStoreActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "RubyStoreActivity.java"


# static fields
.field private static final CONTEXT_STORE_MODAL:Ljava/lang/String; = "StoreModal"

.field private static final STORE_FRAGMENT_TAG:Ljava/lang/String; = "STORE_FRAGMENT_MODAL"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method private getStoreFragment()Lcom/amazon/kcp/store/StoreFragment;
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "STORE_FRAGMENT_MODAL"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/StoreFragment;

    return-object v0
.end method

.method private launchLandingActivityIfTaskRootAndFinish()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->finishAndShowLandingPage()V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected handleThemeChange()V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/amazon/kcp/store/RubyStoreActivity;->getStoreFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->clearWebviewCacheAndUpdateCookies()V

    .line 145
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->handleThemeChange()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/amazon/kcp/store/RubyStoreActivity;->getStoreFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/store/RubyStoreActivity;->launchLandingActivityIfTaskRootAndFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/amazon/kcp/store/R$layout;->fragment_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 32
    const-class v0, Lcom/amazon/kcp/store/StoreFragmentProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/StoreFragmentProvider;

    if-eqz v0, :cond_1

    .line 34
    invoke-interface {v0}, Lcom/amazon/kcp/store/StoreFragmentProvider;->getStoreFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/amazon/kcp/store/StoreFragment$Option;->MODAL:Lcom/amazon/kcp/store/StoreFragment$Option;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "StoreModal"

    invoke-static {v1, v2}, Lcom/amazon/kcp/store/StoreFragment;->generateArguments(Ljava/util/EnumSet;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 38
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 41
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v1, Lcom/amazon/kcp/store/R$id;->fragment_container:I

    const-string v2, "STORE_FRAGMENT_MODAL"

    .line 43
    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 44
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No implementation of StoreFragmentProvider was found, aborting"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/amazon/kcp/store/RubyStoreActivity;->getStoreFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->isLimitedWebViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/store/R$menu;->ruby_store_activity_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    .line 97
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 66
    invoke-direct {p0}, Lcom/amazon/kcp/store/RubyStoreActivity;->getStoreFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kcp/store/StoreFragment;->showStore()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 116
    invoke-direct {p0}, Lcom/amazon/kcp/store/RubyStoreActivity;->getStoreFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x102002c

    if-ne v3, v4, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->onNavigateUpPressed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 124
    invoke-direct {p0}, Lcom/amazon/kcp/store/RubyStoreActivity;->launchLandingActivityIfTaskRootAndFinish()V

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v3, Lcom/amazon/kcp/store/R$id;->store_activity_close:I

    if-ne v0, v3, :cond_2

    .line 127
    invoke-direct {p0}, Lcom/amazon/kcp/store/RubyStoreActivity;->launchLandingActivityIfTaskRootAndFinish()V

    goto :goto_0

    .line 128
    :cond_2
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method protected onPause()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    .line 59
    invoke-static {p0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;->deregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 53
    sget v0, Lcom/amazon/kcp/store/R$id;->modal_store_bottom_sheet_container:I

    invoke-static {p0, v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;->registerActivity(Landroidx/fragment/app/FragmentActivity;I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 105
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isRecreatedForThemeChange"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/amazon/kcp/store/RubyStoreActivity;->getStoreFragment()Lcom/amazon/kcp/store/StoreFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/store/StoreFragment;->saveStateForThemeChange(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
