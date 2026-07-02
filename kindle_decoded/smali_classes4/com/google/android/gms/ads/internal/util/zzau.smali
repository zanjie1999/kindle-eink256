.class final synthetic Lcom/google/android/gms/ads/internal/util/zzau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/zzav;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzav;Lcom/google/android/gms/internal/ads/zzfsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->zza:Lcom/google/android/gms/ads/internal/util/zzav;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzau;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzau;->zza:Lcom/google/android/gms/ads/internal/util/zzav;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzau;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzav;->zzl(Lcom/google/android/gms/internal/ads/zzfsn;)V

    return-void
.end method
