.class public Lcom/amazon/klo/BaseFeedbackDialog;
.super Lcom/amazon/klo/ThemeActivity;
.source "BaseFeedbackDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/klo/ThemeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getThemeResourceId(Lcom/amazon/kindle/krx/theme/Theme;)I
    .locals 1

    .line 22
    invoke-static {}, Lcom/amazon/klo/KLOApp;->isNonLinearNavigationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p1, v0, :cond_0

    .line 26
    sget p1, Lcom/amazon/klo/R$style;->KLOTheme_Light_Dialog_Feedback:I

    return p1

    .line 29
    :cond_0
    sget p1, Lcom/amazon/klo/R$style;->KLOTheme_Dark_Dialog_Feedback:I

    return p1

    .line 34
    :cond_1
    sget p1, Lcom/amazon/klo/R$style;->KLOTheme_NonNLN_ActionBar:I

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Lcom/amazon/klo/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    iget-object p1, p0, Lcom/amazon/klo/ThemeActivity;->theme:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/BaseFeedbackDialog;->getThemeResourceId(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 16
    invoke-static {}, Lcom/amazon/klo/KLOApp;->getInstance()Lcom/amazon/klo/KLOApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/klo/KLOApp;->reportXrayOpened()V

    return-void
.end method
