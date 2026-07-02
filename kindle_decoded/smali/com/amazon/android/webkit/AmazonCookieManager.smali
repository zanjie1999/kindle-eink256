.class public abstract Lcom/amazon/android/webkit/AmazonCookieManager;
.super Ljava/lang/Object;
.source "AmazonCookieManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/android/webkit/AmazonCookieManager;
    .locals 1

    .line 18
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebKitFactories;->getDefaultFactory()Lcom/amazon/android/webkit/AmazonWebKitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebKitFactory;->getCookieManager()Lcom/amazon/android/webkit/AmazonCookieManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract acceptCookie()Z
.end method

.method public abstract getCookie(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasCookies()Z
.end method

.method public abstract removeAllCookie()V
.end method

.method public abstract removeExpiredCookie()V
.end method

.method public abstract removeSessionCookie()V
.end method

.method public abstract setAcceptCookie(Z)V
.end method

.method public abstract setCookie(Ljava/lang/String;Ljava/lang/String;)V
.end method
