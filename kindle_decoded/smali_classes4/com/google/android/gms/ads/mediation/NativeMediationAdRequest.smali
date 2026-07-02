.class public interface abstract Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNativeAdRequestOptions()Lcom/google/android/gms/ads/nativead/NativeAdOptions;
.end method

.method public abstract isUnifiedNativeAdRequested()Z
.end method

.method public abstract zza()Z
.end method

.method public abstract zzb()Ljava/util/Map;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
