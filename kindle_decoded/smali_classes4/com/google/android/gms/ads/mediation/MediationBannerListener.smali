.class public interface abstract Lcom/google/android/gms/ads/mediation/MediationBannerListener;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
.end method

.method public abstract onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
.end method

.method public abstract onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Lcom/google/android/gms/ads/AdError;)V
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
.end method

.method public abstract onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
.end method

.method public abstract onAdOpened(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
.end method

.method public abstract zza(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
.end method
