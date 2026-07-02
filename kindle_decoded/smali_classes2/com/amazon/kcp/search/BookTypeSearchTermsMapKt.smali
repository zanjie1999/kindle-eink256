.class public final Lcom/amazon/kcp/search/BookTypeSearchTermsMapKt;
.super Ljava/lang/Object;
.source "BookTypeSearchTermsMap.kt"


# static fields
.field private static final BT_MAGAZINE_SYNONYMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BT_NEWSPAPER_SYNONYMS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_SYNONYM_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "magazine"

    const-string v1, "magazines"

    const-string/jumbo v2, "\u6742\u5fd7"

    const-string/jumbo v3, "\u96d1\u8a8c"

    const-string/jumbo v4, "zeitschrift"

    const-string/jumbo v5, "zeitschriften"

    const-string v6, "revista"

    const-string v7, "revistas"

    const-string v8, "rivista"

    const-string v9, "riviste"

    const-string v10, "tijdschrift"

    const-string v11, "tijdschriften"

    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/BookTypeSearchTermsMapKt;->BT_MAGAZINE_SYNONYMS:Ljava/util/Set;

    const-string v1, "newspaper"

    const-string v2, "newspapers"

    const-string/jumbo v3, "\u62a5\u7eb8"

    const-string/jumbo v4, "\u65b0\u805e"

    const-string/jumbo v5, "zeitung"

    const-string/jumbo v6, "zeitungen"

    const-string v7, "peri\u00f3dico"

    const-string v8, "peri\u00f3dicos"

    const-string v9, "journal"

    const-string v10, "journaux"

    const-string v11, "giornale"

    const-string v12, "giornali"

    const-string v13, "jornal"

    const-string v14, "jornais"

    const-string v15, "krant"

    const-string v16, "kranten"

    .line 46
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/BookTypeSearchTermsMapKt;->BT_NEWSPAPER_SYNONYMS:Ljava/util/Set;

    .line 49
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/BookTypeSearchTermsMapKt;->EMPTY_SYNONYM_SET:Ljava/util/Set;

    return-void
.end method

.method public static final getBookTypeSynonyms(Lcom/amazon/kcp/library/models/BookType;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/models/BookType;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "bookType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/amazon/kcp/search/BookTypeSearchTermsMapKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 55
    sget-object p0, Lcom/amazon/kcp/search/BookTypeSearchTermsMapKt;->EMPTY_SYNONYM_SET:Ljava/util/Set;

    goto :goto_0

    .line 54
    :cond_0
    sget-object p0, Lcom/amazon/kcp/search/BookTypeSearchTermsMapKt;->BT_NEWSPAPER_SYNONYMS:Ljava/util/Set;

    goto :goto_0

    .line 53
    :cond_1
    sget-object p0, Lcom/amazon/kcp/search/BookTypeSearchTermsMapKt;->BT_MAGAZINE_SYNONYMS:Ljava/util/Set;

    :goto_0
    return-object p0
.end method
