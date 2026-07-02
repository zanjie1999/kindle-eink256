.class final synthetic Lcom/google/android/gms/internal/ads/zzdpg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdpl;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpg;->zza:Lcom/google/android/gms/internal/ads/zzdpl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpg;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpg;->zza:Lcom/google/android/gms/internal/ads/zzdpl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpg;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdpl;->zzf(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
