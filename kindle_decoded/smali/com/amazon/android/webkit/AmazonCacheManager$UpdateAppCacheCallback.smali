.class public interface abstract Lcom/amazon/android/webkit/AmazonCacheManager$UpdateAppCacheCallback;
.super Ljava/lang/Object;
.source "AmazonCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/webkit/AmazonCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateAppCacheCallback"
.end annotation


# virtual methods
.method public abstract onCompleted(Lcom/amazon/android/webkit/AmazonCacheManager$AppCacheStatus;[Ljava/lang/String;J)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onProgress(Ljava/lang/String;II)V
.end method
