.class final Lcom/google/android/gms/internal/ads/zzfrc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfoe;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfrd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfrd;Lcom/google/android/gms/internal/ads/zzfoe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrc;->zzb:Lcom/google/android/gms/internal/ads/zzfrd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfrc;->zza:Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrc;->zzb:Lcom/google/android/gms/internal/ads/zzfrd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrc;->zza:Lcom/google/android/gms/internal/ads/zzfoe;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfrd;->zzy(Lcom/google/android/gms/internal/ads/zzfrd;Lcom/google/android/gms/internal/ads/zzfoe;)V

    return-void
.end method
