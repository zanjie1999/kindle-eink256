.class public final Lcom/google/android/gms/internal/ads/zzest;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzery<",
        "Lcom/google/android/gms/internal/ads/zzesu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Landroid/content/pm/PackageInfo;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcfw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfw;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/pm/PackageInfo;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzest;->zzd:Lcom/google/android/gms/internal/ads/zzcfw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzest;->zza:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzest;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzest;->zzc:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzesu;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzest;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzesr;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzest;->zza:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzess;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzess;-><init>(Lcom/google/android/gms/internal/ads/zzest;)V

    const-class v2, Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzest;->zza:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzfsd;->zzg(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzesu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzest;->zzb:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzesu;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method
