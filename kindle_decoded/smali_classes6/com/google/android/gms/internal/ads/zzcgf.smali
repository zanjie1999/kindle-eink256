.class public final Lcom/google/android/gms/internal/ads/zzcgf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field zza:J

.field zzb:J

.field zzc:I

.field zzd:I

.field zze:J

.field final zzf:Ljava/lang/String;

.field zzg:I

.field zzh:I

.field private final zzi:Ljava/lang/Object;

.field private final zzj:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzb:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzd:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zze:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzi:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzh:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzf:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzj:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method

.method private final zzg()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbld;->zza:Lcom/google/android/gms/internal/ads/zzbkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkn;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzi:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzc:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzd:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzd:I

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzi:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzg:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzi:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzh:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbdg;J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzi:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzj:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzr()J

    move-result-wide v1

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzb:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    sub-long v1, v3, v1

    .line 3
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbjl;->zzaE:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v5

    .line 3
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzd:I

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzj:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzt()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzd:I

    .line 3
    :goto_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzb:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zza:J

    goto :goto_1

    .line 5
    :cond_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zza:J

    .line 3
    :goto_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbdg;->zzc:Landroid/os/Bundle;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    const-string p3, "gw"

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    .line 6
    :cond_3
    :goto_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzc:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzc:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzd:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzd:I

    if-nez p1, :cond_4

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zze:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzj:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 7
    invoke-interface {p1, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzg;->zzu(J)V

    goto :goto_3

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzj:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzv()J

    move-result-wide p1

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zze:J

    .line 9
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzd()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcgf;->zzg()V

    return-void
.end method

.method public final zze()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcgf;->zzg()V

    return-void
.end method

.method public final zzf(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzi:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzj:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzC()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzf:Ljava/lang/String;

    :goto_0
    const-string v3, "session_id"

    .line 3
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "basets"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzb:J

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "currts"

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zza:J

    .line 5
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "seq_num"

    .line 6
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "preqs"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzc:I

    .line 7
    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "preqs_in_session"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzd:I

    .line 8
    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "time_in_session"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zze:J

    .line 9
    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "pclick"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzg:I

    .line 10
    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "pimp"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcgf;->zzh:I

    .line 11
    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "support_transparent_background"

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcbx;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Theme.Translucent"

    const-string v4, "style"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string p1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ActivityInfo;->theme:I

    if-ne v2, p1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p1, "Fail to fetch AdActivity theme"

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    const-string p1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzh(Ljava/lang/String;)V

    .line 20
    :goto_1
    invoke-virtual {v1, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
