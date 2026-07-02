.class Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;
.super Ljava/lang/Object;
.source "LibraryLookupBuilder.java"

# interfaces
.implements Lcom/amazon/kindle/content/filter/SQLQueryFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/LibraryLookupBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LookupSqlFilter"
.end annotation


# instance fields
.field private final dictionaryIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kindle/content/LibraryLookupBuilder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryLookupBuilder;)V
    .locals 1

    .line 65
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->this$0:Lcom/amazon/kindle/content/LibraryLookupBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->dictionaryIds:Ljava/util/Set;

    .line 66
    invoke-static {p1}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$100(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->dictionaryIds:Ljava/util/Set;

    invoke-direct {p0}, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->getDictionaryIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private getDictionaryIds()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getPreferredDictionaries()Ljava/util/HashMap;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;

    .line 80
    invoke-static {}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$000()Lcom/google/common/base/Function;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->getDefaultAsin()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, v2, Lcom/amazon/kcp/library/dictionary/internal/TopLevelLanguageDictionaryDefinition;->listDictionaries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 82
    invoke-static {}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$200()Lcom/google/common/base/Function;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getLimit()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->this$0:Lcom/amazon/kindle/content/LibraryLookupBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$600(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->this$0:Lcom/amazon/kindle/content/LibraryLookupBuilder;

    invoke-static {v0}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$600(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 128
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->this$0:Lcom/amazon/kindle/content/LibraryLookupBuilder;

    invoke-static {v1}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$100(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->dictionaryIds:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->this$0:Lcom/amazon/kindle/content/LibraryLookupBuilder;

    invoke-static {v1}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$300(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->this$0:Lcom/amazon/kindle/content/LibraryLookupBuilder;

    invoke-static {v1}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$400(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    :cond_1
    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getWhereClause()Ljava/lang/String;
    .locals 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IN ( ? , ? )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->this$0:Lcom/amazon/kindle/content/LibraryLookupBuilder;

    invoke-static {v1}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$100(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Z

    move-result v1

    const-string v2, " AND "

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " NOT IN ( \'"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/model/content/DictionaryType;->USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->dictionaryIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v3, v1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->this$0:Lcom/amazon/kindle/content/LibraryLookupBuilder;

    invoke-static {v1}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$300(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->this$0:Lcom/amazon/kindle/content/LibraryLookupBuilder;

    invoke-static {v1}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$400(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v3, v1

    :cond_1
    if-lez v3, :cond_3

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " NOT IN (?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-le v3, v1, :cond_2

    sub-int/2addr v3, v1

    const-string v1, ",?"

    .line 113
    invoke-static {v1, v3}, Lcom/google/common/base/Strings;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ")"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryLookupBuilder$LookupSqlFilter;->this$0:Lcom/amazon/kindle/content/LibraryLookupBuilder;

    invoke-static {v1}, Lcom/amazon/kindle/content/LibraryLookupBuilder;->access$500(Lcom/amazon/kindle/content/LibraryLookupBuilder;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IS NOT \'"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KindleUserGuide"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public orderBy()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
