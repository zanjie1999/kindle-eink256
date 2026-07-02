.class public final Lcom/amazon/kindle/persistence/AndroidSecureStorageKt;
.super Ljava/lang/Object;
.source "AndroidSecureStorage.kt"


# static fields
.field private static final BAD_KEYS_FOUND:Ljava/lang/String; = "BadKeysFound"

.field private static final EXCEPTION_MESSAGE:Ljava/lang/String; = "ExceptionMessage"

.field private static final EXCEPTION_METRIC:Ljava/lang/String; = "ExceptionEncountered"

.field private static final EXCEPTION_METRIC_SOURCE:Ljava/lang/String; = "AndroidSecureStorageException"

.field private static final EXCEPTION_TRACE:Ljava/lang/String; = "ExceptionTrace"

.field private static final FALLBACK_STORAGE_NAME:Ljava/lang/String; = "FallbackAndroidSecureStorage"

.field private static final MIGRATE_METRICS_NAME:Ljava/lang/String; = "SecureStorageMigration"

.field private static final MIGRATION_LOCK:Ljava/lang/Object;

.field private static final REMOVED_SOURCE_VALUES:Ljava/lang/String; = "RemovedSourceValues"

.field private static final SOURCE_STORAGE_NAME:Ljava/lang/String; = "AmazonSecureStorage"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kindle/persistence/AndroidSecureStorageKt;->MIGRATION_LOCK:Ljava/lang/Object;

    .line 47
    const-class v0, Lcom/amazon/kindle/persistence/AndroidSecureStorage;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/persistence/AndroidSecureStorageKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMIGRATION_LOCK$p()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/persistence/AndroidSecureStorageKt;->MIGRATION_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/persistence/AndroidSecureStorageKt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$requiresMigration(Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amazon/kindle/persistence/AndroidSecureStorageKt;->requiresMigration(Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;)Z

    move-result p0

    return p0
.end method

.method public static final performMigration(Landroid/content/Context;Lcom/amazon/kindle/persistence/ISecureStorage;Landroid/content/SharedPreferences;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Z)Z
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "destination"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "source"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "metricsManager"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string v1, "source.all"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 154
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_0

    .line 161
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "AndroidSecureStorage"

    if-lez v0, :cond_3

    if-nez p4, :cond_2

    .line 165
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BadKeysFound:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, v2, p0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Found invalid keys when migrating. This will fail silently in release builds: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    if-nez v1, :cond_4

    const-string p1, "CouldNotMigrateAll"

    .line 170
    invoke-interface {p3, v2, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 174
    :cond_4
    new-instance p4, Ljava/security/SecureRandom;

    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-complete-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/security/SecureRandom;->nextInt()I

    move-result p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "__Has_Performed_Migration__"

    invoke-interface {p1, v0, p4}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    and-int/2addr p1, v1

    const-string p4, "SecureStorageMigration"

    .line 176
    invoke-interface {p3, v2, p4}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_5

    const-string p1, "CouldNotMarkMigrated"

    .line 179
    invoke-interface {p3, v2, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 183
    :cond_5
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p1, "RemovedSourceValues"

    .line 185
    invoke-interface {p3, v2, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "CouldNotRemoveSource"

    .line 187
    invoke-interface {p3, v2, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return p0
.end method

.method public static synthetic performMigration$default(Landroid/content/Context;Lcom/amazon/kindle/persistence/ISecureStorage;Landroid/content/SharedPreferences;Lcom/amazon/kindle/krx/metrics/IMetricsManager;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    const-string p6, "AmazonSecureStorage"

    .line 146
    invoke-virtual {p0, p6, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p6, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_1

    .line 147
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p3

    const-string p6, "MetricsManager.getInstance()"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    .line 148
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p4

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/persistence/AndroidSecureStorageKt;->performMigration(Landroid/content/Context;Lcom/amazon/kindle/persistence/ISecureStorage;Landroid/content/SharedPreferences;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Z)Z

    move-result p0

    return p0
.end method

.method private static final requiresMigration(Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;)Z
    .locals 1

    const-string v0, "__Has_Performed_Migration__"

    .line 129
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/persistence/PreferencesBackedSecureStorage;->contains(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
