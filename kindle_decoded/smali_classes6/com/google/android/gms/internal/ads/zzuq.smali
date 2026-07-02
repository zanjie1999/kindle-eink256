.class final Lcom/google/android/gms/internal/ads/zzuq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:[Lcom/google/android/gms/internal/ads/zzox;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuq;->zza:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzox;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzb:[Lcom/google/android/gms/internal/ads/zzox;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzb:[Lcom/google/android/gms/internal/ads/zzox;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzuq;->zza:Ljava/util/List;

    .line 4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzafv;

    .line 5
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v5, "application/cea-608"

    .line 6
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Invalid closed caption mime type provided: "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 17
    :cond_2
    new-instance v5, Ljava/lang/String;

    .line 7
    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 8
    :goto_2
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzakt;->zzb(ZLjava/lang/Object;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaft;

    .line 9
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 11
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzd:I

    .line 12
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzH(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    .line 13
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzD:I

    .line 14
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzaf(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    .line 15
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v3

    .line 9
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzb:[Lcom/google/android/gms/internal/ads/zzox;

    .line 17
    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final zzb(JLcom/google/android/gms/internal/ads/zzamf;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v0

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v1

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    const v0, 0x47413934

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuq;->zzb:[Lcom/google/android/gms/internal/ads/zzox;

    .line 5
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zznm;->zzb(JLcom/google/android/gms/internal/ads/zzamf;[Lcom/google/android/gms/internal/ads/zzox;)V

    :cond_1
    return-void
.end method
