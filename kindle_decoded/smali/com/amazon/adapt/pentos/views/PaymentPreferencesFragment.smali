.class public Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;
.super Landroidx/fragment/app/Fragment;
.source "PaymentPreferencesFragment.java"


# static fields
.field private static final DEVICE_TYPE_KEY:Ljava/lang/String; = "DEVICE_TYPE"

.field private static final LOGGER:Lcom/amazon/adapt/mpp/logging/Logger;

.field private static final METRIC_FRAGMENT_LOADED:Ljava/lang/String; = "FragmentLoaded"

.field private static final PFM_DOMAIN_KEY:Ljava/lang/String; = "PFM_DOMAIN"


# instance fields
.field private metrics:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

.field private widgetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;

    invoke-static {v0}, Lcom/amazon/adapt/mpp/logging/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/amazon/adapt/mpp/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;->LOGGER:Lcom/amazon/adapt/mpp/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;
    .locals 3

    .line 29
    new-instance v0, Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;

    invoke-direct {v0}, Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;-><init>()V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DEVICE_TYPE"

    .line 32
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "PFM_DOMAIN"

    .line 33
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method getUpdatePaymentSettingsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "https://www.%s/mn/dcw/myx/settings.html?route=updatePaymentSettings#/updatePaymentSettings"

    .line 80
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "DEVICE_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 43
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->getInstance()Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;->metrics:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 51
    sget p3, Lcom/amazon/kcp/more/R$layout;->payment_preferences_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;->widgetView:Landroid/view/View;

    .line 52
    sget p2, Lcom/amazon/kcp/more/R$id;->payment_preferences_webview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    .line 53
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    new-instance p2, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/amazon/adapt/pentos/auth/PentosWebViewHelper;-><init>(Landroid/app/Activity;)V

    .line 56
    new-instance v1, Lcom/amazon/adapt/pentos/webkit/MAPMetricsWebViewClient;

    invoke-direct {v1, p2}, Lcom/amazon/adapt/pentos/webkit/MAPMetricsWebViewClient;-><init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;)V

    .line 57
    new-instance p2, Lcom/amazon/securewebviewclient/SecureWebViewClient;

    invoke-direct {p2, v1}, Lcom/amazon/securewebviewclient/SecureWebViewClient;-><init>(Landroid/webkit/WebViewClient;)V

    .line 58
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "PFM_DOMAIN"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 62
    :goto_0
    invoke-virtual {p0, p2}, Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;->getUpdatePaymentSettingsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 65
    sget-object p1, Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;->LOGGER:Lcom/amazon/adapt/mpp/logging/Logger;

    const-string p2, "Fragment loaded"

    invoke-interface {p1, p2}, Lcom/amazon/adapt/mpp/logging/Logger;->info(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;->metrics:Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;

    sget-object p2, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    const-string v0, "FragmentLoaded"

    invoke-virtual {p1, v0, p3, p2}, Lcom/amazon/kcp/store/adapter/ADAPTAmazonClientMetricsAdapter;->incrementCounter(Ljava/lang/String;ILcom/amazon/client/metrics/common/Priority;)V

    .line 67
    iget-object p1, p0, Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;->widgetView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 72
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 73
    iget-object v0, p0, Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;->widgetView:Landroid/view/View;

    sget v1, Lcom/amazon/kcp/more/R$id;->payment_preferences_webview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 74
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 75
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
