.class public final Lcom/google/android/gms/internal/ads/zzjo;
.super Lcom/google/android/gms/internal/ads/zzv;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Z

.field private zzd:Z

.field private zze:Z

.field private final zzf:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzs;",
            "Lcom/google/android/gms/internal/ads/zzjq;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzg:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzv;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzf:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzg:Landroid/util/SparseBooleanArray;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjo;->zzt()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzv;-><init>()V

    .line 6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzv;->zzk(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzv;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzamq;->zzaa(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 8
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzjo;->zzj(IIZ)Lcom/google/android/gms/internal/ads/zzv;

    new-instance p1, Landroid/util/SparseArray;

    .line 9
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzf:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 10
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzg:Landroid/util/SparseBooleanArray;

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjo;->zzt()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzjn;Lcom/google/android/gms/internal/ads/zzjk;)V
    .locals 5

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzv;-><init>(Lcom/google/android/gms/internal/ads/zzw;)V

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzD:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzjo;->zza:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzF:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzb:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzG:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzc:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzK:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzd:Z

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzM:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzjo;->zze:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzjn;->zza(Lcom/google/android/gms/internal/ads/zzjn;)Landroid/util/SparseArray;

    move-result-object p2

    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 15
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzf:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzjn;->zzb(Lcom/google/android/gms/internal/ads/zzjn;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzg:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzjo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zza:Z

    return p0
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzjo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzb:Z

    return p0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/ads/zzjo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzc:Z

    return p0
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/ads/zzjo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzd:Z

    return p0
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/ads/zzjo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zze:Z

    return p0
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/ads/zzjo;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzf:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/ads/zzjo;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzg:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private final zzt()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zza:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zze:Z

    return-void
.end method


# virtual methods
.method public final zzs(IZ)Lcom/google/android/gms/internal/ads/zzjo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzg:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzg:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzg:Landroid/util/SparseBooleanArray;

    .line 3
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    return-object p0
.end method
