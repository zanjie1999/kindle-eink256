.class final synthetic Lcom/google/android/gms/internal/ads/zzcxq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcxu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfrz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfsm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzfrz;Lcom/google/android/gms/internal/ads/zzfsm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zza:Lcom/google/android/gms/internal/ads/zzcxu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zzb:Lcom/google/android/gms/internal/ads/zzfrz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zzc:Lcom/google/android/gms/internal/ads/zzfsm;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zza:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zzb:Lcom/google/android/gms/internal/ads/zzfrz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxq;->zzc:Lcom/google/android/gms/internal/ads/zzfsm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcxg;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcxu;->zzf(Lcom/google/android/gms/internal/ads/zzfrz;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzcxg;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
