.class public abstract Lcom/amazon/android/webkit/AmazonWebStorage;
.super Ljava/lang/Object;
.source "AmazonWebStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/webkit/AmazonWebStorage$QuotaUpdater;,
        Lcom/amazon/android/webkit/AmazonWebStorage$Origin;
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
.method public abstract deleteAllData()V
.end method

.method public abstract deleteOrigin(Ljava/lang/String;)V
.end method

.method public abstract getOrigins(Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getQuotaForOrigin(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUsageForOrigin(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/android/webkit/AmazonValueCallback<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setQuotaForOrigin(Ljava/lang/String;J)V
.end method
