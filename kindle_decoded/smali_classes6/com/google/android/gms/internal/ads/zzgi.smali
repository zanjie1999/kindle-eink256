.class public abstract Lcom/google/android/gms/internal/ads/zzgi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhh;


# instance fields
.field private final zza:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzhg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzhg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzho;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfa;

.field private zze:Landroid/os/Looper;

.field private zzf:Lcom/google/android/gms/internal/ads/zzaiq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zza:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzho;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzho;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfa;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzd:Lcom/google/android/gms/internal/ads/zzfa;

    return-void
.end method


# virtual methods
.method protected zzF()V
    .locals 0

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzay;)V
.end method

.method protected zzc()V
    .locals 0

    return-void
.end method

.method protected abstract zzd()V
.end method

.method protected final zze(Lcom/google/android/gms/internal/ads/zzaiq;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzf:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zza:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhg;

    .line 2
    invoke-interface {v3, p0, p1}, Lcom/google/android/gms/internal/ads/zzhg;->zza(Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzaiq;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final zzf(Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzho;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzho;->zza(ILcom/google/android/gms/internal/ads/zzhf;J)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object p1

    return-object p1
.end method

.method protected final zzg(ILcom/google/android/gms/internal/ads/zzhf;J)Lcom/google/android/gms/internal/ads/zzho;
    .locals 2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzho;->zza(ILcom/google/android/gms/internal/ads/zzhf;J)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object p1

    return-object p1
.end method

.method protected final zzh(Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzfa;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzd:Lcom/google/android/gms/internal/ads/zzfa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfa;->zza(ILcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object p1

    return-object p1
.end method

.method protected final zzi(ILcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzfa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzd:Lcom/google/android/gms/internal/ads/zzfa;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfa;->zza(ILcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzfa;

    move-result-object p1

    return-object p1
.end method

.method protected final zzj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhp;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzho;->zzb(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhp;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzhp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzc:Lcom/google/android/gms/internal/ads/zzho;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzho;->zzc(Lcom/google/android/gms/internal/ads/zzhp;)V

    return-void
.end method

.method public final zzm(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzfb;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzd:Lcom/google/android/gms/internal/ads/zzfa;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfa;->zzb(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzfb;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzfb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzd:Lcom/google/android/gms/internal/ads/zzfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->zzc(Lcom/google/android/gms/internal/ads/zzfb;)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzhg;Lcom/google/android/gms/internal/ads/zzay;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zze:Landroid/os/Looper;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzf:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgi;->zza:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgi;->zze:Landroid/os/Looper;

    if-nez v2, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zze:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgi;->zza(Lcom/google/android/gms/internal/ads/zzay;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgi;->zzp(Lcom/google/android/gms/internal/ads/zzhg;)V

    .line 7
    invoke-interface {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzhg;->zza(Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzaiq;)V

    :cond_3
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzhg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zze:Landroid/os/Looper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgi;->zzF()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzhg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    xor-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgi;->zzc()V

    :cond_0
    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzhg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zza:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zza:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zze:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzf:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzb:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgi;->zzd()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgi;->zzq(Lcom/google/android/gms/internal/ads/zzhg;)V

    return-void
.end method

.method public final zzs()Lcom/google/android/gms/internal/ads/zzaiq;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
