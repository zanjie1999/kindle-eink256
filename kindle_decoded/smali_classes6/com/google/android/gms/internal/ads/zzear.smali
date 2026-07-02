.class final synthetic Lcom/google/android/gms/internal/ads/zzear;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeaz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeay;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcbj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfrk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeaz;Lcom/google/android/gms/internal/ads/zzeay;Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzfrk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzear;->zza:Lcom/google/android/gms/internal/ads/zzeaz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzear;->zzb:Lcom/google/android/gms/internal/ads/zzeay;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzear;->zzc:Lcom/google/android/gms/internal/ads/zzcbj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzear;->zzd:Lcom/google/android/gms/internal/ads/zzfrk;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzear;->zza:Lcom/google/android/gms/internal/ads/zzeaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzear;->zzb:Lcom/google/android/gms/internal/ads/zzeay;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzear;->zzc:Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzear;->zzd:Lcom/google/android/gms/internal/ads/zzfrk;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeap;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzeaz;->zzf(Lcom/google/android/gms/internal/ads/zzeay;Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzfrk;Lcom/google/android/gms/internal/ads/zzeap;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
