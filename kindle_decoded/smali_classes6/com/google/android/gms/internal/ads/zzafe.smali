.class final Lcom/google/android/gms/internal/ads/zzafe;
.super Lcom/google/android/gms/internal/ads/zzadu;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzahd;

.field private zzB:I

.field private zzC:J

.field private zzD:Lcom/google/android/gms/internal/ads/zzix;

.field final zzb:Lcom/google/android/gms/internal/ads/zzka;

.field final zzc:Lcom/google/android/gms/internal/ads/zzahi;

.field private final zzd:[Lcom/google/android/gms/internal/ads/zzahv;

.field private final zze:Lcom/google/android/gms/internal/ads/zzjz;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzalg;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzafn;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzafp;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzalm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzalm<",
            "Lcom/google/android/gms/internal/ads/zzahj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzj:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/zzaeh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzk:Lcom/google/android/gms/internal/ads/zzain;

.field private final zzl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzafd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzm:Z

.field private final zzn:Lcom/google/android/gms/internal/ads/zzhq;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzcy;

.field private final zzp:Landroid/os/Looper;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzki;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzaku;

.field private zzs:I

.field private zzt:I

.field private zzu:Z

.field private zzv:I

.field private zzw:Lcom/google/android/gms/internal/ads/zzahz;

.field private zzx:Lcom/google/android/gms/internal/ads/zzahi;

.field private zzy:Lcom/google/android/gms/internal/ads/zzago;

.field private zzz:Lcom/google/android/gms/internal/ads/zzago;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzahv;Lcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zzhq;Lcom/google/android/gms/internal/ads/zzafy;Lcom/google/android/gms/internal/ads/zzki;Lcom/google/android/gms/internal/ads/zzcy;ZLcom/google/android/gms/internal/ads/zzahz;JJLcom/google/android/gms/internal/ads/zzadz;JZLcom/google/android/gms/internal/ads/zzaku;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzahp;Lcom/google/android/gms/internal/ads/zzahi;[B)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v15, p17

    move-object/from16 v11, p18

    move-object/from16 v1, p19

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadu;-><init>()V

    .line 2
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamq;->zze:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1e

    add-int/2addr v7, v8

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Init "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " [ExoPlayerLib/2.15.0] ["

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExoPlayerImpl"

    .line 3
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    array-length v4, v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 6
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzd:[Lcom/google/android/gms/internal/ads/zzahv;

    if-eqz v3, :cond_0

    .line 30
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzafe;->zze:Lcom/google/android/gms/internal/ads/zzjz;

    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzn:Lcom/google/android/gms/internal/ads/zzhq;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzq:Lcom/google/android/gms/internal/ads/zzki;

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzo:Lcom/google/android/gms/internal/ads/zzcy;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzm:Z

    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzw:Lcom/google/android/gms/internal/ads/zzahz;

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzp:Landroid/os/Looper;

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzr:Lcom/google/android/gms/internal/ads/zzaku;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaej;

    .line 7
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(Lcom/google/android/gms/internal/ads/zzahp;)V

    invoke-direct {v7, v11, v15, v8}, Lcom/google/android/gms/internal/ads/zzalm;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzaku;Lcom/google/android/gms/internal/ads/zzalk;)V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    .line 8
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzj:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v7, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzl:Ljava/util/List;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzix;

    const/4 v8, 0x0

    .line 10
    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/zzix;-><init>(I)V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzD:Lcom/google/android/gms/internal/ads/zzix;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzka;

    const/4 v8, 0x2

    new-array v12, v8, [Lcom/google/android/gms/internal/ads/zzahx;

    new-array v8, v8, [Lcom/google/android/gms/internal/ads/zzjg;

    .line 11
    invoke-direct {v7, v12, v8, v4, v4}, Lcom/google/android/gms/internal/ads/zzka;-><init>([Lcom/google/android/gms/internal/ads/zzahx;[Lcom/google/android/gms/internal/ads/zzjg;Ljava/lang/Object;[B)V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzb:Lcom/google/android/gms/internal/ads/zzka;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzain;

    .line 12
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzain;-><init>()V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzahh;

    .line 13
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzahh;-><init>()V

    const/16 v8, 0xa

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    .line 14
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzahh;->zzc([I)Lcom/google/android/gms/internal/ads/zzahh;

    const/16 v8, 0x1c

    .line 15
    invoke-virtual {v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzahh;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzahh;

    move-object/from16 v5, p20

    .line 16
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzahh;->zzd(Lcom/google/android/gms/internal/ads/zzahi;)Lcom/google/android/gms/internal/ads/zzahh;

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzahh;->zze()Lcom/google/android/gms/internal/ads/zzahi;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzc:Lcom/google/android/gms/internal/ads/zzahi;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzahh;

    .line 18
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzahh;-><init>()V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzc:Lcom/google/android/gms/internal/ads/zzahi;

    .line 19
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzahh;->zzd(Lcom/google/android/gms/internal/ads/zzahi;)Lcom/google/android/gms/internal/ads/zzahh;

    const/4 v7, 0x3

    .line 20
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzahh;->zza(I)Lcom/google/android/gms/internal/ads/zzahh;

    const/16 v7, 0x9

    .line 21
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzahh;->zza(I)Lcom/google/android/gms/internal/ads/zzahh;

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzahh;->zze()Lcom/google/android/gms/internal/ads/zzahi;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzx:Lcom/google/android/gms/internal/ads/zzahi;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzago;->zza:Lcom/google/android/gms/internal/ads/zzago;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzy:Lcom/google/android/gms/internal/ads/zzago;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzz:Lcom/google/android/gms/internal/ads/zzago;

    const/4 v5, -0x1

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzB:I

    .line 23
    invoke-interface {v15, v11, v4}, Lcom/google/android/gms/internal/ads/zzaku;->zza(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzalg;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzf:Lcom/google/android/gms/internal/ads/zzalg;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaeu;

    .line 24
    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/zzaeu;-><init>(Lcom/google/android/gms/internal/ads/zzafe;)V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzg:Lcom/google/android/gms/internal/ads/zzafn;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzb:Lcom/google/android/gms/internal/ads/zzka;

    .line 25
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzahd;->zza(Lcom/google/android/gms/internal/ads/zzka;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 26
    invoke-virtual {v9, v1, v11}, Lcom/google/android/gms/internal/ads/zzcy;->zzc(Lcom/google/android/gms/internal/ads/zzahp;Landroid/os/Looper;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    .line 27
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzalm;->zzb(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Handler;

    .line 28
    invoke-direct {v1, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v6, v1, v9}, Lcom/google/android/gms/internal/ads/zzki;->zze(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzkh;)V

    .line 29
    new-instance v5, Lcom/google/android/gms/internal/ads/zzafp;

    move-object v1, v5

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzb:Lcom/google/android/gms/internal/ads/zzka;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v12, 0x1f4

    const/4 v14, 0x0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzg:Lcom/google/android/gms/internal/ads/zzafn;

    move-object/from16 v17, v7

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v7, v5

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p13

    move-object/from16 v15, p18

    move-object/from16 v16, p17

    move-object v0, v7

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/internal/ads/zzafp;-><init>([Lcom/google/android/gms/internal/ads/zzahv;Lcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zzka;Lcom/google/android/gms/internal/ads/zzafy;Lcom/google/android/gms/internal/ads/zzki;IZLcom/google/android/gms/internal/ads/zzcy;Lcom/google/android/gms/internal/ads/zzahz;Lcom/google/android/gms/internal/ads/zzadz;JZLandroid/os/Looper;Lcom/google/android/gms/internal/ads/zzaku;Lcom/google/android/gms/internal/ads/zzafn;[B)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzh:Lcom/google/android/gms/internal/ads/zzafp;

    return-void

    .line 30
    :cond_0
    throw v4

    .line 5
    :cond_1
    throw v4

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method static final synthetic zzH(Lcom/google/android/gms/internal/ads/zzahd;Lcom/google/android/gms/internal/ads/zzahj;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzR(Lcom/google/android/gms/internal/ads/zzahd;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzahj;->zzQ(Z)V

    return-void
.end method

.method private final zzK()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzB:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    return v0
.end method

.method private final zzL(Lcom/google/android/gms/internal/ads/zzahd;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzC:J

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    return-wide v0

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafe;->zzQ(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;J)J

    return-wide v2
.end method

.method private final zzM(Lcom/google/android/gms/internal/ads/zzahd;IIZZIJI)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 2
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzaiq;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    .line 7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    xor-int/2addr v4, v5

    .line 3
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 4
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 5
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v9

    const/4 v11, 0x3

    const-wide/16 v12, 0x0

    const/4 v14, -0x1

    .line 22
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    if-eqz v9, :cond_0

    .line 5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v4, Landroid/util/Pair;

    .line 22
    invoke-direct {v4, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v10

    if-eq v9, v10, :cond_1

    new-instance v4, Landroid/util/Pair;

    .line 7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 8
    :cond_1
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    .line 9
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    .line 10
    invoke-virtual {v7, v9, v10, v12, v13}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v7

    .line 11
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    .line 12
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    .line 13
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    .line 14
    invoke-virtual {v8, v9, v10, v12, v13}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v8

    .line 15
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    .line 16
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz p5, :cond_2

    if-nez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    if-ne v2, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const/4 v4, 0x3

    :goto_0
    new-instance v7, Landroid/util/Pair;

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v7, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v7

    goto :goto_1

    .line 21
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 17
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_5
    if-eqz p5, :cond_6

    if-nez v2, :cond_6

    .line 19
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_6

    new-instance v4, Landroid/util/Pair;

    const/4 v7, 0x0

    .line 21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_6
    new-instance v4, Landroid/util/Pair;

    .line 20
    invoke-direct {v4, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    :goto_1
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 24
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzy:Lcom/google/android/gms/internal/ads/zzago;

    const/4 v8, 0x0

    if-eqz v6, :cond_9

    .line 25
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v7

    if-nez v7, :cond_7

    .line 26
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    .line 27
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v7

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    .line 28
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    .line 29
    invoke-virtual {v9, v7, v10, v12, v13}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v7

    .line 28
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzc:Lcom/google/android/gms/internal/ads/zzagk;

    goto :goto_2

    :cond_7
    move-object v7, v8

    :goto_2
    if-eqz v7, :cond_8

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzagk;->zze:Lcom/google/android/gms/internal/ads/zzago;

    goto :goto_3

    .line 59
    :cond_8
    sget-object v9, Lcom/google/android/gms/internal/ads/zzago;->zza:Lcom/google/android/gms/internal/ads/zzago;

    :goto_3
    move-object/from16 v39, v9

    move-object v9, v7

    move-object/from16 v7, v39

    goto :goto_4

    :cond_9
    move-object v9, v8

    .line 30
    :goto_4
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzj:Ljava/util/List;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzj:Ljava/util/List;

    invoke-interface {v10, v14}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    new-instance v10, Lcom/google/android/gms/internal/ads/zzagm;

    .line 31
    invoke-direct {v10, v7, v8}, Lcom/google/android/gms/internal/ads/zzagm;-><init>(Lcom/google/android/gms/internal/ads/zzago;Lcom/google/android/gms/internal/ads/zzagn;)V

    .line 32
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzj:Ljava/util/List;

    const/4 v14, 0x0

    .line 33
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_b

    .line 34
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzaiv;

    const/4 v11, 0x0

    .line 35
    :goto_6
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzaiv;->zza()I

    move-result v12

    if-ge v11, v12, :cond_a

    .line 36
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzaiv;->zzb(I)Lcom/google/android/gms/internal/ads/zzaiu;

    move-result-object v12

    .line 37
    invoke-interface {v12, v10}, Lcom/google/android/gms/internal/ads/zzaiu;->zza(Lcom/google/android/gms/internal/ads/zzagm;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x3

    const-wide/16 v12, 0x0

    goto :goto_5

    :cond_b
    new-instance v7, Lcom/google/android/gms/internal/ads/zzago;

    .line 38
    invoke-direct {v7, v10, v8}, Lcom/google/android/gms/internal/ads/zzago;-><init>(Lcom/google/android/gms/internal/ads/zzagm;Lcom/google/android/gms/internal/ads/zzagn;)V

    :cond_c
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzy:Lcom/google/android/gms/internal/ads/zzago;

    .line 39
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzago;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v5

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzy:Lcom/google/android/gms/internal/ads/zzago;

    .line 40
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzaiq;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzafb;

    move/from16 v12, p2

    .line 41
    invoke-direct {v11, v1, v12}, Lcom/google/android/gms/internal/ads/zzafb;-><init>(Lcom/google/android/gms/internal/ads/zzahd;I)V

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    goto :goto_7

    :cond_d
    const/4 v12, 0x0

    :goto_7
    const/16 v7, 0xb

    if-eqz p5, :cond_15

    new-instance v11, Lcom/google/android/gms/internal/ads/zzain;

    .line 42
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzain;-><init>()V

    .line 43
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v13

    if-nez v13, :cond_e

    .line 44
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 45
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v14, v13, v11}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    iget v14, v11, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    .line 46
    iget-object v15, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v15

    .line 47
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    move/from16 v16, v6

    const-wide/16 v5, 0x0

    .line 48
    invoke-virtual {v12, v14, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v8

    .line 47
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaip;->zzc:Lcom/google/android/gms/internal/ads/zzagk;

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v13

    move/from16 v19, v14

    move/from16 v22, v15

    goto :goto_8

    :cond_e
    move/from16 v16, v6

    move/from16 v19, p9

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    :goto_8
    if-nez v2, :cond_10

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzain;->zzd:J

    .line 49
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 50
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    .line 51
    invoke-virtual {v11, v6, v5}, Lcom/google/android/gms/internal/ads/zzain;->zzh(II)J

    move-result-wide v5

    .line 52
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzafe;->zzN(Lcom/google/android/gms/internal/ads/zzahd;)J

    move-result-wide v11

    goto :goto_a

    .line 53
    :cond_f
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzo;->zze:I

    const/4 v11, -0x1

    if-eq v8, v11, :cond_12

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 54
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 55
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzafe;->zzN(Lcom/google/android/gms/internal/ads/zzahd;)J

    move-result-wide v5

    goto :goto_9

    .line 56
    :cond_10
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 57
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzafe;->zzN(Lcom/google/android/gms/internal/ads/zzahd;)J

    move-result-wide v11

    goto :goto_a

    .line 59
    :cond_11
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    :cond_12
    :goto_9
    move-wide v11, v5

    .line 52
    :goto_a
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaho;

    .line 60
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v23

    .line 61
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v25

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    move-object/from16 v17, v8

    move/from16 v27, v6

    move/from16 v28, v5

    invoke-direct/range {v17 .. v28}, Lcom/google/android/gms/internal/ads/zzaho;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzagk;Ljava/lang/Object;IJJII)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzv()I

    move-result v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 63
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 64
    iget-object v11, v6, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 65
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 66
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v6

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 67
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    const-wide/16 v14, 0x0

    .line 68
    invoke-virtual {v12, v5, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v12

    .line 67
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Ljava/lang/Object;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzaip;->zzc:Lcom/google/android/gms/internal/ads/zzagk;

    move/from16 v32, v6

    move-object/from16 v31, v11

    move-object/from16 v28, v12

    move-object/from16 v30, v13

    goto :goto_b

    :cond_13
    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, -0x1

    .line 69
    :goto_b
    invoke-static/range {p7 .. p8}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v33

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaho;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 70
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 71
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzafe;->zzN(Lcom/google/android/gms/internal/ads/zzahd;)J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v11

    move-wide/from16 v35, v11

    goto :goto_c

    :cond_14
    move-wide/from16 v35, v33

    :goto_c
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 72
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget v12, v11, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    move-object/from16 v27, v6

    move/from16 v29, v5

    move/from16 v37, v12

    move/from16 v38, v11

    invoke-direct/range {v27 .. v38}, Lcom/google/android/gms/internal/ads/zzaho;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzagk;Ljava/lang/Object;IJJII)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzafc;

    .line 73
    invoke-direct {v11, v2, v8, v6}, Lcom/google/android/gms/internal/ads/zzafc;-><init>(ILcom/google/android/gms/internal/ads/zzaho;Lcom/google/android/gms/internal/ads/zzaho;)V

    invoke-virtual {v5, v7, v11}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    goto :goto_d

    :cond_15
    move/from16 v16, v6

    :goto_d
    if-eqz v16, :cond_16

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaek;

    .line 74
    invoke-direct {v5, v9, v4}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(Lcom/google/android/gms/internal/ads/zzagk;I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    .line 75
    :cond_16
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzf:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzf:Lcom/google/android/gms/internal/ads/zzaeg;

    const/16 v5, 0xa

    if-eq v2, v4, :cond_17

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzael;

    .line 76
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzael;-><init>(Lcom/google/android/gms/internal/ads/zzahd;)V

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    .line 77
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzf:Lcom/google/android/gms/internal/ads/zzaeg;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaem;

    .line 78
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzaem;-><init>(Lcom/google/android/gms/internal/ads/zzahd;)V

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    .line 79
    :cond_17
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzi:Lcom/google/android/gms/internal/ads/zzka;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzi:Lcom/google/android/gms/internal/ads/zzka;

    if-eq v2, v4, :cond_18

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zze:Lcom/google/android/gms/internal/ads/zzjz;

    .line 80
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzka;->zzc:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzjz;->zzi(Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzt;

    .line 81
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzi:Lcom/google/android/gms/internal/ads/zzka;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzka;->zzd:[Lcom/google/android/gms/internal/ads/zzjg;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzt;-><init>([Lcom/google/android/gms/internal/ads/zzjg;[B)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaen;

    .line 82
    invoke-direct {v6, v1, v2}, Lcom/google/android/gms/internal/ads/zzaen;-><init>(Lcom/google/android/gms/internal/ads/zzahd;Lcom/google/android/gms/internal/ads/zzt;)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    :cond_18
    if-eqz v10, :cond_19

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzy:Lcom/google/android/gms/internal/ads/zzago;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaeo;

    .line 83
    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzaeo;-><init>(Lcom/google/android/gms/internal/ads/zzago;)V

    const/16 v2, 0xe

    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    .line 84
    :cond_19
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzg:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzg:Z

    if-eq v2, v4, :cond_1a

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaep;

    .line 85
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzaep;-><init>(Lcom/google/android/gms/internal/ads/zzahd;)V

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    .line 86
    :cond_1a
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    if-ne v2, v4, :cond_1b

    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    if-eq v2, v4, :cond_1c

    :cond_1b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaeq;

    .line 87
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzaeq;-><init>(Lcom/google/android/gms/internal/ads/zzahd;)V

    const/4 v6, -0x1

    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    .line 88
    :cond_1c
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v6, 0x4

    if-eq v2, v4, :cond_1d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaer;

    .line 89
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzaer;-><init>(Lcom/google/android/gms/internal/ads/zzahd;)V

    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    .line 90
    :cond_1d
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    const/4 v8, 0x5

    if-eq v2, v4, :cond_1e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaes;

    move/from16 v9, p3

    .line 91
    invoke-direct {v4, v1, v9}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzahd;I)V

    invoke-virtual {v2, v8, v4}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    .line 92
    :cond_1e
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzm:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzm:I

    const/4 v9, 0x6

    if-eq v2, v4, :cond_1f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaet;

    .line 93
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(Lcom/google/android/gms/internal/ads/zzahd;)V

    invoke-virtual {v2, v9, v4}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    .line 94
    :cond_1f
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzafe;->zzR(Lcom/google/android/gms/internal/ads/zzahd;)Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzafe;->zzR(Lcom/google/android/gms/internal/ads/zzahd;)Z

    move-result v4

    const/4 v10, 0x7

    if-eq v2, v4, :cond_20

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaev;

    .line 95
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzaev;-><init>(Lcom/google/android/gms/internal/ads/zzahd;)V

    invoke-virtual {v2, v10, v4}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    .line 96
    :cond_20
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzn:Lcom/google/android/gms/internal/ads/zzahf;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzn:Lcom/google/android/gms/internal/ads/zzahf;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzahf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaew;

    .line 97
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzaew;-><init>(Lcom/google/android/gms/internal/ads/zzahd;)V

    const/16 v11, 0xc

    invoke-virtual {v2, v11, v4}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    :cond_21
    if-eqz p4, :cond_22

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzaex;->zza:Lcom/google/android/gms/internal/ads/zzalj;

    const/4 v11, -0x1

    .line 98
    invoke-virtual {v2, v11, v4}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    :cond_22
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzx:Lcom/google/android/gms/internal/ads/zzahi;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzc:Lcom/google/android/gms/internal/ads/zzahi;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzahh;

    .line 99
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzahh;-><init>()V

    .line 100
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzahh;->zzd(Lcom/google/android/gms/internal/ads/zzahi;)Lcom/google/android/gms/internal/ads/zzahh;

    .line 101
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzA()Z

    move-result v4

    const/4 v12, 0x1

    xor-int/2addr v4, v12

    const/4 v12, 0x3

    invoke-virtual {v11, v12, v4}, Lcom/google/android/gms/internal/ads/zzahh;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzahh;

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadu;->zzd()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzA()Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x1

    goto :goto_e

    :cond_23
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v11, v6, v4}, Lcom/google/android/gms/internal/ads/zzahh;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzahh;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadu;->zza()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzA()Z

    move-result v4

    if-nez v4, :cond_24

    const/4 v4, 0x1

    goto :goto_f

    :cond_24
    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v11, v8, v4}, Lcom/google/android/gms/internal/ads/zzahh;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzahh;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 104
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 105
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v4

    if-nez v4, :cond_26

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadu;->zza()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadu;->zzc()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadu;->zzd()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 107
    :cond_25
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzA()Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_10

    :cond_26
    const/4 v4, 0x0

    .line 108
    :goto_10
    invoke-virtual {v11, v9, v4}, Lcom/google/android/gms/internal/ads/zzahh;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzahh;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadu;->zzb()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzA()Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x1

    goto :goto_11

    :cond_27
    const/4 v4, 0x0

    :goto_11
    invoke-virtual {v11, v10, v4}, Lcom/google/android/gms/internal/ads/zzahh;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzahh;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 110
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 111
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v4

    if-nez v4, :cond_29

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadu;->zzb()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadu;->zzc()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 113
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 114
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v6

    if-nez v6, :cond_29

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzv()I

    move-result v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    const-wide/16 v9, 0x0

    .line 115
    invoke-virtual {v4, v6, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v4

    .line 114
    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzaip;->zzh:Z

    if-eqz v4, :cond_29

    .line 116
    :cond_28
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzA()Z

    move-result v4

    if-nez v4, :cond_29

    const/4 v4, 0x1

    goto :goto_12

    :cond_29
    const/4 v4, 0x0

    :goto_12
    const/16 v6, 0x8

    .line 117
    invoke-virtual {v11, v6, v4}, Lcom/google/android/gms/internal/ads/zzahh;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzahh;

    const/16 v4, 0x9

    .line 118
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzA()Z

    move-result v6

    const/4 v8, 0x1

    xor-int/2addr v6, v8

    invoke-virtual {v11, v4, v6}, Lcom/google/android/gms/internal/ads/zzahh;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzahh;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadu;->zzd()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzA()Z

    move-result v4

    if-nez v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_13

    :cond_2a
    const/4 v4, 0x0

    :goto_13
    invoke-virtual {v11, v5, v4}, Lcom/google/android/gms/internal/ads/zzahh;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzahh;

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadu;->zzd()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzA()Z

    move-result v4

    if-nez v4, :cond_2b

    const/4 v5, 0x1

    goto :goto_14

    :cond_2b
    const/4 v5, 0x0

    :goto_14
    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzahh;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzahh;

    .line 121
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzahh;->zze()Lcom/google/android/gms/internal/ads/zzahi;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzx:Lcom/google/android/gms/internal/ads/zzahi;

    .line 122
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzahi;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaey;

    .line 123
    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/zzaey;-><init>(Lcom/google/android/gms/internal/ads/zzafe;)V

    const/16 v5, 0xd

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    :cond_2c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    .line 124
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzalm;->zze()V

    .line 125
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzo:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzo:Z

    if-eq v2, v4, :cond_2d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzj:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 126
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaeh;

    .line 127
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzo:Z

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzaeh;->zza(Z)V

    goto :goto_15

    .line 128
    :cond_2d
    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/zzahd;->zzp:Z

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzp:Z

    if-eq v2, v3, :cond_2e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzj:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 129
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaeh;

    .line 130
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzp:Z

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzaeh;->zzb(Z)V

    goto :goto_16

    :cond_2e
    return-void
.end method

.method private static zzN(Lcom/google/android/gms/internal/ads/zzahd;)J
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaip;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaip;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzain;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzain;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    .line 4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    const-wide/16 v2, 0x0

    .line 6
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object p0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaip;->zzl:J

    :cond_0
    return-wide v2
.end method

.method private final zzO(Lcom/google/android/gms/internal/ads/zzahd;Lcom/google/android/gms/internal/ads/zzaiq;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzahd;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzahd;",
            "Lcom/google/android/gms/internal/ads/zzaiq;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzahd;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    move-object/from16 v3, p1

    .line 2
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 3
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzahd;->zzd(Lcom/google/android/gms/internal/ads/zzaiq;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v7

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzahd;->zzb()Lcom/google/android/gms/internal/ads/zzhf;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzC:J

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    .line 6
    sget-object v17, Lcom/google/android/gms/internal/ads/zzs;->zza:Lcom/google/android/gms/internal/ads/zzs;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzb:Lcom/google/android/gms/internal/ads/zzka;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v19

    move-object v8, v1

    move-wide v9, v13

    move-wide v11, v13

    move-object/from16 v18, v2

    .line 8
    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/zzahd;->zzc(Lcom/google/android/gms/internal/ads/zzhf;JJJJLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzka;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v2

    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzahd;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    return-object v1

    :cond_2
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 10
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 11
    sget v8, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_3

    new-instance v9, Lcom/google/android/gms/internal/ads/zzhf;

    .line 12
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 36
    :cond_3
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    :goto_2
    move-object v15, v9

    .line 13
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzD()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v9

    .line 15
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    .line 16
    invoke-virtual {v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    :cond_4
    if-nez v8, :cond_a

    cmp-long v2, v13, v9

    if-gez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    if-nez v2, :cond_8

    .line 21
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzk:Lcom/google/android/gms/internal/ads/zzhf;

    .line 22
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    .line 24
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(ILcom/google/android/gms/internal/ads/zzain;Z)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v2

    .line 25
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    .line 26
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzain;->zzc:I

    if-eq v2, v3, :cond_e

    .line 27
    :cond_6
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    .line 28
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    .line 29
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    iget v3, v15, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzain;->zzh(II)J

    move-result-wide v1

    goto :goto_3

    .line 32
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    .line 30
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzain;->zzd:J

    .line 29
    :goto_3
    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    iget-wide v11, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    iget-wide v13, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzd:J

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    sub-long v3, v1, v3

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzh:Lcom/google/android/gms/internal/ads/zzs;

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzi:Lcom/google/android/gms/internal/ads/zzka;

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzj:Ljava/util/List;

    move-object/from16 v19, v8

    move-object v8, v15

    move-object v0, v15

    move-wide v15, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 31
    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/zzahd;->zzc(Lcom/google/android/gms/internal/ads/zzhf;JJJJLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzka;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v3

    .line 32
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzahd;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v7

    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    goto :goto_4

    :cond_8
    move-object v0, v15

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    const-wide/16 v1, 0x0

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzr:J

    sub-long v5, v13, v9

    sub-long/2addr v3, v5

    .line 34
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzk:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 35
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-long v1, v13, v15

    :cond_9
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzh:Lcom/google/android/gms/internal/ads/zzs;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzi:Lcom/google/android/gms/internal/ads/zzka;

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzj:Ljava/util/List;

    move-object v8, v0

    move-wide v9, v13

    move-wide v11, v13

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 36
    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/zzahd;->zzc(Lcom/google/android/gms/internal/ads/zzhf;JJJJLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzka;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v7

    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    :goto_4
    move-object/from16 v0, p0

    goto :goto_9

    :cond_a
    :goto_5
    move-object v0, v15

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    if-eqz v8, :cond_b

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/ads/zzs;->zza:Lcom/google/android/gms/internal/ads/zzs;

    goto :goto_6

    .line 21
    :cond_b
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzh:Lcom/google/android/gms/internal/ads/zzs;

    :goto_6
    move-object/from16 v17, v1

    if-eqz v8, :cond_c

    move-object v1, v0

    move-object/from16 v0, p0

    .line 18
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafe;->zzb:Lcom/google/android/gms/internal/ads/zzka;

    goto :goto_7

    :cond_c
    move-object v1, v0

    move-object/from16 v0, p0

    .line 21
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzi:Lcom/google/android/gms/internal/ads/zzka;

    :goto_7
    move-object/from16 v18, v2

    if-eqz v8, :cond_d

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    goto :goto_8

    .line 21
    :cond_d
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzj:Ljava/util/List;

    :goto_8
    move-object/from16 v19, v2

    const-wide/16 v15, 0x0

    move-object v8, v1

    move-wide v9, v13

    move-wide v11, v13

    move-wide v2, v13

    .line 20
    invoke-virtual/range {v7 .. v19}, Lcom/google/android/gms/internal/ads/zzahd;->zzc(Lcom/google/android/gms/internal/ads/zzhf;JJJJLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzka;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v4

    .line 21
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzahd;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v7

    iput-wide v2, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    :cond_e
    :goto_9
    return-object v7
.end method

.method private final zzP(Lcom/google/android/gms/internal/ads/zzaiq;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaiq;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzB:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzC:J

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v0

    if-lt p2, v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaiq;->zze(Z)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    .line 4
    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object p3

    iget-wide p3, p3, Lcom/google/android/gms/internal/ads/zzaip;->zzl:J

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide p3

    :cond_3
    move v3, p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    .line 6
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaiq;->zzv(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzain;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzQ(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;J)J
    .locals 1

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    return-wide p3
.end method

.method private static zzR(Lcom/google/android/gms/internal/ads/zzahd;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzahd;->zzm:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zzA()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v0

    return v0
.end method

.method public final zzB()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzA()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzC()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzA()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzD()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzA()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 3
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_0

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzv()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    .line 7
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzl:J

    .line 8
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 5
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzahd;->zzc:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzx()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzE()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzd:[Lcom/google/android/gms/internal/ads/zzahv;

    array-length v0, v0

    const/4 v0, 0x2

    return v0
.end method

.method public final zzF()Lcom/google/android/gms/internal/ads/zzaiq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    return-object v0
.end method

.method final synthetic zzG(Lcom/google/android/gms/internal/ads/zzahj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzx:Lcom/google/android/gms/internal/ads/zzahi;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzahj;->zzL(Lcom/google/android/gms/internal/ads/zzahi;)V

    return-void
.end method

.method final synthetic zzI(Lcom/google/android/gms/internal/ads/zzafm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzf:Lcom/google/android/gms/internal/ads/zzalg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaez;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzaez;-><init>(Lcom/google/android/gms/internal/ads/zzafe;Lcom/google/android/gms/internal/ads/zzafm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzj(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zzJ(Lcom/google/android/gms/internal/ads/zzafm;)V
    .locals 12

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzs:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzafm;->zzb:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzs:I

    .line 2
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzafm;->zzc:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzafm;->zzd:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzt:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzu:Z

    .line 4
    :cond_0
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzafm;->zze:Z

    if-eqz v2, :cond_1

    .line 5
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzafm;->zzf:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzv:I

    :cond_1
    if-nez v1, :cond_b

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzafm;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 7
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzB:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzC:J

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 9
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaht;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaht;->zzs()Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzl:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    const/4 v5, 0x0

    .line 11
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzl:Ljava/util/List;

    .line 12
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzafd;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzafd;->zza(Lcom/google/android/gms/internal/ads/zzafd;Lcom/google/android/gms/internal/ads/zzaiq;)Lcom/google/android/gms/internal/ads/zzaiq;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzu:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_a

    .line 13
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzafm;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 14
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzafm;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzahd;->zzd:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-wide v10, v2, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    cmp-long v2, v7, v10

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-eqz v3, :cond_9

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzafm;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 17
    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzafm;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzahd;->zzd:J

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzafe;->zzQ(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;J)J

    goto :goto_4

    .line 16
    :cond_8
    :goto_3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzafm;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzd:J

    :goto_4
    move v5, v3

    move-wide v7, v6

    goto :goto_5

    :cond_9
    move-wide v7, v5

    move v5, v3

    goto :goto_5

    :cond_a
    move-wide v7, v5

    const/4 v5, 0x0

    :goto_5
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzu:Z

    .line 18
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzafm;->zza:Lcom/google/android/gms/internal/ads/zzahd;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzv:I

    const/4 v4, 0x0

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzt:I

    const/4 v9, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzafe;->zzM(Lcom/google/android/gms/internal/ads/zzahd;IIZZIJI)V

    :cond_b
    return-void
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzp:Z

    return v0
.end method

.method public final zzf()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzp:Landroid/os/Looper;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzahj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzalm;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzaeh;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzj:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzi()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    return v0
.end method

.method public final zzj()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzahd;->zzf(Lcom/google/android/gms/internal/ads/zzaeg;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v1

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzahd;->zze(I)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzs:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzs:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzh:Lcom/google/android/gms/internal/ads/zzafp;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafp;->zze()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    .line 6
    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zzafe;->zzM(Lcom/google/android/gms/internal/ads/zzahd;IIZZIJI)V

    return-void
.end method

.method public final zzk(Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzhh;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzK()I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzx()J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzs:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzl:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzl:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzl:Ljava/util/List;

    .line 5
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzD:Lcom/google/android/gms/internal/ads/zzix;

    .line 6
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzix;->zzg(II)Lcom/google/android/gms/internal/ads/zzix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzD:Lcom/google/android/gms/internal/ads/zzix;

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 8
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzagx;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzhh;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzm:Z

    invoke-direct {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzagx;-><init>(Lcom/google/android/gms/internal/ads/zzhh;Z)V

    .line 10
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzl:Ljava/util/List;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzafd;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzagx;->zzb:Ljava/lang/Object;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzhb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhb;->zzy()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v3

    .line 11
    invoke-direct {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzafd;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzaiq;)V

    .line 12
    invoke-interface {v6, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzD:Lcom/google/android/gms/internal/ads/zzix;

    .line 13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 14
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzix;->zzf(II)Lcom/google/android/gms/internal/ads/zzix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzD:Lcom/google/android/gms/internal/ads/zzix;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaht;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzl:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzD:Lcom/google/android/gms/internal/ads/zzix;

    const/4 v6, 0x0

    .line 15
    invoke-direct {v0, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaht;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzix;[B)V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, -0x1

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaht;->zza()I

    move-result v3

    if-ltz v3, :cond_3

    goto :goto_2

    .line 28
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzafx;

    .line 29
    invoke-direct {v1, v0, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;IJ)V

    throw v1

    .line 17
    :cond_4
    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzadm;->zze(Z)I

    move-result v8

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 18
    invoke-direct {p0, v0, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzafe;->zzP(Lcom/google/android/gms/internal/ads/zzaiq;IJ)Landroid/util/Pair;

    move-result-object v9

    .line 19
    invoke-direct {p0, v3, v0, v9}, Lcom/google/android/gms/internal/ads/zzafe;->zzO(Lcom/google/android/gms/internal/ads/zzahd;Lcom/google/android/gms/internal/ads/zzaiq;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v3

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    const/4 v10, 0x4

    if-eq v8, v7, :cond_7

    if-eq v9, v1, :cond_7

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaht;->zza()I

    move-result v0

    if-lt v8, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x2

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, 0x4

    .line 21
    :cond_7
    :goto_4
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzahd;->zze(I)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v9

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzh:Lcom/google/android/gms/internal/ads/zzafp;

    .line 22
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzD:Lcom/google/android/gms/internal/ads/zzix;

    move v5, v8

    move-object v8, v0

    .line 23
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzafp;->zzq(Ljava/util/List;IJLcom/google/android/gms/internal/ads/zzix;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 27
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzafe;->zzL(Lcom/google/android/gms/internal/ads/zzahd;)J

    move-result-wide v7

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, v9

    move v9, v10

    .line 28
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzafe;->zzM(Lcom/google/android/gms/internal/ads/zzahd;IIZZIJI)V

    return-void
.end method

.method public final zzl(ZII)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    if-ne v1, p1, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzm:I

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzs:I

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzahd;->zzh(ZI)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzh:Lcom/google/android/gms/internal/ads/zzafp;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzafp;->zzf(ZI)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, -0x1

    move-object v2, p0

    move v5, p3

    .line 4
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzafe;->zzM(Lcom/google/android/gms/internal/ads/zzahd;IIZZIJI)V

    return-void
.end method

.method public final zzm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzl:Z

    return v0
.end method

.method public final zzn()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzp(IJ)V
    .locals 13

    move-object v10, p0

    move v0, p1

    move-wide v1, p2

    .line 1
    iget-object v3, v10, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    if-ltz v0, :cond_3

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v4

    if-ge v0, v4, :cond_3

    :cond_0
    iget v4, v10, Lcom/google/android/gms/internal/ads/zzafe;->zzs:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v10, Lcom/google/android/gms/internal/ads/zzafe;->zzs:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzA()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 4
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzahd;->zze:I

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzv()I

    move-result v9

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzahd;->zze(I)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v4

    .line 7
    invoke-direct {p0, v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzafe;->zzP(Lcom/google/android/gms/internal/ads/zzaiq;IJ)Landroid/util/Pair;

    move-result-object v5

    .line 8
    invoke-direct {p0, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzafe;->zzO(Lcom/google/android/gms/internal/ads/zzahd;Lcom/google/android/gms/internal/ads/zzaiq;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v4

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzafe;->zzh:Lcom/google/android/gms/internal/ads/zzafp;

    .line 9
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v1

    invoke-virtual {v5, v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zzg(Lcom/google/android/gms/internal/ads/zzaiq;IJ)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 10
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzafe;->zzL(Lcom/google/android/gms/internal/ads/zzahd;)J

    move-result-wide v11

    move-object v0, p0

    move-object v1, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v11

    .line 11
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzafe;->zzM(Lcom/google/android/gms/internal/ads/zzahd;IIZZIJI)V

    return-void

    :cond_2
    const-string v0, "ExoPlayerImpl"

    const-string v1, "seekTo ignored because an ad is playing"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafm;

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 13
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzafm;-><init>(Lcom/google/android/gms/internal/ads/zzahd;)V

    .line 14
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzafm;->zzb(I)V

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzafe;->zzg:Lcom/google/android/gms/internal/ads/zzafn;

    .line 15
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzafn;->zza(Lcom/google/android/gms/internal/ads/zzafm;)V

    return-void

    .line 11
    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzafx;

    .line 16
    invoke-direct {v4, v3, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;IJ)V

    throw v4
.end method

.method public final zzq(Z)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzr(ZLcom/google/android/gms/internal/ads/zzaeg;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzahd;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/zzahd;->zzr:J

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzahd;->zze(I)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzahd;->zzf(Lcom/google/android/gms/internal/ads/zzaeg;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object p1

    :cond_0
    move-object v2, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzs:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzs:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzh:Lcom/google/android/gms/internal/ads/zzafp;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzafp;->zzh()V

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x4

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzafe;->zzL(Lcom/google/android/gms/internal/ads/zzahd;)J

    move-result-wide v8

    const/4 v10, -0x1

    move-object v1, p0

    .line 7
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzafe;->zzM(Lcom/google/android/gms/internal/ads/zzahd;IIZZIJI)V

    return-void
.end method

.method public final zzs()V
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamq;->zze:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzafq;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x24

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [ExoPlayerLib/2.15.0] ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzh:Lcom/google/android/gms/internal/ads/zzafp;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafp;->zzj()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/internal/ads/zzafa;->zza:Lcom/google/android/gms/internal/ads/zzalj;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzalm;->zzd(ILcom/google/android/gms/internal/ads/zzalj;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzalm;->zze()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzi:Lcom/google/android/gms/internal/ads/zzalm;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzalm;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzf:Lcom/google/android/gms/internal/ads/zzalg;

    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzi(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzo:Lcom/google/android/gms/internal/ads/zzcy;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzq:Lcom/google/android/gms/internal/ads/zzki;

    .line 8
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzki;->zzf(Lcom/google/android/gms/internal/ads/zzkh;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzahd;->zze(I)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 10
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzahd;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)Lcom/google/android/gms/internal/ads/zzahd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 11
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzs:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzr:J

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzahr;)Lcom/google/android/gms/internal/ads/zzahs;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzahs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzh:Lcom/google/android/gms/internal/ads/zzafp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzv()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzr:Lcom/google/android/gms/internal/ads/zzaku;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzh:Lcom/google/android/gms/internal/ads/zzafp;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafp;->zzk()Landroid/os/Looper;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzahs;-><init>(Lcom/google/android/gms/internal/ads/zzahq;Lcom/google/android/gms/internal/ads/zzahr;Lcom/google/android/gms/internal/ads/zzaiq;ILcom/google/android/gms/internal/ads/zzaku;Landroid/os/Looper;)V

    return-object v7
.end method

.method public final zzu()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzv()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzK()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final zzw()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzA()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzahp;->zzv()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    const-wide/16 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzm:J

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    .line 9
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzo;->zzc:I

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzain;->zzh(II)J

    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzx()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzL(Lcom/google/android/gms/internal/ads/zzahd;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzy()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzA()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzk:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 16
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzw()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzt()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzC:J

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzk:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:Lcom/google/android/gms/internal/ads/zzhf;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzo;->zzd:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-eqz v7, :cond_3

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafe;->zzv()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzadu;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    .line 5
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(ILcom/google/android/gms/internal/ads/zzaip;J)Lcom/google/android/gms/internal/ads/zzaip;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzaip;->zzm:J

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v0

    goto :goto_2

    .line 7
    :cond_3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzq:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzahd;->zzk:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzo;->zzb()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzk:Lcom/google/android/gms/internal/ads/zzhf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzo;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzk:Lcom/google/android/gms/internal/ads/zzain;

    .line 10
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzy(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzain;)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 11
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzahd;->zzk:Lcom/google/android/gms/internal/ads/zzhf;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzo;->zzb:I

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzain;->zzb(I)J

    goto :goto_1

    :cond_4
    move-wide v5, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    .line 13
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahd;->zza:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzk:Lcom/google/android/gms/internal/ads/zzhf;

    .line 14
    invoke-direct {p0, v1, v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzafe;->zzQ(Lcom/google/android/gms/internal/ads/zzaiq;Lcom/google/android/gms/internal/ads/zzhf;J)J

    .line 13
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v0

    :goto_2
    return-wide v0
.end method

.method public final zzz()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafe;->zzA:Lcom/google/android/gms/internal/ads/zzahd;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzahd;->zzr:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zza(J)J

    move-result-wide v0

    return-wide v0
.end method
