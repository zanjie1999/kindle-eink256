.class final synthetic Lcom/google/android/gms/internal/ads/zzdah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdai;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdai;Lcom/google/android/gms/internal/ads/zzfsm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdah;->zza:Lcom/google/android/gms/internal/ads/zzdai;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdah;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdah;->zza:Lcom/google/android/gms/internal/ads/zzdai;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdah;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdai;->zzc(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v0

    return-object v0
.end method
