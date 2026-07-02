.class public Lcom/amazon/kcp/reader/ui/WordWiseSettingsActivity;
.super Lcom/amazon/kcp/redding/ThemeActivity;
.source "WordWiseSettingsActivity.java"


# static fields
.field protected static isShowingActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ThemeActivity;-><init>()V

    return-void
.end method

.method public static isShowingSettingsActivity()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsActivity;->isShowingActivity:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 23
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 28
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 29
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ww/R$bool;->should_show_home_logo_in_library_action_bar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 32
    :cond_0
    sget p1, Lcom/amazon/kindle/ww/R$layout;->wordwise_settings_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 34
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsActivity;->isShowingActivity:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/amazon/kcp/redding/ThemeActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsActivity;->isShowingActivity:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 41
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 45
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
