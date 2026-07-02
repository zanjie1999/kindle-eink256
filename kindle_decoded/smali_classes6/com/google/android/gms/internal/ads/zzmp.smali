.class final synthetic Lcom/google/android/gms/internal/ads/zzmp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzmt;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzmt;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zza:Lcom/google/android/gms/internal/ads/zzmt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzb:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzc:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmp;->zza:Lcom/google/android/gms/internal/ads/zzmt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzb:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmp;->zzc:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzmt;->zzn(Ljava/lang/Object;J)V

    return-void
.end method
