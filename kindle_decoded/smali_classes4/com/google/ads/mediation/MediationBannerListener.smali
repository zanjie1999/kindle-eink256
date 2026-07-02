.class public interface abstract Lcom/google/ads/mediation/MediationBannerListener;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .param p1    # Lcom/google/ads/mediation/MediationBannerAdapter;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/ads/AdRequest$ErrorCode;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter<",
            "**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation
.end method
