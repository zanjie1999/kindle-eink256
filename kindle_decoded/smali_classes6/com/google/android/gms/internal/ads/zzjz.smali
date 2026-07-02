.class public abstract Lcom/google/android/gms/internal/ads/zzjz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzjy;

.field private zzb:Lcom/google/android/gms/internal/ads/zzki;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zzi(Ljava/lang/Object;)V
.end method

.method public abstract zzj([Lcom/google/android/gms/internal/ads/zzahw;Lcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzaiq;)Lcom/google/android/gms/internal/ads/zzka;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzjy;Lcom/google/android/gms/internal/ads/zzki;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjz;->zza:Lcom/google/android/gms/internal/ads/zzjy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjz;->zzb:Lcom/google/android/gms/internal/ads/zzki;

    return-void
.end method

.method protected final zzl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjz;->zza:Lcom/google/android/gms/internal/ads/zzjy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzjy;->zza()V

    :cond_0
    return-void
.end method

.method protected final zzm()Lcom/google/android/gms/internal/ads/zzki;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjz;->zzb:Lcom/google/android/gms/internal/ads/zzki;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
