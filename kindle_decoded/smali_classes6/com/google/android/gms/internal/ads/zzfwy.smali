.class public final Lcom/google/android/gms/internal/ads/zzfwy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgby;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwx;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgby;->zzc()Lcom/google/android/gms/internal/ads/zzgby;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwy;->zza:Lcom/google/android/gms/internal/ads/zzgby;

    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwy;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 4
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxb;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfum;->zze(Lcom/google/android/gms/internal/ads/zzfue;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwx;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwx;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzc(Lcom/google/android/gms/internal/ads/zzftu;Z)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvx;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwu;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwu;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzc(Lcom/google/android/gms/internal/ads/zzftu;Z)V

    return-void
.end method
