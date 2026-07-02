.class public Lcom/amazon/bookwizard/ui/BookWizardWebActivity;
.super Landroid/app/Activity;
.source "BookWizardWebActivity.java"

# interfaces
.implements Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment$NetworkErrorListener;


# static fields
.field private static final PAGE_LOAD_TAG:Ljava/lang/String; = "bookwizard_loading"

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_TIMER:J


# instance fields
.field private container:Landroid/view/ViewGroup;

.field private final handler:Landroid/os/Handler;

.field private isForeground:Z

.field private spinner:Landroid/view/ViewGroup;

.field private webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    const-class v0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->TAG:Ljava/lang/String;

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->TIMEOUT_TIMER:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->isForeground:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/bookwizard/ui/BookWizardWebActivity;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->isForeground:Z

    return p0
.end method

.method private loadWebView()V
    .locals 4

    .line 87
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->isPageLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/webview/BookWizardWebView;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    sget-object v1, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->TAG:Ljava/lang/String;

    const-string v2, "loadWebView: refreshing"

    invoke-static {v1, v2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->refreshWebView()V

    goto :goto_0

    .line 92
    :cond_0
    sget-object v1, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadWebView: not refreshing -- loaded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->isPageLoaded()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; isLoading="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/webview/BookWizardWebView;->isLoading()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->updateVisibility()V

    return-void
.end method

.method private setWebViewVisible(Z)V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    .line 174
    :goto_0
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->spinner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v1, 0x4

    .line 177
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private startTimeoutTimer()V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startTimeoutTimer"

    invoke-static {v1, v2}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/amazon/bookwizard/ui/BookWizardWebActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity$1;-><init>(Lcom/amazon/bookwizard/ui/BookWizardWebActivity;Ljava/lang/String;)V

    sget-wide v3, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->TIMEOUT_TIMER:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public flashNextUpdate()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    sget v1, Lcom/amazon/bookwizard/R$id;->E3OS_GHOSTING_MODE:I

    sget v2, Lcom/amazon/bookwizard/R$string;->GHOSTING_FULL_SCREEN_FLASH_TRANSIENT:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 63
    :cond_0
    sget p1, Lcom/amazon/bookwizard/R$style;->Theme_E3OS_EInk_Material_Light:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 66
    sget v0, Lcom/amazon/bookwizard/R$layout;->bookwizard_web_activity:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 68
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Lcom/amazon/bookwizard/webview/WebViewManager;->setActivity(Lcom/amazon/bookwizard/ui/BookWizardWebActivity;)V

    .line 70
    invoke-virtual {v0, p0}, Lcom/amazon/bookwizard/webview/WebViewManager;->getWebView(Landroid/content/Context;)Lcom/amazon/bookwizard/webview/BookWizardWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    .line 71
    sget v0, Lcom/amazon/bookwizard/R$id;->loading_spinner:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->spinner:Landroid/view/ViewGroup;

    .line 72
    sget v0, Lcom/amazon/bookwizard/R$id;->web_view_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->container:Landroid/view/ViewGroup;

    .line 73
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "force_hide_nav"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->setWebViewVisible(Z)V

    return-void
.end method

.method public onExit(Ljava/lang/String;)V
    .locals 3

    .line 201
    sget-object v0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/webview/WebViewManager;->onExit()V

    return-void
.end method

.method public onPageLoaded()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "bookwizard_loading"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->updateVisibility()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->isForeground:Z

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hide_nav_for_component"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->updateVisibility()V

    .line 149
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->spinner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->startTimeoutTimer()V

    :cond_0
    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->isForeground:Z

    return-void
.end method

.method public onRetry(Ljava/lang/String;)V
    .locals 3

    .line 186
    sget-object v0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->isPageLoaded()Z

    move-result v0

    const-string v1, "bookwizard_loading"

    .line 188
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->updateVisibility()V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 192
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->startTimeoutTimer()V

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 105
    invoke-direct {p0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->loadWebView()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hide_nav_for_component_exit"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public showNetworkErrorDialog(Ljava/lang/String;)V
    .locals 2

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 241
    :cond_0
    new-instance v0, Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment;

    invoke-direct {v0}, Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment;-><init>()V

    invoke-virtual {v0, v1, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method

.method public updateVisibility()V
    .locals 1

    .line 219
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager;->getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->isPageLoaded()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->setWebViewVisible(Z)V

    return-void
.end method
