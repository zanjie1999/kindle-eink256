.class Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/WebViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileAdsCookieManager"
.end annotation


# instance fields
.field private cookieSyncManagerCreated:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->cookieSyncManagerCreated:Z

    return-void
.end method


# virtual methods
.method public createCookieSyncManager(Landroid/content/Context;)V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->cookieSyncManagerCreated:Z

    if-nez v0, :cond_0

    .line 158
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->cookieSyncManagerCreated:Z

    :cond_0
    return-void
.end method

.method public isCookieSyncManagerCreated()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebViewFactory$MobileAdsCookieManager;->cookieSyncManagerCreated:Z

    return v0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 165
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startSync()V
    .locals 1

    .line 175
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method

.method public stopSync()V
    .locals 1

    .line 179
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    return-void
.end method
