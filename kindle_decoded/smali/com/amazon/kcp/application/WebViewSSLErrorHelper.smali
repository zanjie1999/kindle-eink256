.class public Lcom/amazon/kcp/application/WebViewSSLErrorHelper;
.super Ljava/lang/Object;
.source "WebViewSSLErrorHelper.java"


# static fields
.field private static final CHROME_VERSION_53:Ljava/lang/String; = "Chrome/53."

.field private static final CHROME_VERSION_54:Ljava/lang/String; = "Chrome/54."

.field private static MAPWebViewSSLError:Z

.field private static TAG:Ljava/lang/String;

.field private static problematicChromeVersion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMAPWebViewSSLError()Z
    .locals 1

    .line 88
    sget-boolean v0, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;->MAPWebViewSSLError:Z

    return v0
.end method

.method public static isProblematicChromeVersion()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;->problematicChromeVersion:Z

    return v0
.end method

.method public static isProblematicChromeVersion(Landroid/webkit/WebView;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 59
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 63
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v1, "Chrome/53."

    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Chrome/54."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static signalMAPWebViewSSLError()V
    .locals 1

    const/4 v0, 0x1

    .line 79
    sput-boolean v0, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;->MAPWebViewSSLError:Z

    return-void
.end method

.method public static signalRegistrationStart(Landroid/content/Context;)V
    .locals 1

    .line 36
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-static {v0}, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;->isProblematicChromeVersion(Landroid/webkit/WebView;)Z

    move-result p0

    sput-boolean p0, Lcom/amazon/kcp/application/WebViewSSLErrorHelper;->problematicChromeVersion:Z

    return-void
.end method
