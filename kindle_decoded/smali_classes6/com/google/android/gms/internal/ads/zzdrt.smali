.class public final Lcom/google/android/gms/internal/ads/zzdrt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbqg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdcj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzccl;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdcj;Lcom/google/android/gms/internal/ads/zzezz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrt;->zza:Lcom/google/android/gms/internal/ads/zzdcj;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzm:Lcom/google/android/gms/internal/ads/zzccl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrt;->zzb:Lcom/google/android/gms/internal/ads/zzccl;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzk:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrt;->zzc:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzezz;->zzl:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrt;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrt;->zza:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcj;->zzd()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzccl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrt;->zzb:Lcom/google/android/gms/internal/ads/zzccl;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzccl;->zza:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzccl;->zzb:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const-string v0, ""

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcbw;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcbw;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrt;->zza:Lcom/google/android/gms/internal/ads/zzdcj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrt;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdrt;->zzd:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdcj;->zze(Lcom/google/android/gms/internal/ads/zzcbz;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrt;->zza:Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcj;->zzf()V

    return-void
.end method
