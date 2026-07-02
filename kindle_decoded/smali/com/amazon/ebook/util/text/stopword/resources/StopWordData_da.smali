.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_da;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 22

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

    const-string/jumbo v6, "og"

    const-string v7, "i"

    const-string v8, "jeg"

    const-string v9, "det"

    const-string v10, "at"

    const-string v11, "en"

    const-string v12, "den"

    const-string/jumbo v13, "til"

    const-string v14, "er"

    const-string/jumbo v15, "som"

    const-string/jumbo v16, "p\u00e5"

    const-string v17, "de"

    const-string/jumbo v18, "med"

    const-string v19, "han"

    const-string v20, "af"

    const-string v21, "for"

    filled-new-array/range {v6 .. v21}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "title.prefix.word.list"

    aput-object v3, v2, v4

    const-string v3, "det"

    const-string v4, "den"

    const-string v6, "de"

    filled-new-array {v3, v4, v6}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_da;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_da;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
