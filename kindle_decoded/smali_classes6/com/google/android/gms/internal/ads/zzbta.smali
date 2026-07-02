.class final synthetic Lcom/google/android/gms/internal/ads/zzbta;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbts;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbtr;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbsn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbta;->zza:Lcom/google/android/gms/internal/ads/zzbts;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbta;->zzb:Lcom/google/android/gms/internal/ads/zzbtr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbta;->zzc:Lcom/google/android/gms/internal/ads/zzbsn;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbta;->zza:Lcom/google/android/gms/internal/ads/zzbts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbta;->zzb:Lcom/google/android/gms/internal/ads/zzbtr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbta;->zzc:Lcom/google/android/gms/internal/ads/zzbsn;

    sget-object v3, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbtb;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtb;-><init>(Lcom/google/android/gms/internal/ads/zzbts;Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbsn;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
