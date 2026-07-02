.class public final Lcom/google/android/gms/internal/ads/zzcki;
.super Lcom/google/android/gms/internal/ads/zzcis;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzauo;
.implements Lcom/google/android/gms/internal/ads/zzasm;
.implements Lcom/google/android/gms/internal/ads/zzavy;
.implements Lcom/google/android/gms/internal/ads/zzaoj;
.implements Lcom/google/android/gms/internal/ads/zzamz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzcis;",
        "Lcom/google/android/gms/internal/ads/zzauo;",
        "Lcom/google/android/gms/internal/ads/zzasm;",
        "Lcom/google/android/gms/internal/ads/zzavy;",
        "Lcom/google/android/gms/internal/ads/zzaoj;",
        "Lcom/google/android/gms/internal/ads/zzamz;"
    }
.end annotation


# static fields
.field public static final synthetic zzc:I


# instance fields
.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcjy;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzanr;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzanr;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzatq;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcja;

.field private zzj:Lcom/google/android/gms/internal/ads/zzanc;

.field private zzk:Ljava/nio/ByteBuffer;

.field private zzl:Z

.field private final zzm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzcjb;",
            ">;"
        }
    .end annotation
.end field

.field private zzn:Lcom/google/android/gms/internal/ads/zzcir;

.field private zzo:I

.field private zzp:I

.field private zzq:J

.field private final zzr:Ljava/lang/String;

.field private final zzs:I

.field private final zzt:Ljava/lang/Object;

.field private final zzu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzaui;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzv:Lcom/google/android/gms/internal/ads/zzcjx;

