.class public Lcom/google/android/gms/internal/ads/zzgkl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;
.implements Lcom/google/android/gms/internal/ads/zzxq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/android/gms/internal/ads/zzxp;",
        ">;",
        "Ljava/io/Closeable;",
        "Lcom/google/android/gms/internal/ads/zzxq;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzxp;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgks;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/ads/zzxm;

.field protected zzd:Lcom/google/android/gms/internal/ads/zzgkm;

.field zze:Lcom/google/android/gms/internal/ads/zzxp;

.field zzf:J

.field zzg:J

.field private final zzh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzxp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkk;

    const-string v1, "eof "

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgkk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkl;->zza:Lcom/google/android/gms/internal/ads/zzxp;

    const-class v0, Lcom/google/android/gms/internal/ads/zzgkl;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgks;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgks;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkl;->zzb:Lcom/google/android/gms/internal/ads/zzgks;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zze:Lcom/google/android/gms/internal/ads/zzxp;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzg:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzh:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final hasNext()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zze:Lcom/google/android/gms/internal/ads/zzxp;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgkl;->zza:Lcom/google/android/gms/internal/ads/zzxp;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkl;->zzf()Lcom/google/android/gms/internal/ads/zzxp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zze:Lcom/google/android/gms/internal/ads/zzxp;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkl;->zza:Lcom/google/android/gms/internal/ads/zzxp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zze:Lcom/google/android/gms/internal/ads/zzxp;

    return v2
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgkl;->zzf()Lcom/google/android/gms/internal/ads/zzxp;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzh:Ljava/util/List;

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ";"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzh:Ljava/util/List;

    .line 5
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzxp;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzxp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzd:Lcom/google/android/gms/internal/ads/zzgkm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zze:Lcom/google/android/gms/internal/ads/zzxp;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgkl;->zza:Lcom/google/android/gms/internal/ads/zzxp;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzh:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgkr;-><init>(Ljava/util/List;Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzh:Ljava/util/List;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzgkm;JLcom/google/android/gms/internal/ads/zzxm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzd:Lcom/google/android/gms/internal/ads/zzgkm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzf:J

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzd(J)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzg:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzc:Lcom/google/android/gms/internal/ads/zzxm;

    return-void
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzxp;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zze:Lcom/google/android/gms/internal/ads/zzxp;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgkl;->zza:Lcom/google/android/gms/internal/ads/zzxp;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zze:Lcom/google/android/gms/internal/ads/zzxp;

    return-object v0

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzd:Lcom/google/android/gms/internal/ads/zzgkm;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzf:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzg:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzd:Lcom/google/android/gms/internal/ads/zzgkm;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzf:J

    .line 2
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgkm;->zzd(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzc:Lcom/google/android/gms/internal/ads/zzxm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzd:Lcom/google/android/gms/internal/ads/zzgkm;

    .line 3
    invoke-interface {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzxm;->zzb(Lcom/google/android/gms/internal/ads/zzgkm;Lcom/google/android/gms/internal/ads/zzxq;)Lcom/google/android/gms/internal/ads/zzxp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzd:Lcom/google/android/gms/internal/ads/zzgkm;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzgkm;->zzc()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zzf:J

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 8
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 7
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 5
    :catch_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 8
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkl;->zza:Lcom/google/android/gms/internal/ads/zzxp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkl;->zze:Lcom/google/android/gms/internal/ads/zzxp;

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
