.class public final Lcom/amazon/kcp/cover/MissingCoverLoadManager;
.super Ljava/lang/Object;
.source "MissingCoverLoadManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/MissingCoverLoadManager$Companion;
    }
.end annotation


# static fields
.field private static final BATCH_SIZE:I = 0x64

.field public static final Companion:Lcom/amazon/kcp/cover/MissingCoverLoadManager$Companion;

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "MISSING_COVER_LOAD_MANAGER"


# instance fields
.field private final coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/cover/MissingCoverLoadManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/cover/MissingCoverLoadManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->Companion:Lcom/amazon/kcp/cover/MissingCoverLoadManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/foundation/internal/IThreadPoolManager;Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "libraryService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverImageService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threadPoolManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedPreferences"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iput-object p2, p0, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    iput-object p3, p0, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    iput-object p4, p0, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static final synthetic access$getCoverImageService$p(Lcom/amazon/kcp/cover/MissingCoverLoadManager;)Lcom/amazon/kindle/cover/ICoverImageService;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    return-object p0
.end method

.method public static final synthetic access$getLibraryService$p(Lcom/amazon/kcp/cover/MissingCoverLoadManager;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method

.method public static final synthetic access$parseContentMetadata(Lcom/amazon/kcp/cover/MissingCoverLoadManager;Landroid/database/Cursor;Ljava/util/Set;)Ljava/util/List;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->parseContentMetadata(Landroid/database/Cursor;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final parseContentMetadata(Landroid/database/Cursor;Ljava/util/Set;)Ljava/util/List;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 107
    sget-object v8, Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;->INSTANCE:Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;

    .line 121
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 123
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x64

    if-ge v11, v0, :cond_3

    .line 124
    invoke-static/range {p1 .. p2}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->generateContentMetadataFieldIndices(Landroid/database/Cursor;Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v12

    const-string v0, "CursorFieldHelper.genera\u2026dices(cursor, properties)"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v12

    invoke-static/range {v0 .. v7}, Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;->invoke$default(Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;Landroid/database/Cursor;Lcom/amazon/kindle/content/ContentMetadataField;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 126
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static/range {v0 .. v7}, Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;->invoke$default(Lcom/amazon/kcp/cover/MissingCoverLoadManager$parseContentMetadata$1;Landroid/database/Cursor;Lcom/amazon/kindle/content/ContentMetadataField;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    if-eqz v14, :cond_1

    .line 127
    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_2

    goto :goto_0

    .line 128
    :cond_2
    new-instance v0, Lcom/amazon/kindle/content/ContentMetadata;

    move-object v13, v0

    const/4 v15, 0x0

    const-wide/16 v19, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-string v17, ""

    const-string v18, ""

    const-string v21, ""

    const-string v25, ""

    const-string v26, ""

    const-string v27, ""

    const-string v28, ""

    const-string v29, ""

    invoke-direct/range {v13 .. v35}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/content/LocalContent;Lcom/amazon/kindle/content/UserContent;ZZ)V

    .line 132
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    return-object v9
.end method

.method private final prepopulateHasLoadedColumn(Z)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "PREPOPULATE_DB_KEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p1}, Lcom/amazon/kindle/content/ILibraryService;->prepopulateCoverState()V

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final fetchMissingCovers(Z)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->prepopulateHasLoadedColumn(Z)V

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/cover/MissingCoverLoadManager;->threadPoolManager:Lcom/amazon/foundation/internal/IThreadPoolManager;

    new-instance v0, Lcom/amazon/kcp/cover/MissingCoverLoadManager$fetchMissingCovers$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/cover/MissingCoverLoadManager$fetchMissingCovers$1;-><init>(Lcom/amazon/kcp/cover/MissingCoverLoadManager;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
