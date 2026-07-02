.class final synthetic Lcom/google/android/gms/internal/ads/zzdl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdp;Lcom/google/android/gms/internal/ads/zzaz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdl;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdl;->zzb:Lcom/google/android/gms/internal/ads/zzaz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdl;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdl;->zzb:Lcom/google/android/gms/internal/ads/zzaz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdp;->zzn(Lcom/google/android/gms/internal/ads/zzaz;)V

    return-void
.end method
