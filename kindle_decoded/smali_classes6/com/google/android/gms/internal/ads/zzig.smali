.class final Lcom/google/android/gms/internal/ads/zzig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhe;
.implements Lcom/google/android/gms/internal/ads/zznx;
.implements Lcom/google/android/gms/internal/ads/zzkz;
.implements Lcom/google/android/gms/internal/ads/zzle;
.implements Lcom/google/android/gms/internal/ads/zzis;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzhe;",
        "Lcom/google/android/gms/internal/ads/zznx;",
        "Lcom/google/android/gms/internal/ads/zzkz;",
        "Lcom/google/android/gms/internal/ads/zzle;",
        "Lcom/google/android/gms/internal/ads/zzis;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzafv;


# instance fields
.field private zzA:Z

.field private zzB:I

.field private zzC:Z

.field private zzD:Z

.field private zzE:I

.field private zzF:J

.field private zzG:J

.field private zzH:J

.field private zzI:Z

.field private zzJ:I

.field private zzK:Z

.field private zzL:Z

.field private final zzM:Lcom/google/android/gms/internal/ads/zzku;

.field private final zzN:Lcom/google/android/gms/internal/ads/zzko;

.field private final zzd:Landroid/net/Uri;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaj;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzff;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzho;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfa;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzic;

.field private final zzj:J

.field private final zzk:Lcom/google/android/gms/internal/ads/zzlh;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzhx;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzakw;

.field private final zzn:Ljava/lang/Runnable;

.field private final zzo:Ljava/lang/Runnable;

.field private final zzp:Landroid/os/Handler;

.field private zzq:Lcom/google/android/gms/internal/ads/zzhd;

.field private zzr:Lcom/google/android/gms/internal/ads/zzajg;

