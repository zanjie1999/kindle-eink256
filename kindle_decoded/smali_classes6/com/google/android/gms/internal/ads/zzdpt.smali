.class final synthetic Lcom/google/android/gms/internal/ads/zzdpt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdqd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbdl;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzezz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfac;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdqd;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfac;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zza:Lcom/google/android/gms/internal/ads/zzdqd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzb:Lcom/google/android/gms/internal/ads/zzbdl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzd:Lcom/google/android/gms/internal/ads/zzfac;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zza:Lcom/google/android/gms/internal/ads/zzdqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzb:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzd:Lcom/google/android/gms/internal/ads/zzfac;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zze:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdpt;->zzf:Ljava/lang/String;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdqd;->zzd(Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzfac;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
