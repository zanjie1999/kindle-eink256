.class final synthetic Lcom/google/android/gms/internal/ads/zzdxb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdxk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzchl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxk;Lcom/google/android/gms/internal/ads/zzchl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zza:Lcom/google/android/gms/internal/ads/zzdxk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzb:Lcom/google/android/gms/internal/ads/zzchl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zza:Lcom/google/android/gms/internal/ads/zzdxk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzb:Lcom/google/android/gms/internal/ads/zzchl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxk;->zzr(Lcom/google/android/gms/internal/ads/zzchl;)V

    return-void
.end method
