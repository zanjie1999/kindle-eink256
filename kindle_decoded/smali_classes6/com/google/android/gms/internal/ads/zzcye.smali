.class final synthetic Lcom/google/android/gms/internal/ads/zzcye;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeam;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcye;->zza:Lcom/google/android/gms/internal/ads/zzeam;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzeam;)Lcom/google/android/gms/internal/ads/zzfrk;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcye;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcye;-><init>(Lcom/google/android/gms/internal/ads/zzeam;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcye;->zza:Lcom/google/android/gms/internal/ads/zzeam;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeam;->zzc(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
