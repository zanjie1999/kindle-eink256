.class public final Lcom/google/android/gms/internal/ads/zzbhj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final zza:Ljava/util/Date;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:I

.field private final zze:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Landroid/location/Location;

.field private final zzg:Landroid/os/Bundle;

.field private final zzh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzi:Ljava/lang/String;

.field private final zzj:Ljava/lang/String;

.field private final zzk:Lcom/google/android/gms/ads/search/SearchAdRequest;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private final zzl:I

.field private final zzm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzn:Landroid/os/Bundle;

.field private final zzo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzp:Z

.field private final zzq:Lcom/google/android/gms/ads/query/AdInfo;

.field private final zzr:Ljava/lang/String;

.field private final zzs:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbhi;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzg(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zza:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzh(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzi(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzc:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzj(Lcom/google/android/gms/internal/ads/zzbhi;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zza(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zze:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzk(Lcom/google/android/gms/internal/ads/zzbhi;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzf:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzb(Lcom/google/android/gms/internal/ads/zzbhi;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzg:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzc(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/util/HashMap;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzh:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzl(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzi:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzm(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzj:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzk:Lcom/google/android/gms/ads/search/SearchAdRequest;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzn(Lcom/google/android/gms/internal/ads/zzbhi;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzl:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzd(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/util/HashSet;

    move-result-object p2

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzm:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zze(Lcom/google/android/gms/internal/ads/zzbhi;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzn:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzf(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/util/HashSet;

    move-result-object p2

    .line 4
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzo:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzo(Lcom/google/android/gms/internal/ads/zzbhi;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzp:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzp(Lcom/google/android/gms/internal/ads/zzbhi;)Lcom/google/android/gms/ads/query/AdInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzq:Lcom/google/android/gms/ads/query/AdInfo;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzq(Lcom/google/android/gms/internal/ads/zzbhi;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzr:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhi;->zzr(Lcom/google/android/gms/internal/ads/zzbhi;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzs:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zza:Ljava/util/Date;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzc:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final zzd()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:I

    return v0
.end method

.method public final zze()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zze:Ljava/util/Set;

    return-object v0
.end method

.method public final zzf()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzf:Landroid/location/Location;

    return-object v0
.end method

.method public final zzh(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzg:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzk:Lcom/google/android/gms/ads/search/SearchAdRequest;

    return-object v0
.end method

.method public final zzm(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhs;->zze()Lcom/google/android/gms/internal/ads/zzbhs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhs;->zzr()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgm;->zzt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzm:Ljava/util/Set;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTestDeviceIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzn()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzh:Ljava/util/Map;

    return-object v0
.end method

.method public final zzo()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzg:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzl:I

    return v0
.end method

.method public final zzq()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzn:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzr()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzo:Ljava/util/Set;

    return-object v0
.end method

.method public final zzs()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzp:Z

    return v0
.end method

.method public final zzt()Lcom/google/android/gms/ads/query/AdInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzq:Lcom/google/android/gms/ads/query/AdInfo;

    return-object v0
.end method

.method public final zzu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzs:I

    return v0
.end method
