.class public final Lcom/google/android/gms/internal/ads/zzeaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfsn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeag;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgku<",
            "Lcom/google/android/gms/internal/ads/zzebq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfsn;Lcom/google/android/gms/internal/ads/zzeag;Lcom/google/android/gms/internal/ads/zzgku;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfsn;",
            "Lcom/google/android/gms/internal/ads/zzeag;",
            "Lcom/google/android/gms/internal/ads/zzgku<",
            "Lcom/google/android/gms/internal/ads/zzebq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaz;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeaz;->zzb:Lcom/google/android/gms/internal/ads/zzeag;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeaz;->zzc:Lcom/google/android/gms/internal/ads/zzgku;

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzeay;Lcom/google/android/gms/internal/ads/zzeay;Lcom/google/android/gms/internal/ads/zzfrk;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RetT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            "Lcom/google/android/gms/internal/ads/zzeay<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeay<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfrk<",
            "Ljava/io/InputStream;",
            "TRetT;>;)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TRetT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zzd:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeap;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzeay;->zzb(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p2

    const-class v0, Ljava/util/concurrent/ExecutionException;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeaq;->zza:Lcom/google/android/gms/internal/ads/zzfrk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeaz;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 5
    invoke-static {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzg(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p2

    .line 6
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfru;->zzw(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfru;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaz;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 7
    invoke-static {p2, p4, v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzear;

    .line 8
    invoke-direct {v0, p0, p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzear;-><init>(Lcom/google/android/gms/internal/ads/zzeaz;Lcom/google/android/gms/internal/ads/zzeay;Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzfrk;)V

    const-class p1, Lcom/google/android/gms/internal/ads/zzeap;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzeaz;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 9
    invoke-static {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzg(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeas;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzeas;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaz;->zzb:Lcom/google/android/gms/internal/ads/zzeag;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeat;->zza(Lcom/google/android/gms/internal/ads/zzeag;)Lcom/google/android/gms/internal/ads/zzeay;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeau;

    .line 2
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzeau;-><init>(Lcom/google/android/gms/internal/ads/zzeaz;)V

    .line 3
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzeaz;->zzg(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzeay;Lcom/google/android/gms/internal/ads/zzeay;Lcom/google/android/gms/internal/ads/zzfrk;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zzj:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabu;->zze(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdym;

    const/4 v0, 0x2

    const-string v1, "Pool key missing from removeUrl call."

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzc(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeav;->zza:Lcom/google/android/gms/internal/ads/zzfrk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeaw;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeaw;-><init>(Lcom/google/android/gms/internal/ads/zzeaz;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeax;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzeax;-><init>(Lcom/google/android/gms/internal/ads/zzeaz;)V

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzeaz;->zzg(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzeay;Lcom/google/android/gms/internal/ads/zzeay;Lcom/google/android/gms/internal/ads/zzfrk;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaz;->zzc:Lcom/google/android/gms/internal/ads/zzgku;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgku;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzebq;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbld;->zzd:Lcom/google/android/gms/internal/ads/zzbkn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zzh:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zzj:Ljava/lang/String;

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzebq;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaz;->zzb:Lcom/google/android/gms/internal/ads/zzeag;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbld;->zzd:Lcom/google/android/gms/internal/ads/zzbkn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zzh:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->zzj:Ljava/lang/String;

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeag;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaz;->zzc:Lcom/google/android/gms/internal/ads/zzgku;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgku;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzebq;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzebq;->zzc(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf(Lcom/google/android/gms/internal/ads/zzeay;Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/zzfrk;Lcom/google/android/gms/internal/ads/zzeap;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzeay;->zzb(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeaz;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
