.class public final Lcom/google/android/gms/internal/ads/zzfwb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwa;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwb;->zza:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgby;->zzc()Lcom/google/android/gms/internal/ads/zzgby;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgby;->zzc()Lcom/google/android/gms/internal/ads/zzgby;

    .line 3
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwd;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfum;->zze(Lcom/google/android/gms/internal/ads/zzfue;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvx;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwa;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwa;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzc(Lcom/google/android/gms/internal/ads/zzftu;Z)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
