.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_nl;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const/4 v0, 0x3

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

    const-string v6, "de"

    const-string v7, "en"

    const-string/jumbo v8, "van"

    const-string v9, "ik"

    const-string/jumbo v10, "te"

    const-string v11, "dat"

    const-string v12, "die"

    const-string v13, "in"

    const-string v14, "een"

    const-string v15, "hij"

    const-string v16, "het"

    const-string/jumbo v17, "niet"

    const-string/jumbo v18, "zijn"

    const-string v19, "is"

    const-string/jumbo v20, "was"

    const-string/jumbo v21, "op"

    const-string v22, "aan"

    const-string/jumbo v23, "met"

    const-string v24, "als"

    const-string/jumbo v25, "voor"

    const-string v26, "had"

    const-string v27, "er"

    filled-new-array/range {v6 .. v27}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "title.prefix.word.list"

    aput-object v3, v2, v4

    const-string v3, "die"

    const-string v4, "den"

    const-string v6, "dat"

    filled-new-array {v3, v4, v6}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_nl;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_nl;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
