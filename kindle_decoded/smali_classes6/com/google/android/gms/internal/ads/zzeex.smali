.class final synthetic Lcom/google/android/gms/internal/ads/zzeex;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzefd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfal;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzezz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzefd;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeex;->zza:Lcom/google/android/gms/internal/ads/zzefd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeex;->zzb:Lcom/google/android/gms/internal/ads/zzfal;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeex;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeex;->zza:Lcom/google/android/gms/internal/ads/zzefd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeex;->zzb:Lcom/google/android/gms/internal/ads/zzfal;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeex;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzefd;->zzd(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzezz;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
