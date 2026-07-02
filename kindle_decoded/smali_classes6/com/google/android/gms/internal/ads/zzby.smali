.class final synthetic Lcom/google/android/gms/internal/ads/zzby;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgx;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhc;

.field private final zzd:Ljava/io/IOException;

.field private final zze:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzby;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzby;->zzb:Lcom/google/android/gms/internal/ads/zzgx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzby;->zzc:Lcom/google/android/gms/internal/ads/zzhc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzby;->zzd:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzby;->zze:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzby;->zza:Lcom/google/android/gms/internal/ads/zzcz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzby;->zzb:Lcom/google/android/gms/internal/ads/zzgx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzby;->zzc:Lcom/google/android/gms/internal/ads/zzhc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzby;->zzd:Ljava/io/IOException;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzby;->zze:Z

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzda;

    .line 2
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzda;->zzg(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;Ljava/io/IOException;Z)V

    return-void
.end method
