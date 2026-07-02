.class final synthetic Lcom/google/android/gms/internal/ads/zzeeo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfln;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeep;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcml;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzezz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcus;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeep;Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzcus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeo;->zza:Lcom/google/android/gms/internal/ads/zzeep;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeeo;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeeo;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeeo;->zzd:Lcom/google/android/gms/internal/ads/zzcus;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeo;->zzb:Lcom/google/android/gms/internal/ads/zzcml;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeo;->zzc:Lcom/google/android/gms/internal/ads/zzezz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeeo;->zzd:Lcom/google/android/gms/internal/ads/zzcus;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzI:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzau()V

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzL()V

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->onPause()V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcus;->zzh()Lcom/google/android/gms/internal/ads/zzcva;

    move-result-object p1

    return-object p1
.end method
