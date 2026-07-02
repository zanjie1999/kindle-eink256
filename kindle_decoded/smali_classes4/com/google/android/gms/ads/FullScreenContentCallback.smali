.class public abstract Lcom/google/android/gms/ads/FullScreenContentCallback;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    return-void
.end method

.method public abstract onAdDismissedFullScreenContent()V
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onAdImpression()V
    .locals 0

    return-void
.end method

.method public abstract onAdShowedFullScreenContent()V
.end method
