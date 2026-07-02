.class public Lcom/amazon/kcp/application/WebViewSSLErrorHandler;
.super Ljava/lang/Object;
.source "WebViewSSLErrorHandler.java"


# static fields
.field private static final CHROME_PACKAGE_NAME:Ljava/lang/String; = "com.android.chrome"

.field private static final SYSTEM_WEBVIEW_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.webview"

.field private static final UPDATE_WEBVIEW_DIALOG_POP_UP:Ljava/lang/String; = "updateWebViewDialogPopUp"


# instance fields
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private callingClass:Ljava/lang/String;

.field private upgradeRequired:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->upgradeRequired:Z

    .line 47
    iput-boolean p1, p0, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->upgradeRequired:Z

    .line 48
    iput-object p2, p0, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->callingClass:Ljava/lang/String;

    .line 49
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/WebViewSSLErrorHandler;Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->upgradeSystemWebView(Landroid/content/Context;)V

    return-void
.end method

.method private static getUpgradeWebViewIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 120
    invoke-static {p0}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->getWebViewPackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 122
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static getWebViewPackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "com.google.android.webview"

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    const-string v0, "com.android.chrome"

    .line 141
    invoke-static {p0, v0}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 149
    :cond_1
    :goto_0
    invoke-static {p0, v1}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method private static isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private upgradeSystemWebView(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 109
    invoke-static {p1}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->getUpgradeWebViewIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleWebViewSSLError()Z
    .locals 4

    .line 58
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return v1

    .line 67
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    sget v2, Lcom/amazon/kindle/krl/R$string;->error_upgrade_webview_version:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 70
    iget-boolean v2, p0, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->upgradeRequired:Z

    if-nez v2, :cond_2

    .line 71
    sget v2, Lcom/amazon/kindle/krl/R$string;->dismiss_update_webview_button:I

    new-instance v3, Lcom/amazon/kcp/application/WebViewSSLErrorHandler$1;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler$1;-><init>(Lcom/amazon/kcp/application/WebViewSSLErrorHandler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    sget v2, Lcom/amazon/kindle/krl/R$string;->upgrade_webview_button:I

    new-instance v3, Lcom/amazon/kcp/application/WebViewSSLErrorHandler$2;

    invoke-direct {v3, p0, v0}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler$2;-><init>(Lcom/amazon/kcp/application/WebViewSSLErrorHandler;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 88
    :cond_2
    sget v2, Lcom/amazon/kindle/krl/R$string;->upgrade_webview_button:I

    new-instance v3, Lcom/amazon/kcp/application/WebViewSSLErrorHandler$3;

    invoke-direct {v3, p0, v0}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler$3;-><init>(Lcom/amazon/kcp/application/WebViewSSLErrorHandler;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    .line 98
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->callingClass:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string/jumbo v3, "updateWebViewDialogPopUp"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    const/4 v0, 0x1

    return v0
.end method
