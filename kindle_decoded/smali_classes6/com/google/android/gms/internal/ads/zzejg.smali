.class final synthetic Lcom/google/android/gms/internal/ads/zzejg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzejj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbkb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzejj;Lcom/google/android/gms/internal/ads/zzbkb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejg;->zza:Lcom/google/android/gms/internal/ads/zzejj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzejg;->zzb:Lcom/google/android/gms/internal/ads/zzbkb;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejg;->zza:Lcom/google/android/gms/internal/ads/zzejj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejg;->zzb:Lcom/google/android/gms/internal/ads/zzbkb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzejj;->zzc(Lcom/google/android/gms/internal/ads/zzbkb;)V

    return-void
.end method
