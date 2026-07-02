.class public final Lcom/amazon/identity/auth/device/ia;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final qN:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile qO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/ia;->qN:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcom/amazon/identity/auth/device/ia;->qO:Z

    return-void
.end method

.method public static av(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-static {p0}, Lcom/amazon/identity/platform/setting/PlatformSettings;->aV(Landroid/content/Context;)Lcom/amazon/identity/platform/setting/PlatformSettings;

    move-result-object p0

    const-string v0, "enable.debugging.logs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/identity/platform/setting/PlatformSettings;->f(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/amazon/identity/auth/device/ia;->qO:Z

    return-void
.end method

.method public static de(Ljava/lang/String;)V
    .locals 4

    .line 54
    sget-boolean v0, Lcom/amazon/identity/auth/device/ia;->qO:Z

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 61
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ia;->df(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/amazon/identity/auth/device/ia;->qN:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IMP is calling "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with trace with hash "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MAP_OUT_BINDER"

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_2

    .line 70
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Stack trace hash with "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string p0, "HASH_STACK_TRACE"

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dm(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static df(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    .line 78
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 81
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
