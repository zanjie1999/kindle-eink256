.class final synthetic Lcom/google/android/gms/internal/ads/zzdg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdp;

.field private final zzb:Ljava/lang/String;

.field private final zzc:J

.field private final zzd:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdp;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdg;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdg;->zzb:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzdg;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzdg;->zzd:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdg;->zza:Lcom/google/android/gms/internal/ads/zzdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdg;->zzb:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdg;->zzc:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdg;->zzd:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdp;->zzs(Ljava/lang/String;JJ)V

    return-void
.end method
