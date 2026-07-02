.class public final Lcom/amazon/kindle/utils/GroupContentHelper;
.super Ljava/lang/Object;
.source "GroupContentHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/utils/GroupContentHelper;

.field private static final comicCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final falkorCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final groupService$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/utils/GroupContentHelper;

    invoke-direct {v0}, Lcom/amazon/kindle/utils/GroupContentHelper;-><init>()V

    sput-object v0, Lcom/amazon/kindle/utils/GroupContentHelper;->INSTANCE:Lcom/amazon/kindle/utils/GroupContentHelper;

    .line 12
    sget-object v0, Lcom/amazon/kindle/utils/GroupContentHelper$groupService$2;->INSTANCE:Lcom/amazon/kindle/utils/GroupContentHelper$groupService$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/utils/GroupContentHelper;->groupService$delegate:Lkotlin/Lazy;

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/utils/GroupContentHelper;->comicCache:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/utils/GroupContentHelper;->falkorCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isComicGroup(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "bookId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/amazon/kindle/utils/GroupContentHelper;->comicCache:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kindle/utils/GroupContentHelper$isComicGroup$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/utils/GroupContentHelper$isComicGroup$1;-><init>(Lcom/amazon/kindle/model/content/IBookID;)V

    invoke-static {v0, p0, v1}, Lcom/amazon/kindle/utils/MapUtilsKt;->findInMapOrRun(Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final isFalkorGroup(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "bookId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/amazon/kindle/utils/GroupContentHelper;->falkorCache:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kindle/utils/GroupContentHelper$isFalkorGroup$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/utils/GroupContentHelper$isFalkorGroup$1;-><init>(Lcom/amazon/kindle/model/content/IBookID;)V

    invoke-static {v0, p0, v1}, Lcom/amazon/kindle/utils/MapUtilsKt;->findInMapOrRun(Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public final getComicCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/amazon/kindle/utils/GroupContentHelper;->comicCache:Ljava/util/Map;

    return-object v0
.end method

.method public final getFalkorCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/amazon/kindle/utils/GroupContentHelper;->falkorCache:Ljava/util/Map;

    return-object v0
.end method

.method public final getGroupService$KindleReaderLibrary_release()Lcom/amazon/kindle/content/IGroupService;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/utils/GroupContentHelper;->groupService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/IGroupService;

    return-object v0
.end method