.field private final zzw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzcju;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcja;Lcom/google/android/gms/internal/ads/zzcjb;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcis;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzt:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzw:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzd:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzi:Lcom/google/android/gms/internal/ads/zzcja;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzm:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjy;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcjy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    .line 4
    new-instance v8, Lcom/google/android/gms/internal/ads/zzavn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzd:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzark;->zza:Lcom/google/android/gms/internal/ads/zzark;

    sget-object v5, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    const-wide/16 v3, 0x0

    const/4 v7, -0x1

    move-object v0, v8

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzavn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzark;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzavy;I)V

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzf:Lcom/google/android/gms/internal/ads/zzanr;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaox;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzark;->zza:Lcom/google/android/gms/internal/ads/zzark;

    sget-object v4, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    move-object v5, p0

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaox;-><init>(Lcom/google/android/gms/internal/ads/zzark;Lcom/google/android/gms/internal/ads/zzapl;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaoj;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzg:Lcom/google/android/gms/internal/ads/zzanr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatm;

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzatm;-><init>(Lcom/google/android/gms/internal/ads/zzatr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzh:Lcom/google/android/gms/internal/ads/zzatq;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ForkedExoPlayerAdapter initialize "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcis;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzanr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzg:Lcom/google/android/gms/internal/ads/zzanr;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzf:Lcom/google/android/gms/internal/ads/zzanr;

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzh:Lcom/google/android/gms/internal/ads/zzatq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcki;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    .line 10
    invoke-static {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzand;->zza([Lcom/google/android/gms/internal/ads/zzanr;Lcom/google/android/gms/internal/ads/zzatu;Lcom/google/android/gms/internal/ads/zzcjy;)Lcom/google/android/gms/internal/ads/zzanc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    .line 11
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzanc;->zza(Lcom/google/android/gms/internal/ads/zzamz;)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzo:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzq:J

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzp:I

    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzu:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzv:Lcom/google/android/gms/internal/ads/zzcjx;

    if-eqz p3, :cond_1

    .line 13
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzr:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 14
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzp()I

    move-result v3

    :cond_2
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzs:I

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzn:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanc;->zzo()V

    :cond_3
    if-eqz p3, :cond_4

    .line 18
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzD()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    .line 19
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzD()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzanc;->zzp(I)V

    :cond_4
    if-eqz p3, :cond_5

    .line 20
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzE()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    .line 21
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzE()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzanc;->zzq(I)V

    :cond_5
    return-void
.end method

.method private final zzY()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzv:Lcom/google/android/gms/internal/ads/zzcjx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzv:Lcom/google/android/gms/internal/ads/zzcjx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjx;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcis;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForkedExoPlayerAdapter finalize "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzA()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzB()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanc;->zzc()I

    move-result v0

    return v0
.end method

.method public final zzC()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanc;->zzm()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzD()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanc;->zzf()Z

    move-result v0

    return v0
.end method

.method public final zzE(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzanc;->zze(Z)V

    return-void
.end method

.method public final zzF(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjy;->zzg(I)V

    return-void
.end method

.method public final zzG(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjy;->zzh(I)V

    return-void
.end method

.method public final zzH()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanc;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzI()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcki;->zzY()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzo:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzJ()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcki;->zzY()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzv:Lcom/google/android/gms/internal/ads/zzcjx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjx;->zzg()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzo:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzv:Lcom/google/android/gms/internal/ads/zzcjx;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcjx;->zzi()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzK()J
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcki;->zzY()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzt:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzu:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzq:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzu:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaui;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaui;->zze()Ljava/util/Map;

    move-result-object v3

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 6
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "content-length"

    .line 7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzflf;->zze(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 9
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-long/2addr v1, v5

    :try_start_2
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzq:J

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzq:J

    return-wide v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzv:Lcom/google/android/gms/internal/ads/zzcjx;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjx;->zzj()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzp:I

    return v0
.end method

.method public final zzM(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzh:Lcom/google/android/gms/internal/ads/zzatq;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzatq;->zzc(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzN()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanc;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzO()J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzo:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final zzR(Lcom/google/android/gms/internal/ads/zzatz;Lcom/google/android/gms/internal/ads/zzaub;)V
    .locals 2

    .line 1
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzaui;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzt:Ljava/lang/Object;

    .line 2
    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzu:Ljava/util/ArrayList;

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaui;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzcjx;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzv:Lcom/google/android/gms/internal/ads/zzcjx;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzm:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjb;

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzbl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzv:Lcom/google/android/gms/internal/ads/zzcjx;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcjx;->zze()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    .line 11
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzv:Lcom/google/android/gms/internal/ads/zzcjx;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjx;->zzg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcacheHit"

    .line 13
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzv:Lcom/google/android/gms/internal/ads/zzcjx;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjx;->zzh()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gcacheDownloaded"

    .line 15
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcjz;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzcjz;-><init>(Lcom/google/android/gms/internal/ads/zzcjb;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final zzS(Lcom/google/android/gms/internal/ads/zzatz;I)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzo:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzo:I

    return-void
.end method

.method final zzT(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasr;
    .locals 10

    .line 1
    new-instance v9, Lcom/google/android/gms/internal/ads/zzasn;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzk:Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzk:Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcka;

    .line 16
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzcka;-><init>([B)V

    :cond_0
    move-object v2, v0

    goto :goto_2

    .line 2
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzbq:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzbl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzi:Lcom/google/android/gms/internal/ads/zzcja;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzj:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzi:Lcom/google/android/gms/internal/ads/zzcja;

    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzi:I

    if-lez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckb;

    .line 6
    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzckb;-><init>(Lcom/google/android/gms/internal/ads/zzcki;Ljava/lang/String;Z)V

    goto :goto_1

    .line 13
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzckc;

    .line 7
    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzckc;-><init>(Lcom/google/android/gms/internal/ads/zzcki;Ljava/lang/String;Z)V

    .line 6
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzi:Lcom/google/android/gms/internal/ads/zzcja;

    .line 8
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzcja;->zzj:Z

    if-eqz p2, :cond_6

    new-instance p2, Lcom/google/android/gms/internal/ads/zzckd;

    .line 9
    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzckd;-><init>(Lcom/google/android/gms/internal/ads/zzcki;Lcom/google/android/gms/internal/ads/zzaty;)V

    move-object v0, p2

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzk:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzk:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzk:Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcke;

    .line 13
    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcke;-><init>(Lcom/google/android/gms/internal/ads/zzaty;[B)V

    move-object v2, v1

    .line 17
    :goto_2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzm:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lcom/google/android/gms/internal/ads/zzckf;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    goto :goto_3

    .line 19
    :cond_7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzckg;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    :goto_3
    move-object v3, p2

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzi:Lcom/google/android/gms/internal/ads/zzcja;

    .line 19
    iget v4, p2, Lcom/google/android/gms/internal/ads/zzcja;->zzk:I

    sget-object v5, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    const/4 v7, 0x0

    iget v8, p2, Lcom/google/android/gms/internal/ads/zzcja;->zzg:I

    move-object v0, v9

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzasn;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzaty;Lcom/google/android/gms/internal/ads/zzapq;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzasm;Ljava/lang/String;I)V

    return-object v9
.end method

.method final synthetic zzU(Lcom/google/android/gms/internal/ads/zzaty;)Lcom/google/android/gms/internal/ads/zzatz;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcjx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzd:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaty;->zza()Lcom/google/android/gms/internal/ads/zzatz;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzr:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzs:I

    new-instance v6, Lcom/google/android/gms/internal/ads/zzckh;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/zzckh;-><init>(Lcom/google/android/gms/internal/ads/zzcki;)V

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzcjx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzatz;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzauo;Lcom/google/android/gms/internal/ads/zzcjw;)V

    return-object v7
.end method

.method final synthetic zzV(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzn:Lcom/google/android/gms/internal/ads/zzcir;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcir;->zza(ZJ)V

    :cond_0
    return-void
.end method

.method final synthetic zzW(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzatz;
    .locals 8

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p0

    .line 1
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaud;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzi:Lcom/google/android/gms/internal/ads/zzcja;

    const/4 v2, 0x0

    .line 2
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzd:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzf:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzaud;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauz;Lcom/google/android/gms/internal/ads/zzauo;IIZLcom/google/android/gms/internal/ads/zzauh;)V

    return-object p2
.end method

.method final synthetic zzX(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzatz;
    .locals 6

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 1
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcju;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzi:Lcom/google/android/gms/internal/ads/zzcja;

    .line 2
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzd:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzf:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzi:I

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcju;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauo;III)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzw:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzanx;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatg;Lcom/google/android/gms/internal/ads/zzats;)V
    .locals 0

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzn:Lcom/google/android/gms/internal/ads/zzcir;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcir;->zzb(I)V

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzamy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzn:Lcom/google/android/gms/internal/ads/zzcir;

    if-eqz v0, :cond_0

    const-string v1, "onPlayerError"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcir;->zzu(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzanq;)V
    .locals 0

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjb;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzbl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    .line 4
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->zze:Ljava/lang/String;

    const-string v3, "audioMime"

    .line 5
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzf:Ljava/lang/String;

    const-string v3, "audioSampleMime"

    .line 6
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzc:Ljava/lang/String;

    const-string v2, "audioCodec"

    .line 7
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    .line 8
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzi(Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzn:Lcom/google/android/gms/internal/ads/zzcir;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzi:Lcom/google/android/gms/internal/ads/zzcja;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzcja;->zzl:Z

    if-eqz v1, :cond_0

    const-string v1, "onLoadException"

    .line 2
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcir;->zzv(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string v1, "onLoadError"

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcir;->zzu(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaub;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcki;->zzR(Lcom/google/android/gms/internal/ads/zzatz;Lcom/google/android/gms/internal/ads/zzaub;)V

    return-void
.end method

.method public final bridge synthetic zzk(Ljava/lang/Object;I)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzo:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzo:I

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjb;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzbl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    .line 4
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzl:F

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "frameRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzb:I

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bitRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzj:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzk:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x17

    .line 7
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resolution"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->zze:Ljava/lang/String;

    const-string v3, "videoMime"

    .line 8
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzf:Ljava/lang/String;

    const-string v3, "videoSampleMime"

    .line 9
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzc:Ljava/lang/String;

    const-string v2, "videoCodec"

    .line 10
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    .line 11
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzm(IJ)V
    .locals 0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzp:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzp:I

    return-void
.end method

.method public final zzn(IIIF)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzn:Lcom/google/android/gms/internal/ads/zzcir;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzcir;->zzc(II)V

    :cond_0
    return-void
.end method

.method public final zzo(Landroid/view/Surface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzn:Lcom/google/android/gms/internal/ads/zzcir;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcir;->zzC()V

    :cond_0
    return-void
.end method

.method public final zzp([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzcki;->zzq([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final zzq([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzk:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzl:Z

    array-length p3, p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    aget-object p1, p1, p4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcki;->zzT(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasr;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    new-array p3, p3, [Lcom/google/android/gms/internal/ads/zzasr;

    :goto_0
    array-length v0, p1

    if-ge p4, v0, :cond_2

    .line 1
    aget-object v0, p1, p4

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzcki;->zzT(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzasr;

    move-result-object v0

    aput-object v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasv;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzasv;-><init>([Lcom/google/android/gms/internal/ads/zzasr;)V

    .line 3
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzanc;->zzd(Lcom/google/android/gms/internal/ads/zzasr;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcis;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzcir;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzn:Lcom/google/android/gms/internal/ads/zzcir;

    return-void
.end method

.method public final zzs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzanc;->zzb(Lcom/google/android/gms/internal/ads/zzamz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanc;->zzi()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcis;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public final zzt(Landroid/view/Surface;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzf:Lcom/google/android/gms/internal/ads/zzanr;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(Lcom/google/android/gms/internal/ads/zzana;ILjava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/zzanb;

    aput-object v0, v1, p1

    .line 2
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzanc;->zzk([Lcom/google/android/gms/internal/ads/zzanb;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/zzanb;

    aput-object v0, v1, p1

    .line 3
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzanc;->zzj([Lcom/google/android/gms/internal/ads/zzanb;)V

    return-void
.end method

.method public final zzu(FZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzg:Lcom/google/android/gms/internal/ads/zzanr;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(Lcom/google/android/gms/internal/ads/zzana;ILjava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzanb;

    aput-object v0, v1, p1

    .line 2
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzanc;->zzk([Lcom/google/android/gms/internal/ads/zzanb;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzanb;

    aput-object v0, v1, p1

    .line 3
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzanc;->zzj([Lcom/google/android/gms/internal/ads/zzanb;)V

    return-void
.end method

.method public final zzv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanc;->zzh()V

    return-void
.end method

.method public final zzw(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzj:Lcom/google/android/gms/internal/ads/zzanc;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzanc;->zzg(J)V

    return-void
.end method

.method public final zzx(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjy;->zzi(I)V

    return-void
.end method

.method public final zzy(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zze:Lcom/google/android/gms/internal/ads/zzcjy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjy;->zzj(I)V

    return-void
.end method

.method public final zzz(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcki;->zzw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcju;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcju;->zzg(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
