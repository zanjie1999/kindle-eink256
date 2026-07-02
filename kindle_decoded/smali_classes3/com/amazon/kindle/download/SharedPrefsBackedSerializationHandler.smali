.class public final Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler;
.super Ljava/lang/Object;
.source "AssetRequestDownloadManagerResumer.kt"

# interfaces
.implements Lcom/amazon/kindle/download/IDownloadSerializationHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetRequestDownloadManagerResumer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetRequestDownloadManagerResumer.kt\ncom/amazon/kindle/download/SharedPrefsBackedSerializationHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,219:1\n768#2,11:220\n*E\n*S KotlinDebug\n*F\n+ 1 AssetRequestDownloadManagerResumer.kt\ncom/amazon/kindle/download/SharedPrefsBackedSerializationHandler\n*L\n206#1,11:220\n*E\n"
.end annotation


# instance fields
.field private final sharedPrefs$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler$sharedPrefs$2;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler$sharedPrefs$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler;->sharedPrefs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;)V
    .locals 1

    const-string v0, "ddep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-interface {p1}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object p1

    const-string v0, "ddep.krlForDownloadFacade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ddep.krlForDownloadFacade.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler;->sharedPrefs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public deserialize()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "BookIDs"

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    :catch_0
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerResumerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to deserialize the set of BookIDs due to a conflicting key in SharedPreferences"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_1
    return-object v0
.end method

.method public serialize(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bookIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    monitor-enter v0

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/download/SharedPrefsBackedSerializationHandler;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "BookIDs"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 216
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
