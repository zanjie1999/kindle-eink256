.class public Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;
.super Ljava/lang/Object;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$SomeLanguages;,
        Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;
    }
.end annotation


# static fields
.field public static final ANY:Ljava/lang/String; = "any"

.field public static final ANY_LANGUAGE:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

.field private static final LANGUAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;",
            "Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LANGUAGES:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;


# instance fields
.field private final languages:Ljava/util/Set;
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
    .locals 6

    .line 139
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    .line 142
    invoke-static {}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->values()[Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 143
    sget-object v4, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    invoke-static {v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->langResourceName(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->getInstance(Ljava/lang/String;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->NO_LANGUAGES:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 224
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$2;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$2;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->ANY_LANGUAGE:Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages$LanguageSet;

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->languages:Ljava/util/Set;

    return-void
.end method

.method public static getInstance(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;
    .locals 1

    .line 148
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->LANGUAGES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;
    .locals 5

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 154
    const-class v1, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 160
    new-instance p0, Ljava/util/Scanner;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 162
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    invoke-virtual {p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    const-string v4, "*/"

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const-string v4, "/*"

    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 172
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    :cond_3
    new-instance p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;-><init>(Ljava/util/Set;)V

    return-object p0

    .line 157
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to resolve required resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static langResourceName(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 181
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "com/amazon/whispersync/org/apache/commons/codec/language/bm/%s_languages.txt"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Languages;->languages:Ljava/util/Set;

    return-object v0
.end method
