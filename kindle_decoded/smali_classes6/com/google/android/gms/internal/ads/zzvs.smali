.class final Lcom/google/android/gms/internal/ads/zzvs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzwc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzwi;

.field private final zzc:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzwi;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Lcom/google/android/gms/internal/ads/zzwc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Lcom/google/android/gms/internal/ads/zzwi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Lcom/google/android/gms/internal/ads/zzwc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzm()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwi;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Lcom/google/android/gms/internal/ads/zzwc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Lcom/google/android/gms/internal/ads/zzwi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwi;->zza:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzt(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Lcom/google/android/gms/internal/ads/zzwc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Lcom/google/android/gms/internal/ads/zzwi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwi;->zzc:Lcom/google/android/gms/internal/ads/zzwl;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzu(Lcom/google/android/gms/internal/ads/zzwl;)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzb:Lcom/google/android/gms/internal/ads/zzwi;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzwi;->zzd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Lcom/google/android/gms/internal/ads/zzwc;

    const-string v1, "intermediate-response"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zzd(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zza:Lcom/google/android/gms/internal/ads/zzwc;

    const-string v1, "done"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;->zze(Ljava/lang/String;)V

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvs;->zzc:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
