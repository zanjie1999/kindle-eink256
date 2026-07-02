.class public abstract Lcom/google/android/gms/common/internal/GmsClientSupervisor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# static fields
.field private static zza:I = 0x1081

.field private static final zzb:Ljava/lang/Object;

.field private static zzc:Lcom/google/android/gms/common/internal/GmsClientSupervisor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultBindFlags()I
    .locals 1

    sget v0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zza:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/internal/GmsClientSupervisor;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzc:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/internal/zzq;

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/zzq;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzc:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzc:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/zzm;

    invoke-direct {v0, p1, p2, p3, p6}, Lcom/google/android/gms/common/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0, p4, p5}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzc(Lcom/google/android/gms/common/internal/zzm;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract zzb(Lcom/google/android/gms/common/internal/zzm;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method protected abstract zzc(Lcom/google/android/gms/common/internal/zzm;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method
