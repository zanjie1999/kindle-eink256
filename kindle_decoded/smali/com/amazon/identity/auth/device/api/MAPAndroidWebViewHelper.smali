.class public Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;,
        Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;
    }
.end annotation


# static fields
.field public static final ON_REGISTRATION_SUCCESS:Ljava/lang/String; = "ON_REGISTRATION_SUCCESS"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ON_UNABLE_TO_GET_COOKIES:Ljava/lang/String; = "ON_UNABLE_TO_GET_COOKIES"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.MAPAndroidWebViewHelper"


# instance fields
.field private final as:Lcom/amazon/identity/auth/device/api/TokenManagement;

.field private final at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field private gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;-><init>(B)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    const-string v0, "Activity"

    .line 204
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->mActivity:Landroid/app/Activity;

    .line 206
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->mContext:Landroid/content/Context;

    .line 207
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 208
    new-instance p1, Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;-><init>(B)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    const-string v0, "Context"

    .line 171
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 179
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->mActivity:Landroid/app/Activity;

    .line 180
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->mActivity:Landroid/app/Activity;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->mContext:Landroid/content/Context;

    .line 187
    :goto_0
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 188
    new-instance p1, Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    return-void
.end method

.method private a(Landroid/net/UrlQuerySanitizer;)Landroid/os/Bundle;
    .locals 3

    .line 996
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 997
    invoke-virtual {p1}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    move-result-object p1

    .line 998
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;

    .line 1000
    iget-object v2, v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mParameter:Ljava/lang/String;

    iget-object v1, v1, Landroid/net/UrlQuerySanitizer$ParameterValuePair;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 7

    .line 1085
    new-instance v6, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$4;-><init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V

    return-object v6
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Lcom/amazon/identity/auth/device/api/Callback;
    .locals 7

    .line 1109
    new-instance v6, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$5;-><init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Ljava/lang/String;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-object v6
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;)Lcom/amazon/identity/auth/device/api/MAPAccountManager;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->aG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 810
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 812
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->associationHandle:Ljava/lang/String;

    const-string v2, "com.amazon.identity.ap.assoc_handle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->pageId:Ljava/lang/String;

    const-string v2, "com.amazon.identity.ap.pageid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->clientContext:Ljava/lang/String;

    const-string v2, "com.amazon.identity.ap.clientContext"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->domain:Ljava/lang/String;

    const-string v2, "com.amazon.identity.ap.domain"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->additionalSignInParams:Landroid/os/Bundle;

    const-string v2, "com.amazon.identity.ap.additionalSignInParameters"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 818
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "requestType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->getOptions()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 824
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->additionalSignInParams:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->d(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 826
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->additionalSignInParams:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->e(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 828
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->REGISTER:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    if-ne p3, v1, :cond_0

    sget-object p3, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewCreateAccount:Lcom/amazon/identity/auth/device/api/SigninOption;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewSignin:Lcom/amazon/identity/auth/device/api/SigninOption;

    .line 831
    :goto_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v1, p1, p3, v0, p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->registerAccountWithUI(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void

    .line 807
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Activity object must not be null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/webkit/WebView;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V
    .locals 10

    const-string v0, "ON_REGISTRATION_SUCCESS"

    .line 903
    invoke-virtual {p0, v0, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 904
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    const-string v1, "Registration successful. Starting get cookies."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->skipCookieRefreshPostRegistration()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.amazon.dcp.sso.property.account.acctId"

    .line 907
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    .line 3923
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v6, p2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->domain:Ljava/lang/String;

    new-instance v8, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$2;

    invoke-direct {v8, p0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$2;-><init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;)V

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v7, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V

    return-void

    .line 911
    :cond_0
    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    const-string p4, "Skipped the cookie refresh, loading the returnToURL"

    invoke-static {p3, p4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "additionalReturnToUrlParams"

    .line 912
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object p3, p3, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->returnToURL:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->c(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p5}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V

    return-void
.end method

.method private static a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V
    .locals 3

    .line 1060
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Loading ReturnTo Url: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1063
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$3;-><init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V
    .locals 6

    .line 968
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.amazon.identity.auth.device.api.cookiekeys.options.forcerefresh"

    .line 969
    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "domain"

    .line 970
    invoke-virtual {v4, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object p2, p2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->userAgent:Ljava/lang/String;

    const-string/jumbo v0, "user_agent"

    .line 973
    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.amazon.identity.auth.device.api.cookiekeys.options.SignInUrl"

    .line 975
    invoke-virtual {v4, p2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-direct {p0, p3, p1, p7, p8}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Ljava/lang/String;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v5

    .line 979
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 981
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 983
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    invoke-virtual {p1, p3, p5, v4, v5}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getCookies(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void

    .line 987
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getCookiesForActor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Landroid/webkit/WebView;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V
    .locals 0

    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/webkit/WebView;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Landroid/webkit/WebView;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V
    .locals 0

    .line 5053
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->aG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5054
    invoke-static {p1, p0, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4659
    iget-object p0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p1}, Lcom/amazon/identity/auth/device/jl;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private aG(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->returnToURL:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Landroid/webkit/WebView;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V
    .locals 2

    const-string v0, "com.amazon.map.error.errorCode"

    .line 3943
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->ACCOUNT_ALREADY_REGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3947
    invoke-direct/range {p0 .. p5}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/webkit/WebView;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V

    return-void

    .line 3950
    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    const-string p3, "Error in handleAuthActivityResultError"

    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ON_UNABLE_TO_GET_COOKIES"

    .line 3951
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private c(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    return-object p2

    .line 1011
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/ji;->gV()Lcom/amazon/identity/auth/device/ji$b;

    move-result-object v0

    .line 1012
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1013
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1016
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/amazon/identity/auth/device/ji$b;->as(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;

    goto :goto_0

    .line 1018
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ji$b;->gW()Ljava/lang/String;

    move-result-object p1

    .line 1021
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 1024
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move-object v5, p1

    goto :goto_2

    .line 1030
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1033
    :goto_2
    new-instance p1, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 1034
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1040
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    const-string v0, "Error in appending the signIn query parameters to returnTo url."

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private d(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "com.amazon.identity.ap.request.parameters"

    .line 842
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 844
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 848
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 849
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v1

    :goto_0
    const-string/jumbo v0, "override.assoc_handle"

    .line 852
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "openid.assoc_handle"

    .line 855
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "override.page_id"

    .line 858
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 859
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "pageId"

    .line 861
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private e(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "domain_hint"

    .line 871
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 872
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 874
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "ab_federated_auth"

    .line 876
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 877
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 879
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "color_code"

    .line 881
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 882
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 884
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static enableMAPForWebView(Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;Landroid/os/Bundle;)Z
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 273
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 275
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x0

    const/16 v0, 0x11

    if-lt p1, v0, :cond_1

    .line 277
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 279
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " disabled the JavaScript on WebView. MAP will enable the JavaScript"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "MAPWebViewJavaScriptOriginallyDisabled:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 284
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/fg;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lcom/amazon/identity/auth/device/fg;-><init>(Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;Lcom/amazon/identity/auth/device/fe;)V

    const-string p2, "MAPAndroidJSBridge"

    .line 285
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_1
    return p2
.end method

.method public static final isInterceptableUrl(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 302
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/ap/signin"

    .line 303
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/ap/register"

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActor()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 365
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final handleAuthentication(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->handleAuthentication(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public final handleAuthentication(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->handleAuthentication(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Z

    move-result p1

    return p1
.end method

.method public final handleAuthentication(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Z
    .locals 18
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v4, p3

    move-object/from16 v11, p4

    const-string v1, "No Return to url in the main url"

    const-string v2, "intercept"

    const-string v3, "ON_UNABLE_TO_GET_COOKIES"

    .line 462
    invoke-static/range {p2 .. p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->isInterceptableUrl(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    .line 467
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x1

    .line 470
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/amazon/identity/auth/device/ji;->dG(Ljava/lang/String;)Landroid/net/UrlQuerySanitizer;

    move-result-object v7

    .line 1590
    invoke-virtual {v7}, Landroid/net/UrlQuerySanitizer;->getParameterList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1595
    invoke-virtual {v7, v2}, Landroid/net/UrlQuerySanitizer;->hasParameter(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    return v6

    .line 1673
    :cond_3
    new-instance v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    invoke-direct {v2, v6}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;-><init>(B)V

    iput-object v2, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    const-string/jumbo v2, "openid.return_to"

    .line 1675
    invoke-virtual {v7, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1676
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1681
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iput-object v2, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->returnToURL:Ljava/lang/String;

    .line 1683
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    const-string/jumbo v2, "openid.assoc_handle"

    invoke-virtual {v7, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->associationHandle:Ljava/lang/String;

    .line 1684
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    const-string/jumbo v2, "pageId"

    invoke-virtual {v7, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->pageId:Ljava/lang/String;

    .line 1685
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    const-string v2, "clientContext"

    invoke-virtual {v7, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->clientContext:Ljava/lang/String;

    .line 1686
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    const-string/jumbo v2, "openid.claimed_id"

    invoke-virtual {v7, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->claimedId:Ljava/lang/String;

    .line 1687
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    const-string/jumbo v2, "openid.identity"

    invoke-virtual {v7, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->identity:Ljava/lang/String;

    .line 1688
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    const-string/jumbo v2, "prompt"

    invoke-virtual {v7, v2}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->prompt:Ljava/lang/String;

    .line 1719
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1722
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ho;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1691
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    const-string v8, "Domain used for parameters : "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1693
    iget-object v2, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iput-object v1, v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->domain:Ljava/lang/String;

    .line 1694
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iput-object v5, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->userAgent:Ljava/lang/String;

    .line 1695
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v2, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    .line 1766
    iget-object v5, v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->claimedId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->identity:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->claimedId:Ljava/lang/String;

    iget-object v8, v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->identity:Ljava/lang/String;

    .line 1767
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 1772
    :cond_4
    iget-object v5, v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->claimedId:Ljava/lang/String;

    const-string v8, "http://www.amazon.com/ap/specs/auth/confirm_credentials"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v2, v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->claimedId:Ljava/lang/String;

    const-string v5, "/ap/id/"

    .line 1773
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_7

    .line 1742
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    const-string v5, "URL type set to confirm credential"

    invoke-static {v2, v5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    goto :goto_3

    :cond_7
    if-eqz v9, :cond_8

    const-string v2, "/ap/register"

    .line 2756
    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v6, 0x1

    :cond_8
    if-eqz v6, :cond_9

    .line 1748
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    const-string v5, "URL type set to register"

    invoke-static {v2, v5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->REGISTER:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    goto :goto_3

    .line 1751
    :cond_9
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;->SIGNIN:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$URL_TYPE;

    .line 1695
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->requestType:Ljava/lang/String;

    .line 1697
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    invoke-direct {v10, v7}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/net/UrlQuerySanitizer;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->additionalSignInParams:Landroid/os/Bundle;

    .line 1699
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->additionalSignInParams:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    .line 1701
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->additionalSignInParams:Landroid/os/Bundle;

    const-string v2, "ab_federated_auth"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1702
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1704
    iget-object v2, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->isFederatedAuthentication:Z
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 504
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Authentication URL seen:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v5, v5, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->requestType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->getAccount()Ljava/lang/String;

    move-result-object v13

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->getActor()Ljava/lang/String;

    move-result-object v14

    if-nez v4, :cond_b

    .line 516
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 519
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    const-string v2, "Null activity passed to MAPAndroidWebViewHelper. Could not handle intercepted Auth Portal URL."

    const-string/jumbo v4, "null activity passed to MAPAndroidWebViewHelper. Could not handle intercepted Auth Portal URL."

    .line 517
    invoke-static {v0, v2, v1, v4}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 516
    invoke-virtual {v10, v3, v0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 522
    :cond_b
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->requestType:Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->REGISTER:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 525
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    const-string v2, "Create account page will ignore the actorId if you override getActor() method."

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 526
    invoke-direct {v10, v0, v1, v9, v11}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->REGISTER:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-direct {v10, v4, v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;)V

    goto/16 :goto_5

    .line 528
    :cond_c
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->requestType:Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 531
    invoke-direct {v10, v0, v14, v9, v11}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v0

    .line 2783
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2784
    iget-object v2, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->associationHandle:Ljava/lang/String;

    const-string v3, "com.amazon.identity.ap.assoc_handle"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    iget-object v2, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->pageId:Ljava/lang/String;

    const-string v3, "com.amazon.identity.ap.pageid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    iget-object v2, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->clientContext:Ljava/lang/String;

    const-string v3, "com.amazon.identity.ap.clientContext"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    iget-object v2, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v2, v2, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->domain:Ljava/lang/String;

    const-string v3, "com.amazon.identity.ap.domain"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->getOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v2, "com.amazon.dcp.sso.property.account.acctId"

    .line 2791
    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    iget-object v2, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->at:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    sget-object v3, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewConfirmCredentials:Lcom/amazon/identity/auth/device/api/SigninOption;

    invoke-virtual {v2, v4, v3, v1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->authenticateAccountWithUI(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    goto :goto_5

    .line 533
    :cond_d
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->prompt:Ljava/lang/String;

    const-string/jumbo v2, "login"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    .line 544
    :cond_e
    iget-object v1, v10, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-object v15, v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->domain:Ljava/lang/String;

    .line 3621
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting Cookies from Token Manager, accountId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", actorId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/16 v16, 0x1

    .line 3622
    new-instance v17, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object v6, v14

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$1;-><init>(Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;Ljava/lang/String;Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v8, v17

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/webkit/WebView;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)V

    goto :goto_5

    .line 537
    :cond_f
    :goto_4
    invoke-direct {v10, v0, v14, v9, v11}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewNavigator;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->SIGN_IN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-direct {v10, v4, v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->a(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;)V

    :goto_5
    return v12

    .line 1678
    :cond_10
    :try_start_1
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 494
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "URL is invalid. MalformedURLException: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 497
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "URL is invalid."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-static {v1, v2, v4, v0}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 494
    invoke-virtual {v10, v3, v0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return v12

    :catch_1
    move-exception v0

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occurred while getting parameters from url."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/InvalidParameterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 486
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v2

    .line 484
    invoke-static {v1, v0, v2, v0}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 483
    invoke-virtual {v10, v3, v0}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return v12
.end method

.method protected handleSSLError(Landroid/net/http/SslError;)V
    .locals 2

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSL error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 730
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 733
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    .line 731
    invoke-static {v0, p1, v1, p1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ON_UNABLE_TO_GET_COOKIES"

    .line 730
    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public isFederatedAuthentication()Z
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->gk:Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;

    iget-boolean v0, v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper$Parameters;->isFederatedAuthentication:Z

    return v0
.end method

.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 420
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event response received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Result: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void
.end method

.method public skipCookieRefreshPostRegistration()Z
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
