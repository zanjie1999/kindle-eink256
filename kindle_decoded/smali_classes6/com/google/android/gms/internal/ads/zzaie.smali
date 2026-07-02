.class public final Lcom/google/android/gms/internal/ads/zzaie;
.super Lcom/google/android/gms/internal/ads/zzadu;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahp;


# instance fields
.field private zzA:F

.field private zzB:Z

.field private zzC:Ljava/util/List;

.field private zzD:Z

.field private zzE:Z

.field private zzF:Lcom/google/android/gms/internal/ads/zzaee;

.field private zzG:Lcom/google/android/gms/internal/ads/zzy;

.field protected final zzb:[Lcom/google/android/gms/internal/ads/zzahv;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzakw;

.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/android/gms/internal/ads/zzafe;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzaib;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzaic;

.field private final zzh:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/zzahl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcy;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzadp;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzadt;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzaij;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzair;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzais;

.field private zzo:Lcom/google/android/gms/internal/ads/zzafv;

.field private zzp:Lcom/google/android/gms/internal/ads/zzafv;

.field private zzq:Landroid/media/AudioTrack;

.field private zzr:Ljava/lang/Object;

.field private zzs:Landroid/view/Surface;

.field private zzt:I

.field private zzu:I

.field private zzv:I

.field private zzw:Lcom/google/android/gms/internal/ads/zzaz;

.field private zzx:Lcom/google/android/gms/internal/ads/zzaz;

.field private zzy:I

.field private zzz:Lcom/google/android/gms/internal/ads/zzg;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzaia;)V
    .locals 35

    move-object/from16 v15, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadu;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakw;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaku;->zza:Lcom/google/android/gms/internal/ads/zzaku;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzakw;-><init>(Lcom/google/android/gms/internal/ads/zzaku;)V

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzc:Lcom/google/android/gms/internal/ads/zzakw;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zza(Lcom/google/android/gms/internal/ads/zzaia;)Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzd:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzh(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzcy;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzi:Lcom/google/android/gms/internal/ads/zzcy;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzj(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzg;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzz:Lcom/google/android/gms/internal/ads/zzg;

    const/4 v0, 0x1

    iput v0, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzt:I

    const/4 v14, 0x0

    iput-boolean v14, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzB:Z

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaib;

    const/4 v12, 0x0

    invoke-direct {v1, v15, v12}, Lcom/google/android/gms/internal/ads/zzaib;-><init>(Lcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/internal/ads/zzaid;)V

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzf:Lcom/google/android/gms/internal/ads/zzaib;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaic;

    invoke-direct {v1, v12}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(Lcom/google/android/gms/internal/ads/zzaid;)V

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzg:Lcom/google/android/gms/internal/ads/zzaic;

    .line 5
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzh:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v13, Landroid/os/Handler;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzi(Lcom/google/android/gms/internal/ads/zzaia;)Landroid/os/Looper;

    move-result-object v1

    .line 6
    invoke-direct {v13, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzb(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzahy;

    move-result-object v2

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzf:Lcom/google/android/gms/internal/ads/zzaib;

    move-object v3, v13

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    .line 7
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzahy;->zza(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzmu;Lcom/google/android/gms/internal/ads/zzdq;Lcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzaiw;)[Lcom/google/android/gms/internal/ads/zzahv;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzb:[Lcom/google/android/gms/internal/ads/zzahv;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzA:F

    .line 8
    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzq:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzq:Landroid/media/AudioTrack;

    .line 10
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    iput-object v12, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzq:Landroid/media/AudioTrack;

    :cond_0
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzq:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    const/16 v5, 0xfa0

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    .line 11
    invoke-direct/range {v3 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzq:Landroid/media/AudioTrack;

    :cond_1
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzq:Landroid/media/AudioTrack;

    .line 12
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    iput v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzy:I

    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzd:Landroid/content/Context;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzc(Landroid/content/Context;)I

    move-result v1

    iput v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzy:I

    .line 14
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzC:Ljava/util/List;

    iput-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzD:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzahh;

    .line 15
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzahh;-><init>()V

    const/16 v10, 0x8

    new-array v3, v10, [I

    const/16 v4, 0x14

    aput v4, v3, v14

    aput v2, v3, v0

    const/16 v2, 0x16

    const/4 v11, 0x2

    aput v2, v3, v11

    const/16 v2, 0x17

    const/4 v9, 0x3

    aput v2, v3, v9

    const/16 v2, 0x18

    const/4 v8, 0x4

    aput v2, v3, v8

    const/16 v2, 0x19

    const/4 v7, 0x5

    aput v2, v3, v7

    const/16 v2, 0x1a

    const/4 v6, 0x6

    aput v2, v3, v6

    const/16 v2, 0x1b

    const/4 v5, 0x7

    aput v2, v3, v5

    .line 16
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzahh;->zzc([I)Lcom/google/android/gms/internal/ads/zzahh;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzahh;->zze()Lcom/google/android/gms/internal/ads/zzahi;

    move-result-object v21

    new-instance v4, Lcom/google/android/gms/internal/ads/zzafe;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzb:[Lcom/google/android/gms/internal/ads/zzahv;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzd(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzjz;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zze(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzhq;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzf(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzafy;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzg(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzki;

    move-result-object v18

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzaie;->zzi:Lcom/google/android/gms/internal/ads/zzcy;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzk(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzahz;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzo(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v20

    const/16 v23, 0x1

    const-wide/16 v24, 0x1388

    const-wide/16 v26, 0x3a98

    const-wide/16 v28, 0x1f4

    const/16 v30, 0x0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzc(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzaku;

    move-result-object v31

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zzi(Lcom/google/android/gms/internal/ads/zzaia;)Landroid/os/Looper;

    move-result-object v32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v22, 0x0

    move-object/from16 v33, v1

    move-object v1, v4

    move-object v0, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v33

    move/from16 v8, v23

    move-object/from16 v9, v19

    move-wide/from16 v10, v24

    move-object/from16 v34, v13

    move-wide/from16 v12, v26

    const/16 v23, 0x0

    move-object/from16 v14, v20

    move-wide/from16 v15, v28

    move/from16 v17, v30

    move-object/from16 v18, v31

    move-object/from16 v19, v32

    move-object/from16 v20, p0

    .line 18
    :try_start_1
    invoke-direct/range {v1 .. v22}, Lcom/google/android/gms/internal/ads/zzafe;-><init>([Lcom/google/android/gms/internal/ads/zzahv;Lcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zzhq;Lcom/google/android/gms/internal/ads/zzafy;Lcom/google/android/gms/internal/ads/zzki;Lcom/google/android/gms/internal/ads/zzcy;ZLcom/google/android/gms/internal/ads/zzahz;JJLcom/google/android/gms/internal/ads/zzadz;JZLcom/google/android/gms/internal/ads/zzaku;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzahp;Lcom/google/android/gms/internal/ads/zzahi;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzf:Lcom/google/android/gms/internal/ads/zzaib;

    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzafe;->zzg(Lcom/google/android/gms/internal/ads/zzahj;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzf:Lcom/google/android/gms/internal/ads/zzaib;

    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzafe;->zzh(Lcom/google/android/gms/internal/ads/zzaeh;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadp;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zza(Lcom/google/android/gms/internal/ads/zzaia;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzf:Lcom/google/android/gms/internal/ads/zzaib;

    move-object/from16 v4, v34

    .line 21
    invoke-direct {v0, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzado;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzj:Lcom/google/android/gms/internal/ads/zzadp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadt;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zza(Lcom/google/android/gms/internal/ads/zzaia;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzf:Lcom/google/android/gms/internal/ads/zzaib;

    .line 22
    invoke-direct {v0, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzadt;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzads;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzk:Lcom/google/android/gms/internal/ads/zzadt;

    const/4 v0, 0x0

    .line 23
    invoke-static {v0, v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaij;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zza(Lcom/google/android/gms/internal/ads/zzaia;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzf:Lcom/google/android/gms/internal/ads/zzaib;

    .line 24
    invoke-direct {v0, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzaij;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzaif;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzl:Lcom/google/android/gms/internal/ads/zzaij;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzz:Lcom/google/android/gms/internal/ads/zzg;

    .line 25
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzg;->zzb:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaij;->zzb(I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzair;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zza(Lcom/google/android/gms/internal/ads/zzaia;)Landroid/content/Context;

    move-result-object v3

    .line 26
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzair;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzm:Lcom/google/android/gms/internal/ads/zzair;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzais;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaia;->zza(Lcom/google/android/gms/internal/ads/zzaia;)Landroid/content/Context;

    move-result-object v3

    .line 27
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzn:Lcom/google/android/gms/internal/ads/zzais;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzl:Lcom/google/android/gms/internal/ads/zzaij;

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzah(Lcom/google/android/gms/internal/ads/zzaij;)Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzF:Lcom/google/android/gms/internal/ads/zzaee;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzy;->zza:Lcom/google/android/gms/internal/ads/zzy;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzG:Lcom/google/android/gms/internal/ads/zzy;

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzy:I

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzag(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzy:I

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x2

    invoke-direct {v1, v5, v3, v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzag(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzz:Lcom/google/android/gms/internal/ads/zzg;

    .line 31
    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzag(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzt:I

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v5, v2, v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzag(IILjava/lang/Object;)V

    .line 33
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    .line 34
    invoke-direct {v1, v5, v2, v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzag(IILjava/lang/Object;)V

    const/16 v0, 0x9

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzB:Z

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzaie;->zzag(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzg:Lcom/google/android/gms/internal/ads/zzaic;

    const/4 v2, 0x7

    .line 36
    invoke-direct {v1, v5, v2, v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzag(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzg:Lcom/google/android/gms/internal/ads/zzaic;

    const/4 v2, 0x6

    const/16 v3, 0x8

    .line 37
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzag(IILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzc:Lcom/google/android/gms/internal/ads/zzakw;

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakw;->zza()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaie;->zzc:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzakw;->zza()Z

    .line 39
    throw v0
.end method

.method static synthetic zzS(Lcom/google/android/gms/internal/ads/zzaie;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzab(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzs:Landroid/view/Surface;

    return-void
.end method

.method static synthetic zzT(Lcom/google/android/gms/internal/ads/zzaie;Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaie;->zzab(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic zzU(Lcom/google/android/gms/internal/ads/zzaie;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaie;->zzac(II)V

    return-void
.end method

.method static synthetic zzV(Lcom/google/android/gms/internal/ads/zzaie;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzad()V

    return-void
.end method

.method static synthetic zzW(Lcom/google/android/gms/internal/ads/zzaie;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzi:Lcom/google/android/gms/internal/ads/zzcy;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzB:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcy;->zzn(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzh:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahl;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzB:Z

    .line 3
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzahl;->zzn(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic zzX(Lcom/google/android/gms/internal/ads/zzaie;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaie;->zzae(ZII)V

    return-void
.end method

.method static synthetic zzY(Lcom/google/android/gms/internal/ads/zzaie;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzI()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zze()Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzM()Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzM()Z

    return-void
.end method

.method static synthetic zzZ(Lcom/google/android/gms/internal/ads/zzaij;)Lcom/google/android/gms/internal/ads/zzaee;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzah(Lcom/google/android/gms/internal/ads/zzaij;)Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzaa(ZI)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaie;->zzai(ZI)I

    move-result p0

    return p0
.end method

.method private final zzab(Ljava/lang/Object;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzb:[Lcom/google/android/gms/internal/ads/zzahv;

    .line 2
    array-length v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 3
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzahv;->zzac()I

    move-result v7

    if-ne v7, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 4
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzafe;->zzt(Lcom/google/android/gms/internal/ads/zzahr;)Lcom/google/android/gms/internal/ads/zzahs;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzahs;->zzb(I)Lcom/google/android/gms/internal/ads/zzahs;

    .line 6
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzahs;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzahs;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzahs;->zzg()Lcom/google/android/gms/internal/ads/zzahs;

    .line 8
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzr:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 9
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahs;

    const-wide/16 v3, 0x7d0

    .line 10
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzahs;->zzj(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    .line 11
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const/4 v5, 0x0

    .line 10
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzr:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzs:Landroid/view/Surface;

    if-ne v0, v1, :cond_4

    .line 12
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzs:Landroid/view/Surface;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzr:Ljava/lang/Object;

    if-eqz v5, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafr;

    const/4 v1, 0x3

    .line 13
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzafr;-><init>(I)V

    const/16 v1, 0x3eb

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzr(ZLcom/google/android/gms/internal/ads/zzaeg;)V

    :cond_5
    return-void
.end method

.method private final zzac(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzu:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzv:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzu:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzv:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzi:Lcom/google/android/gms/internal/ads/zzcy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcy;->zzB(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzh:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahl;

    .line 3
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzahl;->zzB(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzad()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzA:F

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzk:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzadt;->zza()F

    move-result v1

    mul-float v0, v0, v1

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzag(IILjava/lang/Object;)V

    return-void
.end method

.method private final zzae(ZII)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzafe;->zzl(ZII)V

    return-void
.end method

.method private final zzaf()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzc:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzakw;->zzd()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzafe;->zzf()Landroid/os/Looper;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzafe;->zzf()Landroid/os/Looper;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzv(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzD:Z

    if-nez v1, :cond_1

    .line 7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzE:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "SimpleExoPlayer"

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzaln;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzE:Z

    return-void

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private final zzag(IILjava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzb:[Lcom/google/android/gms/internal/ads/zzahv;

    array-length v1, v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzahv;->zzac()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 3
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzafe;->zzt(Lcom/google/android/gms/internal/ads/zzahr;)Lcom/google/android/gms/internal/ads/zzahs;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzahs;->zzb(I)Lcom/google/android/gms/internal/ads/zzahs;

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzahs;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzahs;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzahs;->zzg()Lcom/google/android/gms/internal/ads/zzahs;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static zzah(Lcom/google/android/gms/internal/ads/zzaij;)Lcom/google/android/gms/internal/ads/zzaee;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaee;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaij;->zzc()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaij;->zzd()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/internal/ads/zzaee;-><init>(III)V

    return-object v0
.end method

.method private static zzai(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzaie;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzh:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzaie;)Lcom/google/android/gms/internal/ads/zzcy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzi:Lcom/google/android/gms/internal/ads/zzcy;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zzaie;)Lcom/google/android/gms/internal/ads/zzaij;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzl:Lcom/google/android/gms/internal/ads/zzaij;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/internal/ads/zzafv;)Lcom/google/android/gms/internal/ads/zzafv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzo:Lcom/google/android/gms/internal/ads/zzafv;

    return-object p1
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/internal/ads/zzafv;)Lcom/google/android/gms/internal/ads/zzafv;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzp:Lcom/google/android/gms/internal/ads/zzafv;

    return-object p1
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzaie;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzr:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/internal/ads/zzaz;)Lcom/google/android/gms/internal/ads/zzaz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzw:Lcom/google/android/gms/internal/ads/zzaz;

    return-object p1
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/internal/ads/zzaz;)Lcom/google/android/gms/internal/ads/zzaz;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzx:Lcom/google/android/gms/internal/ads/zzaz;

    return-object p1
.end method

.method static synthetic zzm(Lcom/google/android/gms/internal/ads/zzaie;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzB:Z

    return p0
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/ads/zzaie;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzB:Z

    return p1
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/ads/zzaie;)Lcom/google/android/gms/internal/ads/zzaee;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzF:Lcom/google/android/gms/internal/ads/zzaee;

    return-object p0
.end method

.method static synthetic zzt(Lcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/internal/ads/zzaee;)Lcom/google/android/gms/internal/ads/zzaee;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzF:Lcom/google/android/gms/internal/ads/zzaee;

    return-object p1
.end method

.method static synthetic zzw(Lcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/internal/ads/zzy;)Lcom/google/android/gms/internal/ads/zzy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzG:Lcom/google/android/gms/internal/ads/zzy;

    return-object p1
.end method


# virtual methods
.method public final zzA()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzA()Z

    move-result v0

    return v0
.end method

.method public final zzB()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzB()I

    move-result v0

    return v0
.end method

.method public final zzC()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzC()I

    move-result v0

    return v0
.end method

.method public final zzD()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzD()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzE(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzamq;->zzz(FFF)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzA:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzA:F

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzad()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzi:Lcom/google/android/gms/internal/ads/zzcy;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcy;->zzq(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzh:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahl;

    .line 6
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzahl;->zzq(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzF()Lcom/google/android/gms/internal/ads/zzaiq;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzF()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    return-object v0
.end method

.method public final zzG(Lcom/google/android/gms/internal/ads/zzda;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzi:Lcom/google/android/gms/internal/ads/zzcy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcy;->zza(Lcom/google/android/gms/internal/ads/zzda;)V

    return-void
.end method

.method public final zzH(Lcom/google/android/gms/internal/ads/zzda;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzi:Lcom/google/android/gms/internal/ads/zzcy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcy;->zzb(Lcom/google/android/gms/internal/ads/zzda;)V

    return-void
.end method

.method public final zzI()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzi()I

    move-result v0

    return v0
.end method

.method public final zzJ()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzM()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzk:Lcom/google/android/gms/internal/ads/zzadt;

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzadt;->zzb(ZI)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaie;->zzai(ZI)I

    move-result v2

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaie;->zzae(ZII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzj()V

    return-void
.end method

.method public final zzK(Lcom/google/android/gms/internal/ads/zzhh;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzafe;->zzk(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzL(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzk:Lcom/google/android/gms/internal/ads/zzadt;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzI()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzadt;->zzb(ZI)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaie;->zzai(ZI)I

    move-result v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaie;->zzae(ZII)V

    return-void
.end method

.method public final zzM()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzm()Z

    move-result v0

    return v0
.end method

.method public final zzN()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzq:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzq:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzl:Lcom/google/android/gms/internal/ads/zzaij;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaij;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzk:Lcom/google/android/gms/internal/ads/zzadt;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadt;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzs()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzi:Lcom/google/android/gms/internal/ads/zzcy;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcy;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzs:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzs:Landroid/view/Surface;

    .line 9
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzC:Ljava/util/List;

    return-void
.end method

.method public final zzO()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzE()I

    const/4 v0, 0x2

    return v0
.end method

.method public final zzP()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzw()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzQ()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzR(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzD:Z

    return-void
.end method

.method public final zzn()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzo()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzp(IJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzi:Lcom/google/android/gms/internal/ads/zzcy;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcy;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzafe;->zzp(IJ)V

    return-void
.end method

.method public final zzq(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzk:Lcom/google/android/gms/internal/ads/zzadt;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzM()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadt;->zzb(ZI)I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzafe;->zzr(ZLcom/google/android/gms/internal/ads/zzaeg;)V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzC:Ljava/util/List;

    return-void
.end method

.method public final zzu()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzu()I

    move-result v0

    return v0
.end method

.method public final zzv()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzv()I

    move-result v0

    return v0
.end method

.method public final zzx()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzx()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzy(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaie;->zzab(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3
    :goto_0
    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzaie;->zzac(II)V

    return-void
.end method

.method public final zzz()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zze:Lcom/google/android/gms/internal/ads/zzafe;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzz()J

    move-result-wide v0

    return-wide v0
.end method
