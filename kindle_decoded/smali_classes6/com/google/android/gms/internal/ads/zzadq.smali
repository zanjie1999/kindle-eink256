.class final synthetic Lcom/google/android/gms/internal/ads/zzadq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzadr;

.field private final zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzadr;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadq;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzadq;->zzb:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadq;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzadq;->zzb:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzadr;->zza:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadt;->zzd(Lcom/google/android/gms/internal/ads/zzadt;I)V

    return-void
.end method
