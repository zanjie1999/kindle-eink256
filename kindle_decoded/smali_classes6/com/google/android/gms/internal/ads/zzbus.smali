.class public final Lcom/google/android/gms/internal/ads/zzbus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzfrk<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbty<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbtz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbtz<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzbtt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzbty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzbtt;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbtz<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzbty<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzd:Lcom/google/android/gms/internal/ads/zzfsm;

    const-string p1, "google.afma.activeView.handleUpdate"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzb:Lcom/google/android/gms/internal/ads/zzbtz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbus;->zza:Lcom/google/android/gms/internal/ads/zzbty;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbus;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzd:Lcom/google/android/gms/internal/ads/zzfsm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbuq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbuq;-><init>(Lcom/google/android/gms/internal/ads/zzbus;Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzi(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbtt;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbpq;->zzo:Lcom/google/android/gms/internal/ads/zzbqf;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbur;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzbur;-><init>(Lcom/google/android/gms/internal/ads/zzbus;Lcom/google/android/gms/internal/ads/zzchl;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbqf;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqe;)V

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    .line 6
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "args"

    .line 8
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbus;->zzc:Ljava/lang/String;

    .line 9
    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzbsw;->zzr(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method
