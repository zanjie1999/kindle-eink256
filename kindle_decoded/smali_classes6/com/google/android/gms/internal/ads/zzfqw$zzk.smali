.class final Lcom/google/android/gms/internal/ads/zzfqw$zzk;
.super Lcom/google/android/gms/internal/ads/zzfqw$zza;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field static final zza:Lsun/misc/Unsafe;

.field static final zzb:J

.field static final zzc:J

.field static final zzd:J

.field static final zze:J

.field static final zzf:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzfqw$zzl;

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqw$zzk$1;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfqw$zzk$1;-><init>()V

    .line 3
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1
    :goto_0
    :try_start_2
    const-class v2, Lcom/google/android/gms/internal/ads/zzfqw;

    const-string v3, "waiters"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zzc:J

    const-string v3, "listeners"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zzb:J

    const-string v3, "value"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zzd:J

    const-string v2, "thread"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zze:J

    const-string v2, "next"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zzf:J

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zza:Lsun/misc/Unsafe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfmk;->zza(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    .line 4
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfqw$zze;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqw$zza;-><init>(Lcom/google/android/gms/internal/ads/zzfqw$zze;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzfqw$zzl;Ljava/lang/Thread;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zza:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zze:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzfqw$zzl;Lcom/google/android/gms/internal/ads/zzfqw$zzl;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zza:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zzf:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/ads/zzfqw;Lcom/google/android/gms/internal/ads/zzfqw$zzl;Lcom/google/android/gms/internal/ads/zzfqw$zzl;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfqw<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzfqw$zzl;",
            "Lcom/google/android/gms/internal/ads/zzfqw$zzl;",
            ")Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zza:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zzc:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zzd(Lcom/google/android/gms/internal/ads/zzfqw;Lcom/google/android/gms/internal/ads/zzfqw$zzd;Lcom/google/android/gms/internal/ads/zzfqw$zzd;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfqw<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzfqw$zzd;",
            "Lcom/google/android/gms/internal/ads/zzfqw$zzd;",
            ")Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zza:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zzb:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final zze(Lcom/google/android/gms/internal/ads/zzfqw;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfqw<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zza:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/ads/zzfqw$zzk;->zzd:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
