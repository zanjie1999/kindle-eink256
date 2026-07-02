.class public Lcom/amazon/kindle/content/LibraryLookupBuilder;
.super Ljava/lang/Object;
.source "LibraryLookupBuilder.java"

# interfaces
.implements Lcom/amazon/kindle/content/ILibraryLookupBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;
    }
.end annotation


# static fields
.field private static final USER_GUIDE_ORIGIN_TYPE:Ljava/lang/String; = "KindleUserGuide"

.field private static final asinToId:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final definitionToId:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contentService:Lcom/amazon/kindle/content/ILibraryService;

.field private excludeDicts:Z

.field private excludeGuide:Z

.field private excludePreloads:Z

.field private limit:Ljava/lang/Integer;

.field private preloadAsins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/amazon/kindle/content/LibraryLookupBuilder$1;

    invoke-direct {v0}, Lcom/amazon/kindle/content/LibraryLookupBuilder$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->definitionToId:Lcom/google/common/base/Function;

    .line 50
    new-instance v0, Lcom/amazon/kindle/content/LibraryLookupBuilder$2;

    invoke-direct {v0}, Lcom/amazon/kindle/content/LibraryLookupBuilder$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->asinToId:Lcom/google/common/base/Function;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->limit:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 156
    iput-boolean v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->excludeDicts:Z

    .line 157
    iput-boolean v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->excludeGuide:Z

    .line 158
    iput-boolean v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->excludePreloads:Z

    .line 159
    iput-object v0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->userId:Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->contentService:Lcom/amazon/kindle/content/ILibraryService;

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/base/Function;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->asinToId:Lcom/google/common/base/Function;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->excludeDicts:Z

    return p0
.end method

.method static synthetic access$200()Lcom/google/common/base/Function;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->definitionToId:Lcom/google/common/base/Function;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->excludePreloads:Z

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->preloadAsins:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->excludeGuide:Z

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Ljava/lang/Integer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->limit:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public currentUser()Lcom/amazon/kindle/content/ILibraryLookupBuilder;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->contentService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public excludeDictionaries()Lcom/amazon/kindle/content/ILibraryLookupBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->excludeDicts:Z

    return-object p0
.end method

.method public excludePreloads()Lcom/amazon/kindle/content/ILibraryLookupBuilder;
    .locals 2

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->excludePreloads:Z

    .line 197
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$array;->preload_asins:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/content/LibraryLookupBuilder;->asinToId:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->preloadAsins:Ljava/util/List;

    return-object p0
.end method

.method public excludeUsersGuide()Lcom/amazon/kindle/content/ILibraryLookupBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->excludeGuide:Z

    return-object p0
.end method

.method public getAsins()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->contentService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->userId:Ljava/lang/String;

    new-instance v2, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;-><init>(Lcom/amazon/kindle/content/LibraryLookupBuilder;)V

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getBookIds(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 214
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 215
    invoke-static {v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 217
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public limit(Ljava/lang/Integer;)Lcom/amazon/kindle/content/ILibraryLookupBuilder;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder;->limit:Ljava/lang/Integer;

    return-object p0
.end method
