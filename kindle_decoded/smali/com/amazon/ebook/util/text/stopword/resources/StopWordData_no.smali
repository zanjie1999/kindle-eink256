.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_no;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 40

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

    const-string v6, "at"

    const-string v7, "en"

    const-string v8, "et"

    const-string v9, "den"

    const-string/jumbo v10, "til"

    const-string v11, "er"

    const-string/jumbo v12, "p\u00e5"

    const-string/jumbo v13, "med"

    const-string v14, "han"

    const-string v15, "av"

    const-string/jumbo v16, "var"

    const-string/jumbo v17, "ved"

    const-string v18, "fra"

    const-string v19, "bli"

    const-string v20, "ble"

    const-string v21, "blei"

    const-string v22, "blitt"

    const-string/jumbo v23, "v\u00e6re"

    const-string v24, "kom"

    const-string v25, "for"

    const-string/jumbo v26, "\u00e5"

    const-string v27, "blir"

    const-string/jumbo v28, "v\u00e6rt"

    const-string/jumbo v29, "v\u00e6re"

    const-string v30, "d\u00e5"

    const-string v31, "ein"

    const-string v32, "eit"

    const-string v33, "eitt"

    const-string/jumbo v34, "vere"

    const-string/jumbo v35, "vore"

    const-string/jumbo v36, "verte"

    const-string/jumbo v37, "vort"

    const-string/jumbo v38, "varte"

    const-string/jumbo v39, "vart"

    filled-new-array/range {v6 .. v39}, [Ljava/lang/String;

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

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_no;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_no;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
