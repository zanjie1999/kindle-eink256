.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_sv;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 30

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

    const-string/jumbo v6, "och"

    const-string v7, "det"

    const-string v8, "att"

    const-string v9, "i"

    const-string v10, "en"

    const-string v11, "jag"

    const-string v12, "hon"

    const-string/jumbo v13, "som"

    const-string v14, "han"

    const-string/jumbo v15, "p\u00e5"

    const-string v16, "den"

    const-string/jumbo v17, "med"

    const-string/jumbo v18, "var"

    const-string/jumbo v19, "sig"

    const-string v20, "f\u00f6r"

    const-string/jumbo v21, "s\u00e5"

    const-string/jumbo v22, "till"

    const-string/jumbo v23, "\u00e4r"

    const-string/jumbo v24, "men"

    const-string v25, "ett"

    const-string/jumbo v26, "om"

    const-string v27, "hade"

    const-string v28, "de"

    const-string v29, "av"

    filled-new-array/range {v6 .. v29}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "title.prefix.word.list"

    aput-object v3, v2, v4

    const-string v3, ""

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_sv;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_sv;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
