.class public final Lcom/google/android/gms/internal/ads/zzcmb;
.super Lcom/google/android/gms/internal/ads/zzcis;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzay;
.implements Lcom/google/android/gms/internal/ads/zzda;


# static fields
.field public static final synthetic zzc:I


# instance fields
.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/android/gms/internal/ads/zzclm;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzjt;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcja;

.field private final zzh:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzcjb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzi:Lcom/google/android/gms/internal/ads/zzij;

.field private zzj:Lcom/google/android/gms/internal/ads/zzaie;

.field private zzk:Ljava/nio/ByteBuffer;

.field private zzl:Z

.field private zzm:Lcom/google/android/gms/internal/ads/zzcir;

.field private zzn:I

.field private zzo:I

.field private zzp:J

.field private final zzq:Ljava/lang/String;

.field private final zzr:I

.field private final zzs:Ljava/lang/Object;

.field private final zzt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzaw;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzu:Lcom/google/android/gms/internal/ads/zzclp;

.field private final zzv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzcll;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcja;Lcom/google/android/gms/internal/ads/zzcjb;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcis;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzs:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzv:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzd:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzg:Lcom/google/android/gms/internal/ads/zzcja;

    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzh:Ljava/lang/ref/WeakReference;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzclm;

    .line 3
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzclm;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zze:Lcom/google/android/gms/internal/ads/zzclm;

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzjt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzd:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzjt;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzf:Lcom/google/android/gms/internal/ads/zzjt;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OfficialSimpleExoPlayerAdapter initialize "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzcis;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaei;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzd:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzclx;

    .line 8
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzclx;-><init>(Lcom/google/android/gms/internal/ads/zzcmb;)V

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaei;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzahy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzf:Lcom/google/android/gms/internal/ads/zzjt;

    .line 9
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zza(Lcom/google/android/gms/internal/ads/zzjz;)Lcom/google/android/gms/internal/ads/zzaei;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zze:Lcom/google/android/gms/internal/ads/zzclm;

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zzb(Lcom/google/android/gms/internal/ads/zzafy;)Lcom/google/android/gms/internal/ads/zzaei;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaei;->zzc()Lcom/google/android/gms/internal/ads/zzaie;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzbo:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    .line 14
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzR(Z)V

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    .line 15
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzG(Lcom/google/android/gms/internal/ads/zzda;)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzn:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzp:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzo:I

    new-instance p2, Ljava/util/ArrayList;

    .line 16
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzt:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzu:Lcom/google/android/gms/internal/ads/zzclp;

    if-eqz p3, :cond_2

    .line 17
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzn()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzn()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, ""

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzq:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 18
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzp()I

    move-result p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzr:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzij;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzt()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzi(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzl:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzk:Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    if-lez p3, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzk:Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzk:Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcls;

    .line 34
    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzcls;-><init>([B)V

    goto :goto_3

    .line 38
    :cond_4
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbjl;->zzbq:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p3

    .line 22
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbjl;->zzbl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p3

    .line 22
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_6

    :cond_5
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzg:Lcom/google/android/gms/internal/ads/zzcja;

    iget-boolean p3, p3, Lcom/google/android/gms/internal/ads/zzcja;->zzj:Z

    if-nez p3, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzg:Lcom/google/android/gms/internal/ads/zzcja;

    .line 23
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzcja;->zzi:I

    if-lez p3, :cond_8

    new-instance p3, Lcom/google/android/gms/internal/ads/zzclt;

    .line 24
    invoke-direct {p3, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzclt;-><init>(Lcom/google/android/gms/internal/ads/zzcmb;Ljava/lang/String;Z)V

    goto :goto_2

    .line 31
    :cond_8
    new-instance p3, Lcom/google/android/gms/internal/ads/zzclu;

    .line 25
    invoke-direct {p3, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzclu;-><init>(Lcom/google/android/gms/internal/ads/zzcmb;Ljava/lang/String;Z)V

    .line 24
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzg:Lcom/google/android/gms/internal/ads/zzcja;

    .line 26
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzcja;->zzj:Z

    if-eqz p1, :cond_9

    new-instance p1, Lcom/google/android/gms/internal/ads/zzclv;

    .line 27
    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzclv;-><init>(Lcom/google/android/gms/internal/ads/zzcmb;Lcom/google/android/gms/internal/ads/zzai;)V

    move-object p3, p1

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzk:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_a

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzk:Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzk:Ljava/nio/ByteBuffer;

    .line 30
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzclw;

    .line 31
    invoke-direct {v0, p3, p1}, Lcom/google/android/gms/internal/ads/zzclw;-><init>(Lcom/google/android/gms/internal/ads/zzai;[B)V

    move-object p3, v0

    .line 34
    :cond_a
    :goto_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzm:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 37
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcly;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    goto :goto_4

    .line 38
    :cond_b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzclz;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    .line 39
    :goto_4
    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzij;-><init>(Lcom/google/android/gms/internal/ads/zzai;Lcom/google/android/gms/internal/ads/zzoa;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzi:Lcom/google/android/gms/internal/ads/zzij;

    return-void
.end method

.method private final zzU()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzu:Lcom/google/android/gms/internal/ads/zzclp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzu:Lcom/google/android/gms/internal/ads/zzclp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclp;->zzl()Z

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

    const-string v1, "OfficialSimpleExoPlayerAdapter finalize "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzA()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzI()I

    move-result v0

    return v0
.end method

.method public final zzC()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzx()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzD()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzM()Z

    move-result v0

    return v0
.end method

.method public final zzE(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaie;->zzL(Z)V

    return-void
.end method

.method public final zzF(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zze:Lcom/google/android/gms/internal/ads/zzclm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzclm;->zzj(I)V

    return-void
.end method

.method public final zzG(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zze:Lcom/google/android/gms/internal/ads/zzclm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzclm;->zzk(I)V

    return-void
.end method

.method public final zzH()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzP()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzI()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcmb;->zzU()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzn:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzJ()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcmb;->zzU()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzu:Lcom/google/android/gms/internal/ads/zzclp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclp;->zzm()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzn:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzu:Lcom/google/android/gms/internal/ads/zzclp;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzclp;->zzo()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzK()J
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcmb;->zzU()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzs:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzt:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzp:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzt:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaw;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaw;->zzf()Ljava/util/Map;

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
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzp:J

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzp:J

    return-wide v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzu:Lcom/google/android/gms/internal/ads/zzclp;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzclp;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzo:I

    return v0
.end method

.method public final zzM(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaie;->zzO()I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzf:Lcom/google/android/gms/internal/ads/zzjt;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzjt;->zzc()Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzjn;->zzg()Lcom/google/android/gms/internal/ads/zzjo;

    move-result-object v2

    xor-int/lit8 v3, p1, 0x1

    .line 2
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzjo;->zzs(IZ)Lcom/google/android/gms/internal/ads/zzjo;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzjt;->zzd(Lcom/google/android/gms/internal/ads/zzjo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzN()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzQ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzO()J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzn:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final synthetic zzR(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzm:Lcom/google/android/gms/internal/ads/zzcir;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcir;->zza(ZJ)V

    :cond_0
    return-void
.end method

.method final synthetic zzS(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaj;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzao;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzao;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzao;

    const/4 p1, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 3
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzao;->zzf(Lcom/google/android/gms/internal/ads/zzay;)Lcom/google/android/gms/internal/ads/zzao;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzg:Lcom/google/android/gms/internal/ads/zzcja;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzcja;->zzd:I

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzao;->zzc(I)Lcom/google/android/gms/internal/ads/zzao;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzg:Lcom/google/android/gms/internal/ads/zzcja;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzcja;->zzf:I

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzao;->zzd(I)Lcom/google/android/gms/internal/ads/zzao;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzao;->zze(Z)Lcom/google/android/gms/internal/ads/zzao;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzao;->zzg()Lcom/google/android/gms/internal/ads/zzaq;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzT(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaj;
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
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcll;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzg:Lcom/google/android/gms/internal/ads/zzcja;

    .line 2
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzd:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzf:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcja;->zzi:I

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcll;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzay;III)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzv:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzan;Z)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzan;Z)V
    .locals 1

    .line 1
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzaw;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzs:Ljava/lang/Object;

    .line 2
    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzt:Ljava/util/ArrayList;

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaw;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzclp;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzclp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzu:Lcom/google/android/gms/internal/ads/zzclp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzh:Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjb;

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzbl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzu:Lcom/google/android/gms/internal/ads/zzclp;

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzclp;->zzk()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    .line 11
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzu:Lcom/google/android/gms/internal/ads/zzclp;

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzclp;->zzm()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v0, "gcacheHit"

    .line 13
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzu:Lcom/google/android/gms/internal/ads/zzclp;

    .line 14
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzclp;->zzn()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v0, "gcacheDownloaded"

    .line 15
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object p3, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzclr;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzclr;-><init>(Lcom/google/android/gms/internal/ads/zzcjb;Ljava/util/Map;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzan;ZI)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzn:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzn:I

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzan;Z)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzcz;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzm:Lcom/google/android/gms/internal/ads/zzcir;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcir;->zzb(I)V

    :cond_0
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzahc;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzm:Lcom/google/android/gms/internal/ads/zzcir;

    if-eqz p1, :cond_0

    const-string v0, "onPlayerError"

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcir;->zzu(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzm:Lcom/google/android/gms/internal/ads/zzcir;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzg:Lcom/google/android/gms/internal/ads/zzcja;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzcja;->zzl:Z

    if-eqz p2, :cond_0

    const-string p2, "onLoadException"

    .line 2
    invoke-interface {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzcir;->zzv(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string p2, "onLoadError"

    .line 3
    invoke-interface {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzcir;->zzu(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzh:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjb;

    .line 2
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbjl;->zzbl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p3

    .line 2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p3, Ljava/util/HashMap;

    .line 4
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzk:Ljava/lang/String;

    const-string v1, "audioMime"

    .line 5
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v1, "audioSampleMime"

    .line 6
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    const-string v0, "audioCodec"

    .line 7
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "onMetadataEvent"

    .line 8
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzh:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjb;

    .line 2
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbjl;->zzbl:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p3

    .line 2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p3, Ljava/util/HashMap;

    .line 4
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzs:F

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "frameRate"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzh:I

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bitRate"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    .line 7
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resolution"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzk:Ljava/lang/String;

    const-string v1, "videoMime"

    .line 8
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v1, "videoSampleMime"

    .line 9
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    const-string v0, "videoCodec"

    .line 10
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "onMetadataEvent"

    .line 11
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzcz;IJ)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzo:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzo:I

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzcz;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzm:Lcom/google/android/gms/internal/ads/zzcir;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcir;->zzC()V

    :cond_0
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzy;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzm:Lcom/google/android/gms/internal/ads/zzcir;

    if-eqz p1, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzy;->zzb:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzy;->zzc:I

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcir;->zzc(II)V

    :cond_0
    return-void
.end method

.method final zzm(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzhh;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzagb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzagb;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzagb;->zzb(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzagb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagb;->zzc()Lcom/google/android/gms/internal/ads/zzagk;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzi:Lcom/google/android/gms/internal/ads/zzij;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzg:Lcom/google/android/gms/internal/ads/zzcja;

    .line 2
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcja;->zzg:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzij;->zza(I)Lcom/google/android/gms/internal/ads/zzij;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzij;->zzb(Lcom/google/android/gms/internal/ads/zzagk;)Lcom/google/android/gms/internal/ads/zzil;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzn(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzmu;Lcom/google/android/gms/internal/ads/zzdq;Lcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzaiw;)[Lcom/google/android/gms/internal/ads/zzahv;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    new-instance v9, Lcom/google/android/gms/internal/ads/zzer;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcmb;->zzd:Landroid/content/Context;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v10, 0x0

    new-array v1, v10, [Lcom/google/android/gms/internal/ads/zzde;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzen;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v8, v3, v1, v10}, Lcom/google/android/gms/internal/ads/zzen;-><init>(Lcom/google/android/gms/internal/ads/zzdb;[Lcom/google/android/gms/internal/ads/zzde;Z)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfm;

    const/4 v5, 0x0

    move-object v1, v9

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    .line 3
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzer;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfm;Lcom/google/android/gms/internal/ads/zzfs;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzdq;Lcom/google/android/gms/internal/ads/zzdw;)V

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzlz;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzcmb;->zzd:Landroid/content/Context;

    sget-object v14, Lcom/google/android/gms/internal/ads/zzfs;->zzb:Lcom/google/android/gms/internal/ads/zzfs;

    sget-object v13, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfm;

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v20, -0x1

    move-object v11, v1

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    .line 5
    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/internal/ads/zzlz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfm;Lcom/google/android/gms/internal/ads/zzfs;JZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzmu;I)V

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzahv;

    aput-object v9, v2, v10

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method final synthetic zzo(Lcom/google/android/gms/internal/ads/zzai;)Lcom/google/android/gms/internal/ads/zzaj;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzclp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzd:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzai;->zza()Lcom/google/android/gms/internal/ads/zzaj;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzq:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzr:I

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcma;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/zzcma;-><init>(Lcom/google/android/gms/internal/ads/zzcmb;)V

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzclp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaj;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzay;Lcom/google/android/gms/internal/ads/zzclo;)V

    return-object v7
.end method

.method public final zzp([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzcmb;->zzq([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final zzq([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzk:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzl:Z

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p2, p3, :cond_1

    aget-object p1, p1, p4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcmb;->zzm(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzhh;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_1
    new-array p2, p2, [Lcom/google/android/gms/internal/ads/zzhh;

    const/4 p3, 0x0

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_2

    .line 1
    aget-object v0, p1, p3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcmb;->zzm(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzhh;

    move-result-object v0

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    .line 3
    invoke-direct {p1, p4, p4, p2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(ZZ[Lcom/google/android/gms/internal/ads/zzhh;)V

    .line 4
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaie;->zzK(Lcom/google/android/gms/internal/ads/zzhh;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaie;->zzJ()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcis;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzcir;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzm:Lcom/google/android/gms/internal/ads/zzcir;

    return-void
.end method

.method public final zzs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzH(Lcom/google/android/gms/internal/ads/zzda;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzN()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcis;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public final zzt(Landroid/view/Surface;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaie;->zzy(Landroid/view/Surface;)V

    return-void
.end method

.method public final zzu(FZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaie;->zzE(F)V

    return-void
.end method

.method public final zzv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzahp;->zzq(Z)V

    return-void
.end method

.method public final zzw(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzj:Lcom/google/android/gms/internal/ads/zzaie;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahp;->zzv()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzahp;->zzp(IJ)V

    return-void
.end method

.method public final zzx(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zze:Lcom/google/android/gms/internal/ads/zzclm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzclm;->zzl(I)V

    return-void
.end method

.method public final zzy(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zze:Lcom/google/android/gms/internal/ads/zzclm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzclm;->zzm(I)V

    return-void
.end method

.method public final zzz(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmb;->zzv:Ljava/util/Set;

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

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcll;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcll;->zzl(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
