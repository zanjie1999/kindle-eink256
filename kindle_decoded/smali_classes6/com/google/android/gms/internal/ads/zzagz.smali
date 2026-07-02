.class final Lcom/google/android/gms/internal/ads/zzagz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzagx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/gms/internal/ads/zzhe;",
            "Lcom/google/android/gms/internal/ads/zzagx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/zzagx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzagy;

.field private final zze:Lcom/google/android/gms/internal/ads/zzho;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfa;

.field private final zzg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/internal/ads/zzagx;",
            "Lcom/google/android/gms/internal/ads/zzagw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzagx;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Z

.field private zzj:Lcom/google/android/gms/internal/ads/zzay;

.field private zzk:Lcom/google/android/gms/internal/ads/zzix;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzagy;Lcom/google/android/gms/internal/ads/zzcy;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzd:Lcom/google/android/gms/internal/ads/zzagy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzix;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzix;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzk:Lcom/google/android/gms/internal/ads/zzix;

    new-instance p1, Ljava/util/IdentityHashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzb:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzc:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzho;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzho;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zze:Lcom/google/android/gms/internal/ads/zzho;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfa;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzf:Lcom/google/android/gms/internal/ads/zzfa;

    new-instance p1, Ljava/util/HashMap;

    .line 7
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzg:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    .line 8
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzh:Ljava/util/Set;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zze:Lcom/google/android/gms/internal/ads/zzho;

    .line 9
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzho;->zzb(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzf:Lcom/google/android/gms/internal/ads/zzfa;

    .line 10
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzfa;->zzb(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzfb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzagz;)Lcom/google/android/gms/internal/ads/zzho;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zze:Lcom/google/android/gms/internal/ads/zzho;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzagz;)Lcom/google/android/gms/internal/ads/zzfa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzf:Lcom/google/android/gms/internal/ads/zzfa;

    return-object p0
.end method

