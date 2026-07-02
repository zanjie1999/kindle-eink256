.class public Lcom/amazon/android/webkit/android/AndroidCookieSyncManager;
.super Lcom/amazon/android/webkit/AmazonCookieSyncManager;
.source "AndroidCookieSyncManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/android/webkit/AmazonCookieSyncManager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    return-void
.end method

.method public resetSync()V
    .locals 1

    .line 22
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->resetSync()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 27
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->run()V

    return-void
.end method

.method public startSync()V
    .locals 1

    .line 37
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method

.method public stopSync()V
    .locals 1

    .line 42
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    return-void
.end method

.method public sync()V
    .locals 1

    .line 17
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method
