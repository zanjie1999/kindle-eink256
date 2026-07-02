.class final synthetic Lcom/google/android/gms/internal/ads/zzdi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdp;

.field private final zzb:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdp;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdi;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzdi;->zzb:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdi;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdi;->zzb:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdp;->zzq(J)V

    return-void
.end method
