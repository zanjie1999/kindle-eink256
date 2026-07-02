.class public final Lcom/google/android/gms/internal/ads/zzayz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/io/InputStream;

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:J

.field private final zze:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;ZZJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayz;->zza:Ljava/io/InputStream;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzayz;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzayz;->zzc:Z

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzayz;->zzd:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzayz;->zze:Z

    return-void
.end method

.method public static zza(Ljava/io/InputStream;ZZJZ)Lcom/google/android/gms/internal/ads/zzayz;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzayz;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzayz;-><init>(Ljava/io/InputStream;ZZJZ)V

    return-object v7
.end method


# virtual methods
.method public final zzb()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayz;->zza:Ljava/io/InputStream;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayz;->zzb:Z

    return v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayz;->zzc:Z

    return v0
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayz;->zzd:J

    return-wide v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayz;->zze:Z

    return v0
.end method
