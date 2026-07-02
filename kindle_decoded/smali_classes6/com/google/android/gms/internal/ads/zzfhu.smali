.class public final Lcom/google/android/gms/internal/ads/zzfhu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfgz;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfhu;

.field private static final zzb:Landroid/os/Handler;

.field private static zzc:Landroid/os/Handler;

.field private static final zzj:Ljava/lang/Runnable;

.field private static final zzk:Ljava/lang/Runnable;


# instance fields
.field private final zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzfht;",
            ">;"
        }
    .end annotation
.end field

.field private zze:I

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfhb;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfhn;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfho;

.field private zzi:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfhu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zza:Lcom/google/android/gms/internal/ads/zzfhu;

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzb:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzc:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfhq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzj:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfhr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzk:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzd:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhn;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfhn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhb;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfhb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzf:Lcom/google/android/gms/internal/ads/zzfhb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfho;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhx;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfhx;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfho;-><init>(Lcom/google/android/gms/internal/ads/zzfhx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzh:Lcom/google/android/gms/internal/ads/zzfho;

    return-void
.end method

.method static synthetic zzb()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzc:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzfhu;)Lcom/google/android/gms/internal/ads/zzfho;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzh:Lcom/google/android/gms/internal/ads/zzfho;

    return-object p0
.end method

.method static synthetic zzd()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzj:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic zze()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzk:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static zzf()Lcom/google/android/gms/internal/ads/zzfhu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zza:Lcom/google/android/gms/internal/ads/zzfhu;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzfhu;)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zze:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzi:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzd()V

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzf:Lcom/google/android/gms/internal/ads/zzfhb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfhb;->zza()Lcom/google/android/gms/internal/ads/zzfha;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfhn;->zzb()Ljava/util/HashSet;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfhn;->zzb()Ljava/util/HashSet;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-static {v0, v0, v0, v0}, Lcom/google/android/gms/internal/ads/zzfhi;->zzb(IIII)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    .line 7
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzfhn;->zzh(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzf:Lcom/google/android/gms/internal/ads/zzfhb;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfhb;->zzb()Lcom/google/android/gms/internal/ads/zzfha;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    .line 8
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzfhn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 9
    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/ads/zzfha;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    .line 10
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/zzfhi;->zzd(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 11
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/ads/zzfhi;->zze(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 12
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzfhi;->zzg(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 13
    :cond_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfhi;->zzh(Lorg/json/JSONObject;)V

    new-instance v7, Ljava/util/HashSet;

    .line 14
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 15
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzh:Lcom/google/android/gms/internal/ads/zzfho;

    .line 16
    invoke-virtual {v5, v6, v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzfho;->zzb(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfhn;->zza()Ljava/util/HashSet;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 18
    invoke-static {v0, v0, v0, v0}, Lcom/google/android/gms/internal/ads/zzfhi;->zzb(IIII)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v3, v0, v5}, Lcom/google/android/gms/internal/ads/zzfhu;->zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfha;Lorg/json/JSONObject;I)V

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfhi;->zzh(Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzh:Lcom/google/android/gms/internal/ads/zzfho;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfhn;->zza()Ljava/util/HashSet;

    move-result-object v4

    .line 20
    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzfho;->zza(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_1

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzh:Lcom/google/android/gms/internal/ads/zzfho;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfho;->zzc()V

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhn;->zze()V

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzi:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzd:Ljava/util/List;

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzd:Ljava/util/List;

    .line 25
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfht;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zze:I

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfht;->zzb()V

    .line 27
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzfhs;

    if-eqz v4, :cond_3

    .line 28
    check-cast v3, Lcom/google/android/gms/internal/ads/zzfhs;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zze:I

    .line 29
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfhs;->zza()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfha;Lorg/json/JSONObject;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2, p1, p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzfha;->zzb(Landroid/view/View;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfgz;Z)V

    return-void
.end method

.method private static final zzl()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzc:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhu;->zzk:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzc:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfha;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfhl;->zzb(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzj(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzfha;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-static {p3, v1}, Lcom/google/android/gms/internal/ads/zzfhi;->zzg(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    .line 5
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzg(Landroid/view/View;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 9
    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/zzfhi;->zzd(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzf()V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzg:Lcom/google/android/gms/internal/ads/zzfhn;

    .line 6
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzi(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzfhm;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 7
    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/zzfhi;->zzf(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfhm;)V

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfhu;->zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfha;Lorg/json/JSONObject;I)V

    .line 10
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zze:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zze:I

    :cond_3
    return-void
.end method

.method public final zzg()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzc:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzc:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhu;->zzj:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzc:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhu;->zzk:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhu;->zzl()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhu;->zzd:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhu;->zzb:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhp;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfhp;-><init>(Lcom/google/android/gms/internal/ads/zzfhu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzi()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhu;->zzl()V

    return-void
.end method
