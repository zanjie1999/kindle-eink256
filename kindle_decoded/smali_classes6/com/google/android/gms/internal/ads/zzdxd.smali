.class final synthetic Lcom/google/android/gms/internal/ads/zzdxd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdxk;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzchl;

.field private final zzd:Ljava/lang/String;

.field private final zze:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxk;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzchl;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zza:Lcom/google/android/gms/internal/ads/zzdxk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzc:Lcom/google/android/gms/internal/ads/zzchl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzd:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zze:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zza:Lcom/google/android/gms/internal/ads/zzdxk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzc:Lcom/google/android/gms/internal/ads/zzchl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zzd:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdxd;->zze:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdxk;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzchl;Ljava/lang/String;J)V

    return-void
.end method