.method private final zzp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzh:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzagx;

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagx;->zzc:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzagz;->zzq(Lcom/google/android/gms/internal/ads/zzagx;)V

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzq(Lcom/google/android/gms/internal/ads/zzagx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzagw;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzagw;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzagw;->zzb:Lcom/google/android/gms/internal/ads/zzhg;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzq(Lcom/google/android/gms/internal/ads/zzhg;)V

    :cond_0
    return-void
.end method

.method private final zzr(II)V
    .locals 3

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzagx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzc:Ljava/util/Map;

    .line 2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagx;->zzb:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhb;->zzy()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v1

    neg-int v1, v1

    .line 5
    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzagz;->zzs(II)V

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzagx;->zze:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzi:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzagz;->zzu(Lcom/google/android/gms/internal/ads/zzagx;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzs(II)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzagx;

    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzagx;->zzd:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagx;->zzd:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzt(Lcom/google/android/gms/internal/ads/zzagx;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagu;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzagu;-><init>(Lcom/google/android/gms/internal/ads/zzagz;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagv;

    .line 3
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzagv;-><init>(Lcom/google/android/gms/internal/ads/zzagz;Lcom/google/android/gms/internal/ads/zzagx;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzg:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzagw;

    .line 4
    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzagw;-><init>(Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzhg;Lcom/google/android/gms/internal/ads/zzagv;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamq;->zzk()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Landroid/os/Handler;

    const/4 v4, 0x0

    .line 6
    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 7
    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzhh;->zzk(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhp;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamq;->zzk()Landroid/os/Looper;

    move-result-object p1

    new-instance v3, Landroid/os/Handler;

    .line 9
    invoke-direct {v3, p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 10
    invoke-interface {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzhh;->zzm(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzfb;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzj:Lcom/google/android/gms/internal/ads/zzay;

    .line 11
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzo(Lcom/google/android/gms/internal/ads/zzhg;Lcom/google/android/gms/internal/ads/zzay;)V

    return-void
.end method

.method private final zzu(Lcom/google/android/gms/internal/ads/zzagx;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzagx;->zze:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzagx;->zzc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzg:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzagw;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagw;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagw;->zzb:Lcom/google/android/gms/internal/ads/zzhg;

    .line 3
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzhh;->zzr(Lcom/google/android/gms/internal/ads/zzhg;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagw;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagw;->zzc:Lcom/google/android/gms/internal/ads/zzagv;

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzhh;->zzl(Lcom/google/android/gms/internal/ads/zzhp;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagw;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagw;->zzc:Lcom/google/android/gms/internal/ads/zzagv;

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzhh;->zzn(Lcom/google/android/gms/internal/ads/zzfb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzh:Ljava/util/Set;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public final zzc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzi:Z

    return v0
.end method

.method public final zzd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzay;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzi:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzj:Lcom/google/android/gms/internal/ads/zzay;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzagx;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzagz;->zzt(Lcom/google/android/gms/internal/ads/zzagx;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzh:Ljava/util/Set;

    .line 5
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzi:Z

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhe;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzb:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzagx;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzhb;->zzA(Lcom/google/android/gms/internal/ads/zzhe;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagx;->zzc:Ljava/util/List;

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgy;->zza:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzb:Ljava/util/IdentityHashMap;

    .line 4
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagz;->zzp()V

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzagz;->zzu(Lcom/google/android/gms/internal/ads/zzagx;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public final zzg()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzagw;

    .line 2
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagw;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzagw;->zzb:Lcom/google/android/gms/internal/ads/zzhg;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzhh;->zzr(Lcom/google/android/gms/internal/ads/zzhg;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    .line 3
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagw;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzagw;->zzc:Lcom/google/android/gms/internal/ads/zzagv;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzhh;->zzl(Lcom/google/android/gms/internal/ads/zzhp;)V

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagw;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagw;->zzc:Lcom/google/android/gms/internal/ads/zzagv;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzn(Lcom/google/android/gms/internal/ads/zzfb;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzg:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzh:Ljava/util/Set;

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzi:Z

    return-void
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzaiq;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    .line 3
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzagx;

    .line 4
    iput v1, v2, Lcom/google/android/gms/internal/ads/zzagx;->zzd:I

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhb;->zzy()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaht;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzk:Lcom/google/android/gms/internal/ads/zzix;

    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaht;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzix;[B)V

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzc:Lcom/google/android/gms/internal/ads/zzaiq;

    return-object v0
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzaiq;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzd:Lcom/google/android/gms/internal/ads/zzagy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzagy;->zzl()V

    return-void
.end method

.method public final zzj(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzaiq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzagx;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzix;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzaiq;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzagz;->zzr(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagz;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object p1

    return-object p1
.end method

.method public final zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzaiq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzagx;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzix;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzaiq;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzk:Lcom/google/android/gms/internal/ads/zzix;

    move p3, p1

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzagx;

    if-lez p3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzagx;

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhb;->zzy()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v2

    .line 6
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzagx;->zzd:I

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v2

    add-int/2addr v1, v2

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzagx;->zza(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzagx;->zza(I)V

    .line 9
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhb;->zzy()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v1

    .line 11
    invoke-direct {p0, p3, v1}, Lcom/google/android/gms/internal/ads/zzagz;->zzs(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zza:Ljava/util/List;

    .line 12
    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzc:Ljava/util/Map;

    .line 13
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagx;->zzb:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzi:Z

    if-eqz v1, :cond_2

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzagz;->zzt(Lcom/google/android/gms/internal/ads/zzagx;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzb:Ljava/util/IdentityHashMap;

    .line 15
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzh:Ljava/util/Set;

    .line 16
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzagz;->zzq(Lcom/google/android/gms/internal/ads/zzagx;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzagz;->zzh()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(IILcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzaiq;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzagz;->zzd()I

    move-result v1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzk:Lcom/google/android/gms/internal/ads/zzix;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagz;->zzr(II)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzagz;->zzh()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object p1

    return-object p1
.end method

.method public final zzm(IIILcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzaiq;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzagz;->zzd()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzk:Lcom/google/android/gms/internal/ads/zzix;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzagz;->zzh()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object p1

    return-object p1
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzaiq;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzagz;->zzd()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzix;->zza()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzix;->zzh()Lcom/google/android/gms/internal/ads/zzix;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzix;->zzf(II)Lcom/google/android/gms/internal/ads/zzix;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzk:Lcom/google/android/gms/internal/ads/zzix;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzagz;->zzh()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object p1

    return-object p1
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzko;J)Lcom/google/android/gms/internal/ads/zzhe;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhf;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzc:Ljava/util/Map;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzagx;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzh:Ljava/util/Set;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzg:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzagw;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzagw;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagw;->zzb:Lcom/google/android/gms/internal/ads/zzhg;

    .line 7
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzp(Lcom/google/android/gms/internal/ads/zzhg;)V

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagx;->zzc:Ljava/util/List;

    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    .line 9
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzhb;->zzB(Lcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzko;J)Lcom/google/android/gms/internal/ads/zzgy;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzagz;->zzb:Ljava/util/IdentityHashMap;

    .line 10
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagz;->zzp()V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 12
    throw p1
.end method
