.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "stop.word.strength"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/Integer;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "search.word.list"

    aput-object v3, v2, v4

    const-string/jumbo v3, "the"

    const-string v6, "an"

    const-string v7, "a"

    filled-new-array {v7, v6, v3}, [Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v8, "title.prefix.word.list"

    aput-object v8, v2, v4

    filled-new-array {v7, v6, v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "elision.shorten.article.list"

    aput-object v3, v2, v4

    new-array v3, v4, [Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "title.prefix.elision.list"

    aput-object v3, v2, v4

    new-array v3, v4, [Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "enclitic.list"

    aput-object v3, v2, v4

    new-array v3, v4, [Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "mesoclitic.list"

    aput-object v2, v1, v4

    new-array v2, v4, [Ljava/lang/String;

    aput-object v2, v1, v5

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData;->contents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContents()[[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
