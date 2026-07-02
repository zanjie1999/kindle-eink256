.class public final Lcom/amazon/kindle/persistence/AndroidSecureStorage;
.super Ljava/lang/Object;
.source "AndroidSecureStorage.kt"

# interfaces
.implements Lcom/amazon/kindle/persistence/ISecureStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;


# instance fields
.field private final impl:Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->Companion:Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/amazon/kindle/persistence/EncryptedAndroidSecureStorage;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/persistence/EncryptedAndroidSecureStorage;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lcom/amazon/kindle/persistence/FallbackEncryptedAndroidSecureStorage;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/persistence/FallbackEncryptedAndroidSecureStorage;-><init>(Landroid/content/Context;)V

    .line 67
    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->impl:Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;

    .line 74
    invoke-static {v0}, Lcom/amazon/kindle/persistence/AndroidSecureStorageKt;->access$requiresMigration(Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {}, Lcom/amazon/kindle/persistence/AndroidSecureStorageKt;->access$getMIGRATION_LOCK$p()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->impl:Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;

    invoke-static {v1}, Lcom/amazon/kindle/persistence/AndroidSecureStorageKt;->access$requiresMigration(Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v3, p0, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->impl:Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/amazon/kindle/persistence/AndroidSecureStorageKt;->performMigration$default(Landroid/content/Context;Lcom/amazon/kindle/persistence/ISecureStorage;Landroid/content/SharedPreferences;Lcom/amazon/kindle/krx/metrics/IMetricsManager;ZILjava/lang/Object;)Z

    .line 79
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/amazon/kindle/persistence/AndroidSecureStorage;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final create(Landroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSecureStorage;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->Companion:Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;->create(Landroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSecureStorage;

    move-result-object p0

    return-object p0
.end method

.method public static final generateErrorMetric(Lcom/amazon/kindle/persistence/SecureStorageCreationException;)Lcom/amazon/kindle/krx/metrics/MetricsData;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->Companion:Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;->generateErrorMetric(Lcom/amazon/kindle/persistence/SecureStorageCreationException;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->impl:Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeItemWithKey(Ljava/lang/String;)Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->impl:Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->impl:Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
