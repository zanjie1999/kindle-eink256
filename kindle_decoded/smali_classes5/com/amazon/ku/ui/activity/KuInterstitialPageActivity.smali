.class public Lcom/amazon/ku/ui/activity/KuInterstitialPageActivity;
.super Landroid/app/Activity;
.source "KuInterstitialPageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;

    invoke-direct {p1}, Lcom/amazon/ku/ui/fragment/KuInterstitialPageDialogFragment;-><init>()V

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 28
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 29
    invoke-static {}, Lcom/amazon/ku/KuInterstitialPageController;->getInstance()Lcom/amazon/ku/KuInterstitialPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ku/KuInterstitialPageController;->onActivityStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 35
    invoke-static {}, Lcom/amazon/ku/KuInterstitialPageController;->getInstance()Lcom/amazon/ku/KuInterstitialPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ku/KuInterstitialPageController;->onActivityStop()V

    return-void
.end method
