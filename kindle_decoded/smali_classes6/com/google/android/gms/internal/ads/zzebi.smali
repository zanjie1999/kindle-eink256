.class final synthetic Lcom/google/android/gms/internal/ads/zzebi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzebq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsm;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfsm;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcbj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzebq;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zza:Lcom/google/android/gms/internal/ads/zzebq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzc:Lcom/google/android/gms/internal/ads/zzfsm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzd:Lcom/google/android/gms/internal/ads/zzcbj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebi;->zza:Lcom/google/android/gms/internal/ads/zzebq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzc:Lcom/google/android/gms/internal/ads/zzfsm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzebi;->zzd:Lcom/google/android/gms/internal/ads/zzcbj;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzebq;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzcbj;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
