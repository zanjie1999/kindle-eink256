.class public final Lcom/google/android/gms/internal/ads/zzdai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfes;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzc:Landroid/content/pm/ApplicationInfo;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Landroid/content/pm/PackageInfo;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzgku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgku<",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzesb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzesb<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfes;Lcom/google/android/gms/internal/ads/zzcgz;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/zzgku;Lcom/google/android/gms/ads/internal/util/zzg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfes;",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Lcom/google/android/gms/internal/ads/zzgku<",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/gms/ads/internal/util/zzg;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzesb<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdai;->zza:Lcom/google/android/gms/internal/ads/zzfes;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzb:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzc:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdai;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzf:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzg:Lcom/google/android/gms/internal/ads/zzgku;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzh:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzi:Lcom/google/android/gms/internal/ads/zzesb;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdai;->zza:Lcom/google/android/gms/internal/ads/zzfes;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfem;->zza:Lcom/google/android/gms/internal/ads/zzfem;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzi:Lcom/google/android/gms/internal/ads/zzesb;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzesb;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfed;->zza(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfek;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfej;->zzi()Lcom/google/android/gms/internal/ads/zzfdy;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdai;->zza()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdai;->zza:Lcom/google/android/gms/internal/ads/zzfes;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfem;->zzb:Lcom/google/android/gms/internal/ads/zzfem;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzfsm;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzg:Lcom/google/android/gms/internal/ads/zzgku;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgku;->zzb()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfsm;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfek;->zzf(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfea;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdah;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdah;-><init>(Lcom/google/android/gms/internal/ads/zzdai;Lcom/google/android/gms/internal/ads/zzfsm;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfea;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfej;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfej;->zzi()Lcom/google/android/gms/internal/ads/zzfdy;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzcbj;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v11, Lcom/google/android/gms/internal/ads/zzcbj;

    .line 2
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzb:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzc:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdai;->zze:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzf:Landroid/content/pm/PackageInfo;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzg:Lcom/google/android/gms/internal/ads/zzgku;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgku;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfsm;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzdai;->zzh:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzcbj;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzcgz;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfcj;Ljava/lang/String;)V

    return-object v11
.end method
