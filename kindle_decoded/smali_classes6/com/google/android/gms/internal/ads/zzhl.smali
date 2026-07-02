.class final synthetic Lcom/google/android/gms/internal/ads/zzhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzho;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhp;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgx;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhc;

.field private final zze:Ljava/io/IOException;

.field private final zzf:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zzhp;Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zza:Lcom/google/android/gms/internal/ads/zzho;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzb:Lcom/google/android/gms/internal/ads/zzhp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzc:Lcom/google/android/gms/internal/ads/zzgx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzd:Lcom/google/android/gms/internal/ads/zzhc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhl;->zze:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzf:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zza:Lcom/google/android/gms/internal/ads/zzho;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzb:Lcom/google/android/gms/internal/ads/zzhp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzc:Lcom/google/android/gms/internal/ads/zzgx;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzd:Lcom/google/android/gms/internal/ads/zzhc;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhl;->zze:Ljava/io/IOException;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzf:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzho;->zza:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzho;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhp;->zzF(ILcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;Ljava/io/IOException;Z)V

    return-void
.end method
