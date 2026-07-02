.class public final Lcom/amazon/kcp/library/OriginFiltersKt;
.super Ljava/lang/Object;
.source "OriginFilters.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOriginFilters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OriginFilters.kt\ncom/amazon/kcp/library/OriginFiltersKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation


# static fields
.field private static final COMMON_SUPPORT_SORT_TYPES:[Lcom/amazon/kcp/library/LibrarySortType;

.field private static final SHARED_ORIGIN_ID_ITEMS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SHARE_ORIGIN_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/OriginFiltersKt;->SHARED_ORIGIN_ID_ITEMS:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/library/LibrarySortType;

    .line 12
    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/OriginFiltersKt;->COMMON_SUPPORT_SORT_TYPES:[Lcom/amazon/kcp/library/LibrarySortType;

    return-void
.end method

.method public static final synthetic access$getCOMMON_SUPPORT_SORT_TYPES$p()[Lcom/amazon/kcp/library/LibrarySortType;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/library/OriginFiltersKt;->COMMON_SUPPORT_SORT_TYPES:[Lcom/amazon/kcp/library/LibrarySortType;

    return-object v0
.end method

.method public static final synthetic access$getSHARED_ORIGIN_ID_ITEMS$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/library/OriginFiltersKt;->SHARED_ORIGIN_ID_ITEMS:Ljava/lang/String;

    return-object v0
.end method

.method public static final generateSqlInStatement(I)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p0, :cond_1

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x38

    const/4 v11, 0x0

    const-string v5, "("

    const-string v6, ")"

    const-string v4, ", "

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the argument must be greater than 0"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
