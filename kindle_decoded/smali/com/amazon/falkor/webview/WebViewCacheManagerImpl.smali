.class public final Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;
.super Ljava/lang/Object;
.source "WebViewCacheManager.kt"

# interfaces
.implements Lcom/amazon/falkor/webview/WebViewCacheManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewCacheManager.kt\ncom/amazon/falkor/webview/WebViewCacheManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,103:1\n1491#2,2:104\n*E\n*S KotlinDebug\n*F\n+ 1 WebViewCacheManager.kt\ncom/amazon/falkor/webview/WebViewCacheManagerImpl\n*L\n89#1,2:104\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/falkor/webview/RoundedWebview;",
            ">;"
        }
    .end annotation
.end field

.field private final discards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/falkor/webview/RoundedWebview;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->cache:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->discards:Ljava/util/List;

    .line 60
    const-class v0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized cleanUpDiscards(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->discards:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->discards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 104
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/falkor/webview/RoundedWebview;

    .line 93
    sget-object v2, Lcom/amazon/falkor/utils/FalkorThreadUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorThreadUtils;

    new-instance v3, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl$cleanUpDiscards$$inlined$forEach$lambda$1;

    invoke-direct {v3, v1, p0, p1}, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl$cleanUpDiscards$$inlined$forEach$lambda$1;-><init>(Lcom/amazon/falkor/webview/RoundedWebview;Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/amazon/falkor/utils/FalkorThreadUtils;->scheduleOnMainThread(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createWebView(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/amazon/falkor/FalkorJSInterface;Ljava/lang/String;)Lcom/amazon/falkor/webview/RoundedWebview;
    .locals 13

    move-object v1, p0

    move-object/from16 v0, p4

    monitor-enter p0

    :try_start_0
    const-string v2, "context"

    move-object v3, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "client"

    move-object v4, p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "url"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v2, Lcom/amazon/falkor/webview/FalkorWebViewUtils;->INSTANCE:Lcom/amazon/falkor/webview/FalkorWebViewUtils;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf0

    const/4 v12, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v12}, Lcom/amazon/falkor/webview/FalkorWebViewUtils;->createAndSetupRoundedWebView$default(Lcom/amazon/falkor/webview/FalkorWebViewUtils;Landroid/content/Context;Landroid/webkit/WebViewClient;Ljava/lang/String;Lcom/amazon/falkor/FalkorJSInterface;ZZZZILjava/lang/Object;)Lcom/amazon/falkor/webview/RoundedWebview;

    move-result-object v2

    .line 70
    iget-object v3, v1, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->cache:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized discardCache(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 76
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/falkor/webview/RoundedWebview;

    if-eqz v0, :cond_2

    .line 79
    iget-object v1, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->discards:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->cache:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1

    .line 83
    :cond_4
    :goto_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getWebView(Ljava/lang/String;)Lcom/amazon/falkor/webview/RoundedWebview;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/falkor/webview/RoundedWebview;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
