.class final synthetic Lcom/google/android/gms/internal/ads/zzke;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzkf;

.field private final zzb:I

.field private final zzc:J

.field private final zzd:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzkf;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzke;->zza:Lcom/google/android/gms/internal/ads/zzkf;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzke;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzke;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzke;->zzd:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzke;->zza:Lcom/google/android/gms/internal/ads/zzkf;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzke;->zzb:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzke;->zzc:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzke;->zzd:J

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkf;->zzb(Lcom/google/android/gms/internal/ads/zzkf;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzkh;->zzW(IJJ)V

    return-void
.end method
