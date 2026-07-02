.class public Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;
.super Ljava/lang/Object;
.source "Lang.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;
    }
.end annotation


# static fields
.field private static final LANGUAGE_RULES_RN:Ljava/lang/String; = "com/amazon/whispersync/org/apache/commons/codec/language/bm/lang.txt"

.field private static final Langs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final languages:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 96
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;->Langs:Ljava/util/Map;

    .line 101
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->values()[Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 102
    sget-object v4, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;->Langs:Ljava/util/Map;

    invoke-static {v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->getInstance(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;

    move-result-object v5

    const-string v6, "com/amazon/whispersync/org/apache/commons/codec/language/bm/lang.txt"

    invoke-static {v6, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;->loadFromResource(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;",
            ">;",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;",
            ")V"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;->rules:Ljava/util/List;

    .line 190
    iput-object p2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;->languages:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;

    return-void
.end method

.method public static instance(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;
    .locals 1

    .line 114
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;->Langs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;

    return-object p0
.end method

.method public static loadFromResource(Ljava/lang/String;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;
    .locals 9

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    const-class v1, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 137
    new-instance v2, Ljava/util/Scanner;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 139
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 140
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const-string v5, "*/"

    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const-string v6, "/*"

    .line 149
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const-string v6, "//"

    .line 153
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 155
    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v4

    .line 159
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 161
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const-string v7, "\\s+"

    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 168
    array-length v7, v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 173
    aget-object v4, v6, v1

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 174
    aget-object v5, v6, v5

    const-string v7, "\\+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    .line 175
    aget-object v6, v6, v7

    const-string/jumbo v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 177
    new-instance v7, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;

    new-instance v8, Ljava/util/HashSet;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    invoke-direct {v7, v4, v8, v6, v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;-><init>(Ljava/util/regex/Pattern;Ljava/util/Set;ZLcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$1;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 169
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed line \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in language resource \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_6
    new-instance p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;-><init>(Ljava/util/List;Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;)V

    return-object p0

    .line 134
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to resolve required resource:org/apache/commons/codec/language/bm/lang.txt"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public guessLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 201
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;->guessLanguages(Ljava/lang/String;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;->getAny()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "any"

    :goto_0
    return-object p1
.end method

.method public guessLanguages(Ljava/lang/String;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;
    .locals 4

    .line 213
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;->languages:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->getLanguages()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 216
    iget-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;

    .line 217
    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-static {v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;->access$100(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    invoke-static {v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;->access$200(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 221
    :cond_1
    invoke-static {v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;->access$200(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 226
    :cond_2
    invoke-static {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;->from(Ljava/util/Set;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object p1

    .line 227
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->NO_LANGUAGES:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    :cond_3
    return-object p1
.end method
