.class final synthetic Lcom/google/android/gms/internal/ads/zzctj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzctk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctj;->zza:Lcom/google/android/gms/internal/ads/zzctk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctj;->zza:Lcom/google/android/gms/internal/ads/zzctk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzctk;->zza:Lcom/google/android/gms/internal/ads/zzctl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzctl;->zzb(Lcom/google/android/gms/internal/ads/zzctl;)Lcom/google/android/gms/internal/ads/zzctq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctq;->zzi()V

    return-void
.end method
