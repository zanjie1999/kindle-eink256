.class public abstract Lcom/amazon/android/webkit/AmazonCacheManager;
.super Ljava/lang/Object;
.source "AmazonCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/webkit/AmazonCacheManager$UpdateAppCacheCallback;,
        Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearCache(Landroid/content/Context;Z)V
.end method

.method public abstract setCacheMaxSize(J)V
.end method

.method public abstract setCacheThreshold(J)V
.end method

.method public abstract setWebCoreCache(I)V
.end method

.method public abstract updateAppCache(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/android/webkit/AmazonCacheManager$UpdateAppCacheCallback;)V
.end method
