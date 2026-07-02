.class public final Lcom/amazon/kcp/integrator/BookDataHelper;
.super Ljava/lang/Object;
.source "BookDataHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBookDataHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookDataHelper.kt\ncom/amazon/kcp/integrator/BookDataHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,277:1\n1711#2,3:278\n*E\n*S KotlinDebug\n*F\n+ 1 BookDataHelper.kt\ncom/amazon/kcp/integrator/BookDataHelper\n*L\n108#1,3:278\n*E\n"
.end annotation


# static fields
.field private static final ACCOUNT_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CATEGORIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_SORTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

.field private static final NUMBER_SORTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OWNERSHIPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERIODICALS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final READING_PROGRESSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_SORTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 24
    new-instance v0, Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-direct {v0}, Lcom/amazon/kcp/integrator/BookDataHelper;-><init>()V

    sput-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v4, 0x2

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    const/4 v6, 0x3

    .line 32
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v4

    const/4 v8, 0x4

    .line 33
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v6

    const/4 v10, 0x6

    .line 34
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v0, v8

    const/4 v12, 0x7

    .line 35
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x5

    aput-object v13, v0, v14

    const/16 v15, 0x8

    .line 36
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v10

    const/16 v10, 0x9

    .line 37
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v0, v12

    const/16 v18, 0xa

    .line 38
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v0, v15

    const/16 v20, 0xd

    .line 39
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v0, v10

    const/16 v20, 0xe

    .line 40
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v0, v18

    .line 29
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->CATEGORIES:Ljava/util/Set;

    new-array v0, v6, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    aput-object v5, v0, v1

    aput-object v7, v0, v4

    .line 43
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->READING_PROGRESSES:Ljava/util/Set;

    new-array v0, v10, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    aput-object v5, v0, v1

    aput-object v7, v0, v4

    aput-object v17, v0, v6

    aput-object v9, v0, v8

    aput-object v13, v0, v14

    const/4 v7, 0x6

    aput-object v16, v0, v7

    .line 57
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v12

    aput-object v11, v0, v15

    .line 49
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->OWNERSHIPS:Ljava/util/Set;

    new-array v0, v4, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    aput-object v5, v0, v1

    .line 61
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->ACCOUNT_TYPES:Ljava/util/Set;

    new-array v0, v4, [Ljava/lang/Integer;

    const/16 v7, 0x11

    .line 67
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v3

    const/16 v7, 0x10

    .line 68
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v1

    .line 66
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->STRING_SORTS:Ljava/util/Set;

    new-array v0, v6, [Ljava/lang/Integer;

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v3

    aput-object v2, v0, v1

    aput-object v5, v0, v4

    .line 71
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->DATE_SORTS:Ljava/util/Set;

    new-array v0, v8, [Ljava/lang/Integer;

    const/16 v2, 0x20

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const/16 v2, 0x21

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v2, 0x22

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    const/16 v2, 0x23

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    .line 77
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->NUMBER_SORTS:Ljava/util/Set;

    new-array v0, v4, [Ljava/lang/Integer;

    aput-object v17, v0, v3

    aput-object v19, v0, v1

    .line 84
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->PERIODICALS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$hasKindleContentTag(Lcom/amazon/kcp/integrator/BookDataHelper;Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/integrator/BookDataHelper;->hasKindleContentTag(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final accountTypeSetForBookData(Lcom/amazon/kindle/content/ContentMetadata;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "bookData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 108
    invoke-static {}, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;->getSharedFilterItems()Ljava/util/List;

    move-result-object v1

    .line 278
    instance-of v2, v1, Ljava/util/Collection;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 108
    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getConstraint()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    const/4 v1, 0x2

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Sharing"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v4

    if-eqz p0, :cond_4

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public static final categorySetForBookData(Lcom/amazon/kindle/content/ContentMetadata;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "bookData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 145
    new-instance v1, Lcom/amazon/kcp/integrator/BookDataHelper$categorySetForBookData$applyComicCategories$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/integrator/BookDataHelper$categorySetForBookData$applyComicCategories$1;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Set;)V

    .line 154
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v3, "Utils.getFactory()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    invoke-static {}, Lcom/amazon/android/util/RestrictionUtils;->getInstance()Lcom/amazon/android/util/RestrictionUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/amazon/android/util/RestrictionUtils;->isBookTypeBlocked(Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsHidden()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/integrator/BookDataHelper;->hasKindleBookType(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/models/BookType;)Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0xe

    .line 164
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0

    .line 169
    :cond_3
    sget-object v2, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v2, p0, v3}, Lcom/amazon/kcp/integrator/BookDataHelper;->hasKindleBookType(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p0, 0x3

    .line 170
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto/16 :goto_1

    .line 174
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    const-string v3, "bookData.type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/BookType;->isDocument()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 p0, 0x4

    .line 175
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 177
    :cond_5
    sget-object v2, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v2, p0, v3}, Lcom/amazon/kcp/integrator/BookDataHelper;->hasKindleBookType(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v2, p0, v3}, Lcom/amazon/kcp/integrator/BookDataHelper;->hasKindleBookType(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 182
    :cond_6
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/integrator/BookDataHelper;->hasKindleBookType(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 p0, 0x7

    .line 183
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 185
    :cond_7
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/integrator/BookDataHelper;->hasKindleBookType(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 p0, 0x8

    .line 186
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    :cond_8
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/integrator/BookDataHelper;->hasKindleBookType(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 p0, 0x9

    .line 189
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    :cond_9
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/integrator/BookDataHelper;->hasKindleBookType(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 p0, 0xa

    .line 192
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    :cond_a
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLocalBook()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_c

    const/16 p0, 0xd

    .line 195
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    :goto_0
    const/4 p0, 0x6

    .line 178
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_c
    :goto_1
    return-object v0
.end method

.method public static final dateForSortTypeFromBookData(Lcom/amazon/kindle/content/ContentMetadata;I)Ljava/lang/Long;
    .locals 2

    const-string v0, "bookData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return-object v1

    .line 249
    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/LibraryConstants$ContentStates;->ON_DEVICE_CONTENT_STATES:Ljava/util/List;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    .line 254
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private final hasKindleBookType(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/models/BookType;)Z
    .locals 0

    .line 202
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final hasKindleContentTag(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;)Z
    .locals 4

    .line 206
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTags()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getContentTags()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-static {p1, p2, v1, v0, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-ne p1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static final numberForSortTypeFromCollectionItemData(Lcom/amazon/kindle/collections/dto/ICollectionItem;I)Ljava/lang/Integer;
    .locals 3

    const-string v0, "collection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-interface {p0}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/16 p0, 0x22

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    double-to-int p0, v1

    .line 273
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final numberForSortTypeFromGroupItem(Lcom/amazon/kindle/content/GroupItemMetadata;I)Ljava/lang/Integer;
    .locals 1

    const-string v0, "groupItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 264
    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/models/SeriesGroupType;->Companion:Lcom/amazon/kcp/library/models/SeriesGroupType$Companion;

    invoke-virtual {p0}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupItemType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/library/models/SeriesGroupType$Companion;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPosition()F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final ownershipSetForBookData(Lcom/amazon/kindle/content/ContentMetadata;)I
    .locals 2

    const-string v0, "bookData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "KUSubscription"

    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v1, "Purchase"

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :sswitch_2
    const-string v1, "ComicsUnlimited"

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_3
    const-string v1, "PublicLibraryLending"

    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "Prime"

    .line 95
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "KOLL"

    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "PersonalLending"

    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v1, "Kindle Unlimited"

    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :sswitch_8
    const-string v1, "Sample"

    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_9
    const-string v1, "Rental"

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_a
    const-string v1, "KindleUnlimited"

    .line 93
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 v0, 0x3

    :cond_1
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x71a044cc -> :sswitch_a
        -0x6e4f96bc -> :sswitch_9
        -0x6cd39e36 -> :sswitch_8
        -0x68765772 -> :sswitch_7
        -0x3532c1ed -> :sswitch_6
        0x2349e4 -> :sswitch_5
        0x49cc25f -> :sswitch_4
        0x25bc1e41 -> :sswitch_3
        0x62a63e29 -> :sswitch_2
        0x6bc36921 -> :sswitch_1
        0x7b9ce7a7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final readingProgressSetForBookData(Lcom/amazon/kindle/content/ContentMetadata;)I
    .locals 3

    const-string v0, "bookData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object p0

    const-string v0, "bookData.readData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object p0

    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_2

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;->isInProgressFilterEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method

.method public static final stringForSortTypeFromBookData(Lcom/amazon/kindle/content/ContentMetadata;I)Ljava/lang/String;
    .locals 3

    const-string v0, "bookData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableAuthor()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 218
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 213
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 214
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    if-nez v1, :cond_7

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final stringForSortTypeFromCollectionData(Lcom/amazon/kindle/collections/dto/ICollection;I)Ljava/lang/String;
    .locals 2

    const-string v0, "collection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Uncollected"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/collections/dto/ICollection;->getSortableTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final stringForSortTypeFromGroupData(Lcom/amazon/kindle/content/GroupMetadata;I)Ljava/lang/String;
    .locals 1

    const-string v0, "group"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/content/GroupMetadata;->getAuthor()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 236
    :cond_1
    invoke-static {p0}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getSortableName(Lcom/amazon/kindle/content/GroupMetadata;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final getACCOUNT_TYPES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->ACCOUNT_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method public final getCATEGORIES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->CATEGORIES:Ljava/util/Set;

    return-object v0
.end method

.method public final getDATE_SORTS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->DATE_SORTS:Ljava/util/Set;

    return-object v0
.end method

.method public final getNUMBER_SORTS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->NUMBER_SORTS:Ljava/util/Set;

    return-object v0
.end method

.method public final getOWNERSHIPS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->OWNERSHIPS:Ljava/util/Set;

    return-object v0
.end method

.method public final getPERIODICALS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->PERIODICALS:Ljava/util/Set;

    return-object v0
.end method

.method public final getREADING_PROGRESSES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->READING_PROGRESSES:Ljava/util/Set;

    return-object v0
.end method

.method public final getSTRING_SORTS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->STRING_SORTS:Ljava/util/Set;

    return-object v0
.end method
