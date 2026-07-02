.class public abstract Lcom/amazon/android/webkit/AmazonCookieSyncManager;
.super Ljava/lang/Object;
.source "AmazonCookieSyncManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/android/webkit/AmazonCookieSyncManager;
    .locals 1

    .line 21
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebKitFactories;->getDefaultFactory()Lcom/amazon/android/webkit/AmazonWebKitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebKitFactory;->getCookieSyncManager()Lcom/amazon/android/webkit/AmazonCookieSyncManager;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/amazon/android/webkit/AmazonWebKitFactories;->getDefaultFactory()Lcom/amazon/android/webkit/AmazonWebKitFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/webkit/AmazonWebKitFactory;->getCookieSyncManager()Lcom/amazon/android/webkit/AmazonCookieSyncManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/android/webkit/AmazonCookieSyncManager;->createInstance(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract createInstance(Landroid/content/Context;)V
.end method

.method public abstract resetSync()V
.end method

.method public abstract run()V
.end method

.method public abstract startSync()V
.end method

.method public abstract stopSync()V
.end method

.method public abstract sync()V
.end method
