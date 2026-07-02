.class public Lcom/amazon/mlpassistlibrary/GuideActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "GuideActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MLPAssist-GuideActivity"

.field private static final TOAST_GRAVITY:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0}, Lcom/amazon/mlpassistlibrary/UnknownSourcesHelper;->isUnknownSourcesChecked(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    invoke-static {p0}, Lcom/amazon/mlpassistlibrary/UnknownSourcesHelper;->stopPolling(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lcom/amazon/mlpassistlibrary/GuideActivity;->startInstallGuide()V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/mlpassistlibrary/GuideActivity;->startUnknownSourcesGuide()V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 99
    invoke-static {p0}, Lcom/amazon/mlpassistlibrary/UnknownSourcesHelper;->setTimeoutAlarm(Landroid/content/Context;)V

    .line 100
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public startInstallGuide()V
    .locals 5

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    sget v1, Lcom/amazon/kindle/R$layout;->toast:I

    sget v2, Lcom/amazon/kindle/R$id;->toast_layout_root:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    sget v1, Lcom/amazon/kindle/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    sget v2, Lcom/amazon/kindle/R$string;->mlp_assist_downloads_toast:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 58
    new-instance v1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x50

    const/4 v3, 0x0

    const/16 v4, 0x32

    .line 59
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v2, 0x1

    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 61
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 62
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public startUnknownSourcesGuide()V
    .locals 5

    .line 74
    invoke-static {p0}, Lcom/amazon/mlpassistlibrary/UnknownSourcesHelper;->startPolling(Landroid/content/Context;)V

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const/high16 v1, 0x4000000

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 84
    sget v1, Lcom/amazon/kindle/R$layout;->toast:I

    sget v2, Lcom/amazon/kindle/R$id;->toast_layout_root:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    sget v1, Lcom/amazon/kindle/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    sget v2, Lcom/amazon/kindle/R$string;->mlp_assist_unknown_sources_toast:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 88
    new-instance v1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x50

    const/4 v3, 0x0

    const/16 v4, 0x32

    .line 89
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v2, 0x1

    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 92
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
