.class public final Lcom/google/android/gms/internal/ads/zzewp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzdal<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzcxg;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzexo<",
        "TR;",
        "Lcom/google/android/gms/internal/ads/zzfcl<",
        "TR;TAdT;>;>;"
    }
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzdal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfst;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzewp;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewp;->zza:Lcom/google/android/gms/internal/ads/zzdal;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzexp;",
            "Lcom/google/android/gms/internal/ads/zzexn<",
            "TR;>;TR;)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzfcl<",
            "TR;TAdT;>;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzexp;->zzb:Lcom/google/android/gms/internal/ads/zzexm;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzexn;->zza(Lcom/google/android/gms/internal/ads/zzexm;)Lcom/google/android/gms/internal/ads/zzdak;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzexu;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzexu;-><init>(Z)V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdak;->zzh(Lcom/google/android/gms/internal/ads/zzexu;)Lcom/google/android/gms/internal/ads/zzdak;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdak;->zzf()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdal;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewp;->zza:Lcom/google/android/gms/internal/ads/zzdal;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdal;->zzP()Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfcl;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzfcl;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcyj;->zzc()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p3

    .line 6
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfru;->zzw(Lcom/google/android/gms/internal/ads/zzfsm;)Lcom/google/android/gms/internal/ads/zzfru;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzewn;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzewn;-><init>(Lcom/google/android/gms/internal/ads/zzewp;Lcom/google/android/gms/internal/ads/zzfcl;Lcom/google/android/gms/internal/ads/zzcyj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzewp;->zzb:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    new-instance p3, Lcom/google/android/gms/internal/ads/zzewo;

    .line 8
    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzewo;-><init>(Lcom/google/android/gms/internal/ads/zzfcl;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzewp;->zzb:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzexn;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzewp;->zzb(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/internal/ads/zzexn;Lcom/google/android/gms/internal/ads/zzdal;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewp;->zza:Lcom/google/android/gms/internal/ads/zzdal;

    return-object v0
.end method
