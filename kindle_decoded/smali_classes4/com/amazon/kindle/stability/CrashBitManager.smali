.class public final Lcom/amazon/kindle/stability/CrashBitManager;
.super Ljava/lang/Object;
.source "CrashBit.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrashBit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrashBit.kt\ncom/amazon/kindle/stability/CrashBitManager\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,173:1\n355#2,7:174\n*E\n*S KotlinDebug\n*F\n+ 1 CrashBit.kt\ncom/amazon/kindle/stability/CrashBitManager\n*L\n31#1,7:174\n*E\n"
.end annotation


# static fields
.field private static final crashBitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/stability/CrashBit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/kindle/stability/CrashBitManager;

    invoke-direct {v0}, Lcom/amazon/kindle/stability/CrashBitManager;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/stability/CrashBitManager;->crashBitMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getCrashBit(Lcom/amazon/kindle/stability/CrashBitInstance;Landroid/content/Context;)Lcom/amazon/kindle/stability/CrashBit;
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const-class v0, Lcom/amazon/kindle/stability/CrashBitManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "instance"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    .line 31
    sget-object v1, Lcom/amazon/kindle/stability/CrashBitManager;->crashBitMap:Ljava/util/Map;

    .line 174
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "CrashBitManager"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 34
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFOSDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-gt v2, v3, :cond_1

    .line 35
    new-instance v2, Lcom/amazon/kindle/stability/Fos5CrashBitImpl;

    const-string v3, "CBT"

    const-string v4, "prefs"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, p0, p1}, Lcom/amazon/kindle/stability/Fos5CrashBitImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 37
    :cond_1
    new-instance v2, Lcom/amazon/kindle/stability/CrashBitImpl;

    const-string v3, "CBT"

    const-string v4, "prefs"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, p0, p1}, Lcom/amazon/kindle/stability/CrashBitImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 177
    :goto_0
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_2
    check-cast v2, Lcom/amazon/kindle/stability/CrashBit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
