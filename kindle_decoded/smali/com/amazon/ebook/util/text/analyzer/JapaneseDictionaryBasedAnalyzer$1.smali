.class final Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer$DictionaryParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ebook/util/text/analyzer/JapaneseDictionaryBasedAnalyzer;->createWordToBaseformMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public populateMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/amazon/ebook/util/text/StringUtil;->split2(Ljava/lang/String;C)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-static {p1, v1}, Lcom/amazon/ebook/util/text/StringUtil;->split2(Ljava/lang/String;C)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
