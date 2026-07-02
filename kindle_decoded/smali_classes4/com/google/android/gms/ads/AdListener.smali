.class public abstract Lcom/google/android/gms/ads/AdListener;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public abstract onAdClosed()V
.end method

.method public abstract onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
.end method

.method public onAdImpression()V
    .locals 0

    return-void
.end method

.method public abstract onAdLoaded()V
.end method

.method public abstract onAdOpened()V
.end method
