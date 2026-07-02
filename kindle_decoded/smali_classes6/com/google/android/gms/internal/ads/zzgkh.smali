.class public abstract Lcom/google/android/gms/internal/ads/zzgkh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgks;


# instance fields
.field protected final zzb:Ljava/lang/String;

.field zzc:Z

.field zzd:Z

.field zze:J

.field zzf:J

.field zzg:Lcom/google/android/gms/internal/ads/zzgkm;

.field private zzh:Lcom/google/android/gms/internal/ads/zzxq;

.field private zzi:Ljava/nio/ByteBuffer;

.field private zzj:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgkh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgks;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgks;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkh;->zza:Lcom/google/android/gms/internal/ads/zzgks;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzf:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzj:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzb:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzd:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzc:Z

    return-void
.end method

.method private final declared-synchronized zzd()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkh;->zza:Lcom/google/android/gms/internal/ads/zzgks;

    const-string v1, "mem mapping "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 1
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgks;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzg:Lcom/google/android/gms/internal/ads/zzgkm;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zze:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzf:J

    .line 2
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgkm;->zze(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzi:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 1
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 3
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzxq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzh:Lcom/google/android/gms/internal/ads/zzxq;

    return-void
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgkm;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzxm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zze:J

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzf:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzg:Lcom/google/android/gms/internal/ads/zzgkm;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzd(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzd:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzc:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkh;->zzg()V

    return-void
.end method

.method protected abstract zzf(Ljava/nio/ByteBuffer;)V
.end method

.method public final declared-synchronized zzg()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgkh;->zzd()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkh;->zza:Lcom/google/android/gms/internal/ads/zzgks;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzb:Ljava/lang/String;

    const-string v2, "parsing details of "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/String;

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgks;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzi:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzc:Z

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgkh;->zzf(Ljava/nio/ByteBuffer;)V

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzj:Ljava/nio/ByteBuffer;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkh;->zzi:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
