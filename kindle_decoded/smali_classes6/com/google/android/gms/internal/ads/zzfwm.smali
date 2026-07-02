.class public final Lcom/google/android/gms/internal/ads/zzfwm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzftv;)Lcom/google/android/gms/internal/ads/zzftl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwo;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfum;->zze(Lcom/google/android/gms/internal/ads/zzfue;)V

    const-class v0, Lcom/google/android/gms/internal/ads/zzftl;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzftv;->zzb(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzftl;

    return-object p0
.end method
