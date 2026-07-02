.class final synthetic Lcom/google/android/gms/internal/ads/zzdyp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdyq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcbj;

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdyq;Lcom/google/android/gms/internal/ads/zzcbj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zza:Lcom/google/android/gms/internal/ads/zzdyq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzb:Lcom/google/android/gms/internal/ads/zzcbj;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zza:Lcom/google/android/gms/internal/ads/zzdyq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzb:Lcom/google/android/gms/internal/ads/zzcbj;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdyp;->zzc:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeap;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzcbj;ILcom/google/android/gms/internal/ads/zzeap;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
