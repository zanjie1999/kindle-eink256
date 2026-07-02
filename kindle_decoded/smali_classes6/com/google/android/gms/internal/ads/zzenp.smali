.class public final Lcom/google/android/gms/internal/ads/zzenp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzery<",
        "Lcom/google/android/gms/internal/ads/zzenq;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/appset/AppSetIdClient;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenp;->zza:Lcom/google/android/gms/appset/AppSetIdClient;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzenq;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzbO:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenp;->zza:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzflc;->zza(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeno;->zza:Lcom/google/android/gms/internal/ads/zzfln;

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenq;

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzenq;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfsd;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method
