.class public Lcom/amazon/klo/BaseKloActivity;
.super Lcom/amazon/klo/ThemeActivity;
.source "BaseKloActivity.java"


# instance fields
.field protected toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/klo/ThemeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getThemeResourceId(Lcom/amazon/kindle/krx/theme/Theme;)I
    .locals 1

    .line 55
    invoke-static {}, Lcom/amazon/klo/KLOApp;->isNonLinearNavigationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p1, v0, :cond_0

    .line 59
    sget p1, Lcom/amazon/klo/R$style;->KLOTheme_Light:I

    return p1

    .line 63
    :cond_0
    sget p1, Lcom/amazon/klo/R$style;->KLOTheme_Dark:I

    return p1

    .line 68
    :cond_1
    sget p1, Lcom/amazon/klo/R$style;->KLOTheme_NonNLN_ActionBar:I

    return p1
.end method

.method public getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/klo/BaseKloActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method protected initHeader()V
    .locals 1

    .line 40
    sget v0, Lcom/amazon/klo/R$id;->klo_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/amazon/klo/BaseKloActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/amazon/klo/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iget-object p1, p0, Lcom/amazon/klo/ThemeActivity;->theme:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/BaseKloActivity;->getThemeResourceId(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 20
    invoke-static {}, Lcom/amazon/klo/KLOApp;->getInstance()Lcom/amazon/klo/KLOApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/klo/KLOApp;->reportXrayOpened()V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 5

    .line 27
    new-instance v0, Lcom/amazon/klo/KLOAlertDialog;

    invoke-direct {v0, p0}, Lcom/amazon/klo/KLOAlertDialog;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/klo/R$string;->klo_search_unavailable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 31
    sget v2, Lcom/amazon/klo/R$string;->klo_ok:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 33
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return v1
.end method
