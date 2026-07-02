.class public final Lcom/google/android/gms/internal/ads/zzol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzol;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzaiv;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzol;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zznp;

    const/16 v5, 0xa

    invoke-virtual {v4, v3, v0, v5, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzol;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzol;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_0

    goto :goto_2

    .line 11
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzol;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v4, 0x3

    .line 4
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzol;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzA()I

    move-result v3

    add-int/lit8 v4, v3, 0xa

    if-nez v1, :cond_1

    new-array v1, v4, [B

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzol;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v6

    .line 6
    invoke-static {v6, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zznp;

    .line 7
    invoke-virtual {v6, v1, v5, v3, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaix;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzaix;-><init>()V

    .line 8
    invoke-static {v1, v4, p2, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zza([BILcom/google/android/gms/internal/ads/zzaju;Lcom/google/android/gms/internal/ads/zzaix;)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zznp;

    .line 9
    invoke-virtual {v5, v3, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    :goto_1
    add-int/2addr v2, v4

    goto :goto_0

    .line 10
    :catch_0
    :goto_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    .line 11
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    return-object v1
.end method