.field private zzs:[Lcom/google/android/gms/internal/ads/zzit;

.field private zzt:[Lcom/google/android/gms/internal/ads/zzie;

.field private zzu:Z

.field private zzv:Z

.field private zzw:Z

.field private zzx:Lcom/google/android/gms/internal/ads/zzif;

.field private zzy:Lcom/google/android/gms/internal/ads/zzot;

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzig;->zzb:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    const-string v1, "icy"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzig;->zzc:Lcom/google/android/gms/internal/ads/zzafv;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzhx;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfa;Lcom/google/android/gms/internal/ads/zzku;Lcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zzic;Lcom/google/android/gms/internal/ads/zzko;Ljava/lang/String;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzd:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzig;->zze:Lcom/google/android/gms/internal/ads/zzaj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzig;->zzf:Lcom/google/android/gms/internal/ads/zzff;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzig;->zzh:Lcom/google/android/gms/internal/ads/zzfa;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzig;->zzM:Lcom/google/android/gms/internal/ads/zzku;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzig;->zzg:Lcom/google/android/gms/internal/ads/zzho;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzig;->zzi:Lcom/google/android/gms/internal/ads/zzic;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzig;->zzN:Lcom/google/android/gms/internal/ads/zzko;

    int-to-long p1, p11

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzj:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzlh;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzlh;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzk:Lcom/google/android/gms/internal/ads/zzlh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzl:Lcom/google/android/gms/internal/ads/zzhx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzakw;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaku;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzakw;-><init>(Lcom/google/android/gms/internal/ads/zzaku;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzm:Lcom/google/android/gms/internal/ads/zzakw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhy;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhy;-><init>(Lcom/google/android/gms/internal/ads/zzig;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzn:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhz;

    .line 4
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhz;-><init>(Lcom/google/android/gms/internal/ads/zzig;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzo:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzamq;->zzh(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzp:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzie;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzt:[Lcom/google/android/gms/internal/ads/zzie;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzit;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzH:J

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzF:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzz:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzB:I

    return-void
.end method

.method static synthetic zzG(Lcom/google/android/gms/internal/ads/zzig;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzV()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzN(I)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzx:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zzd:[Z

    .line 3
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzg:Lcom/google/android/gms/internal/ads/zzho;

    .line 5
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalt;->zzf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzig;->zzG:J

    .line 5
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzho;->zzl(ILcom/google/android/gms/internal/ads/zzafv;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 7
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method private final zzO(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzx:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:[Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzI:Z

    if-eqz v1, :cond_3

    .line 3
    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzk(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzH:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzI:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzD:Z

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzG:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzJ:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 6
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzb(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzq:Lcom/google/android/gms/internal/ads/zzhd;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zziv;->zzp(Lcom/google/android/gms/internal/ads/zziw;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private final zzP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzD:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzW()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzQ(Lcom/google/android/gms/internal/ads/zzie;)Lcom/google/android/gms/internal/ads/zzox;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzt:[Lcom/google/android/gms/internal/ads/zzie;

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzie;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 3
    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzN:Lcom/google/android/gms/internal/ads/zzko;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzp:Landroid/os/Handler;

    .line 4
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzig;->zzf:Lcom/google/android/gms/internal/ads/zzff;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzig;->zzh:Lcom/google/android/gms/internal/ads/zzfa;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzit;

    const/4 v2, 0x0

    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    const/4 v7, 0x0

    move-object v2, v1

    .line 5
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzit;-><init>(Lcom/google/android/gms/internal/ads/zzko;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfa;[B)V

    .line 6
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzit;->zzr(Lcom/google/android/gms/internal/ads/zzis;)V

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzt:[Lcom/google/android/gms/internal/ads/zzie;

    .line 7
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/ads/zzie;

    .line 8
    aput-object p1, v3, v0

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzamq;->zze([Ljava/lang/Object;)[Ljava/lang/Object;

    check-cast v3, [Lcom/google/android/gms/internal/ads/zzie;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzt:[Lcom/google/android/gms/internal/ads/zzie;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 10
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzit;

    .line 11
    aput-object v1, p1, v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzamq;->zze([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    check-cast p1, [Lcom/google/android/gms/internal/ads/zzit;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    return-object v1

    .line 13
    :cond_2
    throw v2

    .line 14
    :cond_3
    throw v2
.end method

.method private final zzR()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzL:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzv:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzu:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzy:Lcom/google/android/gms/internal/ads/zzot;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzit;->zzh()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzm:Lcom/google/android/gms/internal/ads/zzakw;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakw;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 4
    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzq;

    new-array v3, v0, [Z

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v0, :cond_a

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 5
    aget-object v7, v7, v4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzit;->zzh()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    .line 6
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzalt;->zza(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzalt;->zzb(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x1

    .line 8
    :goto_3
    aput-boolean v5, v3, v4

    iget-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzig;->zzw:Z

    or-int/2addr v5, v9

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzig;->zzw:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzig;->zzr:Lcom/google/android/gms/internal/ads/zzajg;

    if-eqz v5, :cond_8

    if-nez v8, :cond_5

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzig;->zzt:[Lcom/google/android/gms/internal/ads/zzie;

    .line 9
    aget-object v9, v9, v4

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/zzie;->zzb:Z

    if-eqz v9, :cond_7

    :cond_5
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzafv;->zzj:Lcom/google/android/gms/internal/ads/zzaiv;

    if-nez v9, :cond_6

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaiv;

    new-array v10, v6, [Lcom/google/android/gms/internal/ads/zzaiu;

    aput-object v5, v10, v2

    .line 10
    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    goto :goto_4

    :cond_6
    new-array v10, v6, [Lcom/google/android/gms/internal/ads/zzaiu;

    aput-object v5, v10, v2

    .line 11
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzaiv;->zzd([Lcom/google/android/gms/internal/ads/zzaiu;)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v9

    .line 10
    :goto_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzafv;->zza()Lcom/google/android/gms/internal/ads/zzaft;

    move-result-object v7

    .line 12
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzaft;->zzL(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v7

    :cond_7
    if-eqz v8, :cond_8

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzafv;->zzf:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzafv;->zzg:I

    if-ne v8, v9, :cond_8

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzajg;->zza:I

    if-eq v8, v9, :cond_8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzafv;->zza()Lcom/google/android/gms/internal/ads/zzaft;

    move-result-object v7

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzajg;->zza:I

    .line 13
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzI(I)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v7

    :cond_8
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzig;->zzf:Lcom/google/android/gms/internal/ads/zzff;

    .line 14
    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/zzff;->zza(Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzafv;->zzb(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v5

    new-instance v7, Lcom/google/android/gms/internal/ads/zzq;

    new-array v6, v6, [Lcom/google/android/gms/internal/ads/zzafv;

    aput-object v5, v6, v2

    .line 15
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzq;-><init>([Lcom/google/android/gms/internal/ads/zzafv;)V

    aput-object v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 16
    :cond_9
    throw v5

    .line 11
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzif;

    .line 17
    new-instance v2, Lcom/google/android/gms/internal/ads/zzs;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzs;-><init>([Lcom/google/android/gms/internal/ads/zzq;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzif;-><init>(Lcom/google/android/gms/internal/ads/zzs;[Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzx:Lcom/google/android/gms/internal/ads/zzif;

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzig;->zzv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzq:Lcom/google/android/gms/internal/ads/zzhd;

    if-eqz v0, :cond_b

    .line 18
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzn(Lcom/google/android/gms/internal/ads/zzhe;)V

    return-void

    .line 19
    :cond_b
    throw v5

    :cond_c
    :goto_5
    return-void
.end method

.method private final zzS(Lcom/google/android/gms/internal/ads/zzib;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzF:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzib;->zzf(Lcom/google/android/gms/internal/ads/zzib;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzF:J

    :cond_0
    return-void
.end method

.method private final zzT()V
    .locals 28

    move-object/from16 v7, p0

    .line 1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzib;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzig;->zzd:Landroid/net/Uri;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzig;->zze:Lcom/google/android/gms/internal/ads/zzaj;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzig;->zzl:Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzig;->zzm:Lcom/google/android/gms/internal/ads/zzakw;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzib;-><init>(Lcom/google/android/gms/internal/ads/zzig;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzaj;Lcom/google/android/gms/internal/ads/zzhx;Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzakw;)V

    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzig;->zzv:Z

    if-eqz v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzig;->zzW()Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzig;->zzz:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzig;->zzH:J

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzig;->zzK:Z

    iput-wide v2, v7, Lcom/google/android/gms/internal/ads/zzig;->zzH:J

    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzig;->zzy:Lcom/google/android/gms/internal/ads/zzot;

    if-eqz v0, :cond_3

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzig;->zzH:J

    .line 3
    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzot;->zzf(J)Lcom/google/android/gms/internal/ads/zzor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzou;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzou;->zzc:J

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzig;->zzH:J

    .line 4
    invoke-static {v8, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzib;->zzi(Lcom/google/android/gms/internal/ads/zzib;JJ)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 5
    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/zzig;->zzH:J

    .line 6
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/ads/zzit;->zzc(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput-wide v2, v7, Lcom/google/android/gms/internal/ads/zzig;->zzH:J

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 13
    throw v0

    .line 7
    :cond_4
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzig;->zzU()I

    move-result v0

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzig;->zzJ:I

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzig;->zzk:Lcom/google/android/gms/internal/ads/zzlh;

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzig;->zzB:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzku;->zza(I)I

    move-result v1

    .line 8
    invoke-virtual {v0, v8, v7, v1}, Lcom/google/android/gms/internal/ads/zzlh;->zzh(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzkz;I)J

    move-result-wide v15

    .line 9
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzib;->zze(Lcom/google/android/gms/internal/ads/zzib;)Lcom/google/android/gms/internal/ads/zzan;

    move-result-object v12

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzig;->zzg:Lcom/google/android/gms/internal/ads/zzho;

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgx;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzib;->zzb(Lcom/google/android/gms/internal/ads/zzib;)J

    move-result-wide v10

    .line 11
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzan;->zza:Landroid/net/Uri;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v14

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object v9, v1

    .line 11
    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(JLcom/google/android/gms/internal/ads/zzan;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    const/16 v19, 0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 10
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzib;->zzd(Lcom/google/android/gms/internal/ads/zzib;)J

    move-result-wide v24

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzig;->zzz:J

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-wide/from16 v26, v2

    invoke-virtual/range {v17 .. v27}, Lcom/google/android/gms/internal/ads/zzho;->zzd(Lcom/google/android/gms/internal/ads/zzgx;IILcom/google/android/gms/internal/ads/zzafv;ILjava/lang/Object;JJ)V

    return-void
.end method

.method private final zzU()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzit;->zzd()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private final zzV()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzit;->zzi()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private final zzW()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzH:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzX()V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackState",
            "seekMap"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzv:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzx:Lcom/google/android/gms/internal/ads/zzif;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzy:Lcom/google/android/gms/internal/ads/zzot;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v1

    .line 3
    :cond_1
    throw v1
.end method

.method static synthetic zza()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzig;->zzb:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic zzn()Lcom/google/android/gms/internal/ads/zzafv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzig;->zzc:Lcom/google/android/gms/internal/ads/zzafv;

    return-object v0
.end method

.method static synthetic zzo(Lcom/google/android/gms/internal/ads/zzig;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzj:J

    return-wide v0
.end method

.method static synthetic zzp(Lcom/google/android/gms/internal/ads/zzig;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzo:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/ads/zzig;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzp:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/ads/zzig;Lcom/google/android/gms/internal/ads/zzajg;)Lcom/google/android/gms/internal/ads/zzajg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzr:Lcom/google/android/gms/internal/ads/zzajg;

    return-object p1
.end method

.method static synthetic zzt(Lcom/google/android/gms/internal/ads/zzig;)Lcom/google/android/gms/internal/ads/zzajg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzr:Lcom/google/android/gms/internal/ads/zzajg;

    return-object p0
.end method


# virtual methods
.method final zzA(IJ)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzP()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzig;->zzN(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 2
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzK:Z

    .line 3
    invoke-virtual {v0, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzit;->zzn(JZ)I

    move-result p2

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzit;->zzo(I)V

    if-nez p2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzig;->zzO(I)V

    return v1

    :cond_1
    return p2
.end method

.method public final zzB(II)Lcom/google/android/gms/internal/ads/zzox;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzie;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzie;-><init>(IZ)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzig;->zzQ(Lcom/google/android/gms/internal/ads/zzie;)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    return-object p1
.end method

.method public final zzC()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzp:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzD(Lcom/google/android/gms/internal/ads/zzot;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzp:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzia;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzia;-><init>(Lcom/google/android/gms/internal/ads/zzig;Lcom/google/android/gms/internal/ads/zzot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final zzE()Lcom/google/android/gms/internal/ads/zzox;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzie;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzie;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzig;->zzQ(Lcom/google/android/gms/internal/ads/zzie;)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    return-object v0
.end method

.method public final zzF(Lcom/google/android/gms/internal/ads/zzafv;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzp:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzn:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic zzH(Lcom/google/android/gms/internal/ads/zzlc;JJLjava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzla;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzib;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzig;->zzS(Lcom/google/android/gms/internal/ads/zzib;)V

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzc(Lcom/google/android/gms/internal/ads/zzib;)Lcom/google/android/gms/internal/ads/zzlp;

    move-result-object v2

    .line 3
    new-instance v15, Lcom/google/android/gms/internal/ads/zzgx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzb(Lcom/google/android/gms/internal/ads/zzib;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zze(Lcom/google/android/gms/internal/ads/zzib;)Lcom/google/android/gms/internal/ads/zzan;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlp;->zzc()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlp;->zzd()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlp;->zzb()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 4
    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(JLcom/google/android/gms/internal/ads/zzan;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhc;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzd(Lcom/google/android/gms/internal/ads/zzib;)J

    move-result-wide v3

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v22

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzig;->zzz:J

    .line 7
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v24

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v25}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(IILcom/google/android/gms/internal/ads/zzafv;ILjava/lang/Object;JJ)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzky;

    move-object/from16 v14, p6

    move/from16 v4, p7

    .line 8
    invoke-direct {v3, v15, v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzky;-><init>(Lcom/google/android/gms/internal/ads/zzgx;Lcom/google/android/gms/internal/ads/zzhc;Ljava/io/IOException;I)V

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzky;->zzc:Ljava/io/IOException;

    .line 9
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzaha;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_2

    instance-of v4, v2, Ljava/io/FileNotFoundException;

    if-nez v4, :cond_2

    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzas;

    if-nez v4, :cond_2

    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzlg;

    if-nez v4, :cond_2

    :goto_0
    if-eqz v2, :cond_1

    .line 10
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzak;

    if-eqz v4, :cond_0

    .line 11
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzak;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzak;->zza:I

    const/16 v7, 0x7d8

    if-ne v4, v7, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzky;->zzd:I

    add-int/lit8 v2, v2, -0x1

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v3, 0x1388

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v2, v5

    :goto_2
    const/4 v4, 0x1

    cmp-long v7, v2, v5

    if-nez v7, :cond_3

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzlh;->zzd:Lcom/google/android/gms/internal/ads/zzla;

    goto :goto_7

    .line 14
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzig;->zzU()I

    move-result v7

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzig;->zzJ:I

    const/4 v9, 0x0

    if-le v7, v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzig;->zzF:J

    const-wide/16 v12, -0x1

    cmp-long v16, v10, v12

    if-nez v16, :cond_8

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzig;->zzy:Lcom/google/android/gms/internal/ads/zzot;

    if-eqz v10, :cond_5

    .line 15
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzot;->zzg()J

    move-result-wide v10

    cmp-long v12, v10, v5

    if-eqz v12, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzig;->zzv:Z

    if-eqz v5, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzig;->zzP()Z

    move-result v5

    if-nez v5, :cond_6

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzig;->zzI:Z

    sget-object v2, Lcom/google/android/gms/internal/ads/zzlh;->zzc:Lcom/google/android/gms/internal/ads/zzla;

    goto :goto_7

    :cond_6
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzig;->zzv:Z

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzig;->zzD:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzig;->zzG:J

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzig;->zzJ:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 16
    array-length v10, v7

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_7

    aget-object v12, v7, v11

    .line 17
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzit;->zzb(Z)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 18
    :cond_7
    invoke-static {v1, v5, v6, v5, v6}, Lcom/google/android/gms/internal/ads/zzib;->zzi(Lcom/google/android/gms/internal/ads/zzib;JJ)V

    goto :goto_6

    .line 15
    :cond_8
    :goto_5
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzig;->zzJ:I

    :goto_6
    invoke-static {v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzlh;->zze(ZJ)Lcom/google/android/gms/internal/ads/zzla;

    move-result-object v2

    .line 11
    :goto_7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzla;->zzc()Z

    move-result v3

    xor-int/lit8 v16, v3, 0x1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzig;->zzg:Lcom/google/android/gms/internal/ads/zzho;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzd(Lcom/google/android/gms/internal/ads/zzib;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzig;->zzz:J

    move-object v4, v15

    move-object/from16 v14, p6

    move/from16 v15, v16

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/gms/internal/ads/zzho;->zzj(Lcom/google/android/gms/internal/ads/zzgx;IILcom/google/android/gms/internal/ads/zzafv;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v16, :cond_9

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzb(Lcom/google/android/gms/internal/ads/zzib;)J

    :cond_9
    return-object v2
.end method

.method public final bridge synthetic zzI(Lcom/google/android/gms/internal/ads/zzlc;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzib;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzc(Lcom/google/android/gms/internal/ads/zzib;)Lcom/google/android/gms/internal/ads/zzlp;

    move-result-object v2

    .line 2
    new-instance v15, Lcom/google/android/gms/internal/ads/zzgx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzb(Lcom/google/android/gms/internal/ads/zzib;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zze(Lcom/google/android/gms/internal/ads/zzib;)Lcom/google/android/gms/internal/ads/zzan;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlp;->zzc()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlp;->zzd()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlp;->zzb()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 3
    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(JLcom/google/android/gms/internal/ads/zzan;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzb(Lcom/google/android/gms/internal/ads/zzib;)J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzig;->zzg:Lcom/google/android/gms/internal/ads/zzho;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzd(Lcom/google/android/gms/internal/ads/zzib;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzig;->zzz:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/zzho;->zzh(Lcom/google/android/gms/internal/ads/zzgx;IILcom/google/android/gms/internal/ads/zzafv;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzig;->zzS(Lcom/google/android/gms/internal/ads/zzib;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 8
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzit;->zzb(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzig;->zzE:I

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzig;->zzq:Lcom/google/android/gms/internal/ads/zzhd;

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zziv;->zzp(Lcom/google/android/gms/internal/ads/zziw;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 10
    throw v1

    :cond_2
    return-void
.end method

.method public final bridge synthetic zzJ(Lcom/google/android/gms/internal/ads/zzlc;JJ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzig;->zzz:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzig;->zzy:Lcom/google/android/gms/internal/ads/zzot;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzot;->zze()Z

    move-result v1

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzig;->zzV()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    :goto_0
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzig;->zzz:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzig;->zzi:Lcom/google/android/gms/internal/ads/zzic;

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzig;->zzA:Z

    .line 3
    invoke-interface {v4, v2, v3, v1, v5}, Lcom/google/android/gms/internal/ads/zzic;->zzb(JZZ)V

    :cond_1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzib;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzc(Lcom/google/android/gms/internal/ads/zzib;)Lcom/google/android/gms/internal/ads/zzlp;

    move-result-object v2

    .line 5
    new-instance v15, Lcom/google/android/gms/internal/ads/zzgx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzb(Lcom/google/android/gms/internal/ads/zzib;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zze(Lcom/google/android/gms/internal/ads/zzib;)Lcom/google/android/gms/internal/ads/zzan;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlp;->zzc()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlp;->zzd()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlp;->zzb()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    .line 6
    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(JLcom/google/android/gms/internal/ads/zzan;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzb(Lcom/google/android/gms/internal/ads/zzib;)J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzig;->zzg:Lcom/google/android/gms/internal/ads/zzho;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzib;->zzd(Lcom/google/android/gms/internal/ads/zzib;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzig;->zzz:J

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/zzho;->zzf(Lcom/google/android/gms/internal/ads/zzgx;IILcom/google/android/gms/internal/ads/zzafv;ILjava/lang/Object;JJ)V

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzig;->zzS(Lcom/google/android/gms/internal/ads/zzib;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzig;->zzK:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzig;->zzq:Lcom/google/android/gms/internal/ads/zzhd;

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zziv;->zzp(Lcom/google/android/gms/internal/ads/zziw;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 11
    throw v1
.end method

.method final synthetic zzK(Lcom/google/android/gms/internal/ads/zzot;)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzr:Lcom/google/android/gms/internal/ads/zzajg;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzos;

    const-wide/16 v3, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzos;-><init>(JJ)V

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzy:Lcom/google/android/gms/internal/ads/zzot;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzot;->zzg()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzz:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzF:J

    const-wide/16 v5, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzot;->zzg()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzA:Z

    if-eq v7, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x7

    :goto_1
    iput v7, p0, Lcom/google/android/gms/internal/ads/zzig;->zzB:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzi:Lcom/google/android/gms/internal/ads/zzic;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzz:J

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzot;->zze()Z

    move-result p1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzA:Z

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzic;->zzb(JZZ)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzv:Z

    if-nez p1, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzR()V

    :cond_3
    return-void
.end method

.method final synthetic zzL()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzL:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzq:Lcom/google/android/gms/internal/ads/zzhd;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zziv;->zzp(Lcom/google/android/gms/internal/ads/zziw;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    :cond_1
    return-void
.end method

.method final bridge synthetic zzM()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzR()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhd;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzq:Lcom/google/android/gms/internal/ads/zzhd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzm:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzakw;->zza()Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzT()V

    return-void
.end method

.method public final zzc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzy()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzK:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzv:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Loading finished before preparation is complete."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzs;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzx:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzs;

    return-object v0
.end method

.method public final zze(JZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzX()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzW()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzx:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzif;->zzc:[Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 4
    aget-object v3, v3, v2

    aget-boolean v4, p3, v2

    invoke-virtual {v3, p1, p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzit;->zzp(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzf(J)V
    .locals 0

    return-void
.end method

.method public final zzg()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzD:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzK:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzU()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzJ:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzD:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzG:J

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final zzh()J
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzx:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:[Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzK:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzW()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzH:J

    return-wide v0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzw:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 3
    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    .line 4
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzit;->zzj()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 5
    aget-object v9, v9, v6

    .line 6
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzit;->zzi()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzV()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzG:J

    return-wide v0

    :cond_6
    return-wide v7
.end method

.method public final zzi(J)J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzx:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzb:[Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzy:Lcom/google/android/gms/internal/ads/zzot;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzot;->zze()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzD:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzG:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzW()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzH:J

    return-wide p1

    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzB:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 4
    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 5
    aget-object v4, v4, v3

    .line 6
    invoke-virtual {v4, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzit;->zzm(JZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    aget-boolean v4, v0, v3

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzig;->zzw:Z

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide p1

    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzI:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzH:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzK:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzk:Lcom/google/android/gms/internal/ads/zzlh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlh;->zzi()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 8
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzit;->zzq()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzk:Lcom/google/android/gms/internal/ads/zzlh;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlh;->zzj()V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzk:Lcom/google/android/gms/internal/ads/zzlh;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlh;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 12
    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    .line 13
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzit;->zzb(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-wide p1
.end method

.method public final zzj(JLcom/google/android/gms/internal/ads/zzahz;)J
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-object/from16 v9, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzig;->zzX()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzig;->zzy:Lcom/google/android/gms/internal/ads/zzot;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzot;->zze()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzig;->zzy:Lcom/google/android/gms/internal/ads/zzot;

    .line 3
    invoke-interface {v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzot;->zzf(J)Lcom/google/android/gms/internal/ads/zzor;

    move-result-object v1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzor;->zza:Lcom/google/android/gms/internal/ads/zzou;

    iget-wide v10, v4, Lcom/google/android/gms/internal/ads/zzou;->zzb:J

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzor;->zzb:Lcom/google/android/gms/internal/ads/zzou;

    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/zzou;->zzb:J

    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/zzahz;->zzf:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    iget-wide v14, v9, Lcom/google/android/gms/internal/ads/zzahz;->zzg:J

    cmp-long v1, v14, v2

    if-nez v1, :cond_1

    move-wide v12, v7

    goto :goto_3

    :cond_1
    const-wide/high16 v14, -0x8000000000000000L

    move-wide/from16 v1, p1

    move-wide v3, v4

    move-wide v5, v14

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzamq;->zzB(JJJ)J

    move-result-wide v14

    iget-wide v3, v9, Lcom/google/android/gms/internal/ads/zzahz;->zzg:J

    const-wide v5, 0x7fffffffffffffffL

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzamq;->zzA(JJJ)J

    move-result-wide v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmp-long v5, v14, v10

    if-gtz v5, :cond_2

    cmp-long v5, v10, v1

    if-gtz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    cmp-long v6, v14, v12

    if-gtz v6, :cond_3

    cmp-long v6, v12, v1

    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    sub-long v1, v10, v7

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long v3, v12, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_4

    goto :goto_2

    :cond_4
    return-wide v12

    :cond_5
    if-eqz v5, :cond_6

    :goto_2
    move-wide v12, v10

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    :goto_3
    return-wide v12

    :cond_7
    return-wide v14
.end method

.method public final zzk()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzE:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzh()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl(J)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzK:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzk:Lcom/google/android/gms/internal/ads/zzlh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzlh;->zzf()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzI:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzv:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzE:I

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzm:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzakw;->zza()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzk:Lcom/google/android/gms/internal/ads/zzlh;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzlh;->zzi()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzT()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final zzm()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzk:Lcom/google/android/gms/internal/ads/zzlh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlh;->zzi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzm:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakw;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzq([Lcom/google/android/gms/internal/ads/zzjg;[Z[Lcom/google/android/gms/internal/ads/zziu;[ZJ)J
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzx:Lcom/google/android/gms/internal/ads/zzif;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzif;->zza:Lcom/google/android/gms/internal/ads/zzs;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzif;->zzc:[Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 5
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v6, p1, v4

    if-eqz v6, :cond_0

    aget-boolean v6, p2, v4

    if-nez v6, :cond_1

    .line 6
    :cond_0
    check-cast v5, Lcom/google/android/gms/internal/ads/zzid;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzid;->zza(Lcom/google/android/gms/internal/ads/zzid;)I

    move-result v5

    .line 7
    aget-boolean v6, v0, v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzig;->zzE:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzig;->zzE:I

    .line 8
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 9
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzC:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long p2, p5, v5

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    const/4 v2, 0x0

    .line 10
    :goto_3
    array-length v5, p1

    if-ge v2, v5, :cond_9

    .line 11
    aget-object v5, p3, v2

    if-nez v5, :cond_8

    aget-object v5, p1, v2

    if-eqz v5, :cond_8

    .line 12
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzjg;->zzc()I

    move-result v6

    if-ne v6, v4, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    .line 13
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzjg;->zze(I)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzjg;->zzb()Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v5

    .line 14
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzs;->zzb(Lcom/google/android/gms/internal/ads/zzq;)I

    move-result v5

    .line 15
    aget-boolean v6, v0, v5

    xor-int/2addr v6, v4

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzig;->zzE:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzig;->zzE:I

    .line 16
    aput-boolean v4, v0, v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzid;

    .line 17
    invoke-direct {v6, p0, v5}, Lcom/google/android/gms/internal/ads/zzid;-><init>(Lcom/google/android/gms/internal/ads/zzig;I)V

    aput-object v6, p3, v2

    .line 18
    aput-boolean v4, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 19
    aget-object p2, p2, v5

    .line 20
    invoke-virtual {p2, p5, p6, v4}, Lcom/google/android/gms/internal/ads/zzit;->zzm(JZ)Z

    move-result v5

    if-nez v5, :cond_7

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzit;->zzg()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzE:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzI:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzD:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzk:Lcom/google/android/gms/internal/ads/zzlh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzlh;->zzi()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 22
    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzit;->zzq()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzk:Lcom/google/android/gms/internal/ads/zzlh;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzlh;->zzj()V

    goto :goto_a

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 25
    array-length p2, p1

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 26
    invoke-virtual {p4, v3}, Lcom/google/android/gms/internal/ads/zzit;->zzb(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 27
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/zzig;->zzi(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 28
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 29
    aput-boolean v4, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 24
    :cond_e
    :goto_a
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzig;->zzC:Z

    return-wide p5
.end method

.method public final zzu()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzv:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzit;->zze()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzk:Lcom/google/android/gms/internal/ads/zzlh;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzlh;->zzk(Lcom/google/android/gms/internal/ads/zzle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzp:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzq:Lcom/google/android/gms/internal/ads/zzhd;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzL:Z

    return-void
.end method

.method public final zzv()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzit;->zza()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzl:Lcom/google/android/gms/internal/ads/zzhx;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zzb()V

    return-void
.end method

.method final zzw(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzP()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzK:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzit;->zzk(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final zzx(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzit;->zzf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzy()V

    return-void
.end method

.method final zzy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzk:Lcom/google/android/gms/internal/ads/zzlh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzB:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzku;->zza(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzlh;->zzl(I)V

    return-void
.end method

.method final zzz(ILcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzig;->zzP()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzig;->zzN(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzs:[Lcom/google/android/gms/internal/ads/zzit;

    .line 2
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zzK:Z

    .line 3
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/google/android/gms/internal/ads/zzit;->zzl(Lcom/google/android/gms/internal/ads/zzafw;Lcom/google/android/gms/internal/ads/zzaf;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzig;->zzO(I)V

    :cond_1
    return p2
.end method
