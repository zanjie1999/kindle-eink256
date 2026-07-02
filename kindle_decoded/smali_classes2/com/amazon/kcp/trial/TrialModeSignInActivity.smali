.class public final Lcom/amazon/kcp/trial/TrialModeSignInActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "TrialModeSignInActivity.kt"


# instance fields
.field private signInHelper:Lcom/amazon/kcp/accounts/SignInHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method private final setTransparentTheme()V
    .locals 2

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 51
    sget v0, Lcom/amazon/kindle/thirdparty/R$style;->Theme_NoBackground:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0

    .line 53
    :cond_0
    sget v0, Lcom/amazon/kindle/thirdparty/R$style;->Theme_Transparent:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-static {p0}, Lcom/amazon/kcp/util/ActivityUtils;->ensureSafeWindowBackground(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    sget v0, Lcom/amazon/kindle/thirdparty/R$style;->Theme_TreeBoy_Ruby_Safe:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/trial/TrialModeSignInActivity;->setTransparentTheme()V

    .line 29
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance p1, Lcom/amazon/kcp/accounts/SignInHelper;

    invoke-direct {p1}, Lcom/amazon/kcp/accounts/SignInHelper;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/trial/TrialModeSignInActivity;->signInHelper:Lcom/amazon/kcp/accounts/SignInHelper;

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 34
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/trial/TrialModeSignInActivity;->signInHelper:Lcom/amazon/kcp/accounts/SignInHelper;

    const/4 v1, 0x0

    const-string v2, "signInHelper"

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/accounts/SignInHelper;->onResume(Lcom/amazon/kcp/redding/ReddingActivity;)V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    invoke-static {}, Lcom/amazon/kindle/map/MAPRegistrationManager;->getPageId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pageIdOverride"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v3, p0, Lcom/amazon/kcp/trial/TrialModeSignInActivity;->signInHelper:Lcom/amazon/kcp/accounts/SignInHelper;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p0, v0}, Lcom/amazon/kcp/accounts/SignInHelper;->showWebviewSignin(Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    .line 40
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
