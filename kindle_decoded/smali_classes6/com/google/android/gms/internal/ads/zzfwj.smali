.class public final Lcom/google/android/gms/internal/ads/zzfwj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgby;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwi;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwg;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwg;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgby;->zzc()Lcom/google/android/gms/internal/ads/zzgby;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwj;->zza:Lcom/google/android/gms/internal/ads/zzgby;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgby;->zzc()Lcom/google/android/gms/internal/ads/zzgby;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgby;->zzc()Lcom/google/android/gms/internal/ads/zzgby;

    .line 4
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwl;-><init>()V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfum;->zze(Lcom/google/android/gms/internal/ads/zzfue;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwo;-><init>()V

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfum;->zze(Lcom/google/android/gms/internal/ads/zzfue;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuo;->zza()V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvx;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwg;

    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwg;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfwi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfwi;-><init>()V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfum;->zzd(Lcom/google/android/gms/internal/ads/zzfug;Lcom/google/android/gms/internal/ads/zzftu;Z)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 10
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
