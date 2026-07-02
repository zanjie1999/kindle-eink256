.class final Lcom/google/android/gms/internal/ads/zztj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzox;

.field private final zzb:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzalv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzalu;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzamg;

.field private final zze:[B

.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private final zzi:Lcom/google/android/gms/internal/ads/zzti;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzti;

.field private zzk:Z

.field private zzl:J

.field private zzm:J

.field private zzn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzox;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzox;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zzb:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    .line 2
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zzc:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzti;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzti;-><init>(Lcom/google/android/gms/internal/ads/zzth;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zzi:Lcom/google/android/gms/internal/ads/zzti;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzti;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzti;-><init>(Lcom/google/android/gms/internal/ads/zzth;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zzj:Lcom/google/android/gms/internal/ads/zzti;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zze:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzamg;

    const/4 p3, 0x0

    .line 3
    invoke-direct {p2, p1, p3, p3}, Lcom/google/android/gms/internal/ads/zzamg;-><init>([BII)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztj;->zzd:Lcom/google/android/gms/internal/ads/zzamg;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zztj;->zzk:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzalv;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzb:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzalv;->zzd:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzalu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzc:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzalu;->zza:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzk:Z

    return-void
.end method

.method public final zzd(JIJ)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zztj;->zzf:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zztj;->zzh:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztj;->zzg:J

    return-void
.end method

.method public final zze(JIZZ)Z
    .locals 14

    move-object v0, p0

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zztj;->zzf:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztj;->zzk:Z

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zztj;->zzg:J

    sub-long v6, p1, v4

    long-to-int v1, v6

    add-int v11, p3, v1

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zztj;->zzm:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v9

    if-eqz v1, :cond_1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zztj;->zzn:Z

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zztj;->zzl:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zztj;->zza:Lcom/google/android/gms/internal/ads/zzox;

    sub-long/2addr v4, v12

    long-to-int v10, v4

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    :cond_1
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zztj;->zzg:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zztj;->zzl:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zztj;->zzh:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zztj;->zzm:J

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zztj;->zzn:Z

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zztj;->zzk:Z

    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztj;->zzn:Z

    iget v4, v0, Lcom/google/android/gms/internal/ads/zztj;->zzf:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    if-eqz p5, :cond_3

    if-ne v4, v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztj;->zzn:Z

    return v1
.end method
