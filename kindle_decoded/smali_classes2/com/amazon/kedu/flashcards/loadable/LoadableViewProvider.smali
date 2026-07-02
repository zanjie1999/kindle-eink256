.class public final Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider;
.super Ljava/lang/Object;
.source "LoadableViewProvider.java"


# static fields
.field private static final MAX_GHL_CACHE_ENTRIES:I = 0xa

.field private static final MAX_TEXT_CACHE_ENTRIES:I = 0x14

.field private static executor:Ljava/util/concurrent/ExecutorService;

.field private static ghlCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static textCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;",
            "Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider;->ghlCache:Landroid/util/LruCache;

    .line 27
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider;->textCache:Landroid/util/LruCache;

    const/4 v0, 0x2

    .line 30
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static loadGraphicalHighlight(Landroid/content/Context;Lcom/amazon/kedu/flashcards/views/LoadableGraphicalHighlightView;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Z
    .locals 9

    .line 71
    new-instance v0, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightCacheKey;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 72
    new-instance v1, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kedu/flashcards/loadable/GraphicalHighlightLoader;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IILandroid/content/Context;)V

    sget-object p0, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider;->ghlCache:Landroid/util/LruCache;

    invoke-static {p1, v1, p0, v0}, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider;->loadView(Lcom/amazon/kedu/flashcards/views/LoadableView;Lcom/amazon/kedu/flashcards/loadable/Loader;Landroid/util/LruCache;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static loadText(Landroid/content/Context;Lcom/amazon/kedu/flashcards/views/LoadableTextView;Ljava/lang/CharSequence;IIIILandroid/text/TextPaint;FF)Z
    .locals 13

    .line 79
    new-instance v0, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, p2

    invoke-direct {v0, p2, v1, v2}, Lcom/amazon/kedu/flashcards/loadable/TextCacheKey;-><init>(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 81
    new-instance v1, Lcom/amazon/kedu/flashcards/loadable/TextLoader;

    move-object v3, v1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object v12, p0

    invoke-direct/range {v3 .. v12}, Lcom/amazon/kedu/flashcards/loadable/TextLoader;-><init>(Ljava/lang/CharSequence;IIIILandroid/text/TextPaint;FFLandroid/content/Context;)V

    .line 82
    sget-object v2, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider;->textCache:Landroid/util/LruCache;

    move-object v3, p1

    invoke-static {p1, v1, v2, v0}, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider;->loadView(Lcom/amazon/kedu/flashcards/views/LoadableView;Lcom/amazon/kedu/flashcards/loadable/Loader;Landroid/util/LruCache;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static loadView(Lcom/amazon/kedu/flashcards/views/LoadableView;Lcom/amazon/kedu/flashcards/loadable/Loader;Landroid/util/LruCache;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CacheKeyType:",
            "Ljava/lang/Object;",
            "CacheValueType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/kedu/flashcards/views/LoadableView<",
            "TCacheValueType;>;",
            "Lcom/amazon/kedu/flashcards/loadable/Loader;",
            "Landroid/util/LruCache<",
            "TCacheKeyType;TCacheValueType;>;TCacheKeyType;)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 37
    invoke-virtual {p2, p3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/views/LoadableView;->setLoader(Lcom/amazon/kedu/flashcards/loadable/Loader;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/LoadableView;->onLoadingComplete(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    .line 45
    :cond_0
    new-instance v0, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider$1;

    invoke-direct {v0, p2, p3}, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider$1;-><init>(Landroid/util/LruCache;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/loadable/Loader;->addOnViewLoadedListener(Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;)V

    .line 64
    :cond_1
    sget-object p2, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p2, p1}, Lcom/amazon/kedu/flashcards/views/LoadableView;->execute(Ljava/util/concurrent/ExecutorService;Lcom/amazon/kedu/flashcards/loadable/Loader;)V

    const/4 p0, 0x0

    return p0
.end method
