.class public final Lcom/google/android/gms/internal/ads/zzbuk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbtw<",
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

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbts;

.field private final zzd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbts;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtz;Lcom/google/android/gms/internal/ads/zzbty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbts;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbtz<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/zzbty<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbuk;->zzc:Lcom/google/android/gms/internal/ads/zzbts;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbuk;->zzd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbuk;->zzb:Lcom/google/android/gms/internal/ads/zzbtz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbuk;->zza:Lcom/google/android/gms/internal/ads/zzbty;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzbuk;)Lcom/google/android/gms/internal/ads/zzbty;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbuk;->zza:Lcom/google/android/gms/internal/ads/zzbty;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbuk;Lcom/google/android/gms/internal/ads/zzbtm;Lcom/google/android/gms/internal/ads/zzbtt;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzchl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbtm;",
            "Lcom/google/android/gms/internal/ads/zzbtt;",
            "TI;",
            "Lcom/google/android/gms/internal/ads/zzchl<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbpq;->zzo:Lcom/google/android/gms/internal/ads/zzbqf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbuj;-><init>(Lcom/google/android/gms/internal/ads/zzbuk;Lcom/google/android/gms/internal/ads/zzbtm;Lcom/google/android/gms/internal/ads/zzchl;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbqf;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqe;)V

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 5
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbuk;->zzb:Lcom/google/android/gms/internal/ads/zzbtz;

    .line 6
    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/ads/zzbtz;->zzb(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbuk;->zzd:Ljava/lang/String;

    .line 7
    invoke-interface {p2, p0, v1}, Lcom/google/android/gms/internal/ads/zzbsw;->zzr(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 8
    :try_start_1
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/zzchl;->zzd(Ljava/lang/Throwable;)Z

    const-string p2, "Unable to invokeJavascript"

    .line 9
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtm;->zzb()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbtm;->zzb()V

    .line 11
    throw p0
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbuk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchl;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbuk;->zzc:Lcom/google/android/gms/internal/ads/zzbts;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbts;->zzg(Lcom/google/android/gms/internal/ads/zzaas;)Lcom/google/android/gms/internal/ads/zzbtm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbuh;

    .line 3
    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbuh;-><init>(Lcom/google/android/gms/internal/ads/zzbuk;Lcom/google/android/gms/internal/ads/zzbtm;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzchl;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbui;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbui;-><init>(Lcom/google/android/gms/internal/ads/zzbuk;Lcom/google/android/gms/internal/ads/zzchl;Lcom/google/android/gms/internal/ads/zzbtm;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzchs;->zzf(Lcom/google/android/gms/internal/ads/zzchp;Lcom/google/android/gms/internal/ads/zzchn;)V

    return-object v0
.end method
