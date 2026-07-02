.class final synthetic Lcom/google/android/gms/internal/ads/zzewq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzewu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzexp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzewt;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzexn;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzewu;Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzewt;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewq;->zza:Lcom/google/android/gms/internal/ads/zzewu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzewq;->zzb:Lcom/google/android/gms/internal/ads/zzexp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzewq;->zzc:Lcom/google/android/gms/internal/ads/zzewt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzewq;->zzd:Lcom/google/android/gms/internal/ads/zzexn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzewq;->zze:Lcom/google/android/gms/internal/ads/zzdal;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewq;->zza:Lcom/google/android/gms/internal/ads/zzewu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewq;->zzb:Lcom/google/android/gms/internal/ads/zzexp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewq;->zzc:Lcom/google/android/gms/internal/ads/zzewt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzewq;->zzd:Lcom/google/android/gms/internal/ads/zzexn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzewq;->zze:Lcom/google/android/gms/internal/ads/zzdal;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzewz;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzewu;->zzf(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzewt;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;Lcom/google/android/gms/internal/ads/zzewz;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
