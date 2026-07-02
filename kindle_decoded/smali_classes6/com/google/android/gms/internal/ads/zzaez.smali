.class final synthetic Lcom/google/android/gms/internal/ads/zzaez;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzafe;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzafm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzafe;Lcom/google/android/gms/internal/ads/zzafm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaez;->zza:Lcom/google/android/gms/internal/ads/zzafe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaez;->zzb:Lcom/google/android/gms/internal/ads/zzafm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaez;->zza:Lcom/google/android/gms/internal/ads/zzafe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaez;->zzb:Lcom/google/android/gms/internal/ads/zzafm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzafe;->zzJ(Lcom/google/android/gms/internal/ads/zzafm;)V

    return-void
.end method
