.class public final Lcom/google/android/gms/internal/ads/zzedb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zzg:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzbbm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdai;

.field private final zzc:Landroid/telephony/TelephonyManager;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzecu;

.field private final zze:Lcom/google/android/gms/internal/ads/zzecq;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/zzg;

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 2
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zzc:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 3
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zzb:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 4
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zzb:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 5
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zzb:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 6
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zzd:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    .line 7
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zze:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 8
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zze:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 9
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zze:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 10
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zze:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    .line 11
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zze:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    .line 12
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zzf:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    .line 13
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zzb:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    .line 14
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zzb:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdai;Lcom/google/android/gms/internal/ads/zzecu;Lcom/google/android/gms/internal/ads/zzecq;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedb;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzb:Lcom/google/android/gms/internal/ads/zzdai;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzd:Lcom/google/android/gms/internal/ads/zzecu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzedb;->zze:Lcom/google/android/gms/internal/ads/zzecq;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzc:Landroid/telephony/TelephonyManager;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzf:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzedb;)Lcom/google/android/gms/internal/ads/zzecq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzedb;->zze:Lcom/google/android/gms/internal/ads/zzecq;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzedb;)Lcom/google/android/gms/ads/internal/util/zzg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzf:Lcom/google/android/gms/ads/internal/util/zzg;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzedb;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbbd;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbd;->zzd()Lcom/google/android/gms/internal/ads/zzbaw;

    move-result-object v0

    const-string v1, "cnt"

    const/4 v2, -0x2

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "gnt"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzh:I

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    .line 8
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzh:I

    const/4 p0, 0x3

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbaw;->zza(I)Lcom/google/android/gms/internal/ads/zzbaw;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbaw;->zza(I)Lcom/google/android/gms/internal/ads/zzbaw;

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbaw;->zza(I)Lcom/google/android/gms/internal/ads/zzbaw;

    :goto_0
    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x3

    .line 7
    :goto_1
    :pswitch_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbaw;->zzb(I)Lcom/google/android/gms/internal/ads/zzbaw;

    .line 8
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbd;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzedb;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbbm;
    .locals 1

    const-string p0, "device"

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfbd;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "network"

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfbd;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "active_network_state"

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzedb;->zzg:Landroid/util/SparseArray;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zza:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbm;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzedb;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbbd;Lcom/google/android/gms/internal/ads/zzbbm;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzazx;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzbbd;",
            "Lcom/google/android/gms/internal/ads/zzbbm;",
            ")[B"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbi;->zzj()Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbbh;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzedb;->zza:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zze()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/internal/util/zzad;->zzf(Landroid/content/ContentResolver;)I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzedb;->zzg(Z)I

    move-result p2

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbbh;->zzj(I)Lcom/google/android/gms/internal/ads/zzbbh;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zze()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzedb;->zza:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzc:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzad;->zzq(Landroid/content/Context;Landroid/telephony/TelephonyManager;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbbh;->zzk(I)Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzd:Lcom/google/android/gms/internal/ads/zzecu;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzecu;->zzd()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbbh;->zzb(J)Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzd:Lcom/google/android/gms/internal/ads/zzecu;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzecu;->zzh()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbbh;->zzc(J)Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzd:Lcom/google/android/gms/internal/ads/zzecu;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzecu;->zzb()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbbh;->zzf(I)Lcom/google/android/gms/internal/ads/zzbbh;

    .line 10
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzbbh;->zzg(Lcom/google/android/gms/internal/ads/zzbbm;)Lcom/google/android/gms/internal/ads/zzbbh;

    .line 11
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbbh;->zze(Lcom/google/android/gms/internal/ads/zzbbd;)Lcom/google/android/gms/internal/ads/zzbbh;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzh:I

    .line 12
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbbh;->zzl(I)Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzedb;->zzg(Z)I

    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbh;->zzh(I)Lcom/google/android/gms/internal/ads/zzbbh;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbh;->zza(J)Lcom/google/android/gms/internal/ads/zzbbh;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzedb;->zza:Landroid/content/Context;

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zze()Lcom/google/android/gms/ads/internal/util/zzad;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/internal/util/zzad;->zze(Landroid/content/ContentResolver;)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzedb;->zzg(Z)I

    move-result p0

    .line 17
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbh;->zzi(I)Lcom/google/android/gms/internal/ads/zzbbh;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzah()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbi;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgeg;->zzao()[B

    move-result-object p0

    return-object p0
.end method

.method private static final zzg(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final zzf(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedb;->zzb:Lcom/google/android/gms/internal/ads/zzdai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdai;->zza()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeda;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzeda;-><init>(Lcom/google/android/gms/internal/ads/zzedb;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfsd;->zzp(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfrz;Ljava/util/concurrent/Executor;)V

    return-void
.end method
