.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_es;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 52

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

    const-string v6, "el"

    const-string v7, "la"

    const-string/jumbo v8, "los"

    const-string v9, "las"

    const-string/jumbo v10, "un"

    const-string/jumbo v11, "una"

    const-string/jumbo v12, "unos"

    const-string/jumbo v13, "unas"

    const-string v14, "del"

    const-string v15, "al"

    const-string v16, "este"

    const-string v17, "ese"

    const-string v18, "aquel"

    const-string v19, "estos"

    const-string v20, "esos"

    const-string v21, "aquellos"

    const-string v22, "esta"

    const-string v23, "esa"

    const-string v24, "aquella"

    const-string v25, "estas"

    const-string v26, "esas"

    const-string v27, "aquellas"

    const-string/jumbo v28, "yo"

    const-string/jumbo v29, "t\u00fa"

    const-string/jumbo v30, "tus"

    const-string/jumbo v31, "vos"

    const-string/jumbo v32, "usted"

    const-string/jumbo v33, "\u00e9l"

    const-string v34, "ella"

    const-string v35, "ello"

    const-string/jumbo v36, "nosotros"

    const-string/jumbo v37, "nosotras"

    const-string/jumbo v38, "vosotros"

    const-string/jumbo v39, "vosotras"

    const-string/jumbo v40, "ustedes"

    const-string v41, "ellos"

    const-string v42, "ellas"

    const-string v43, "en"

    const-string/jumbo v44, "y"

    const-string/jumbo v45, "o"

    const-string v46, "a"

    const-string/jumbo v47, "por"

    const-string/jumbo v48, "no"

    const-string/jumbo v49, "ni"

    const-string v50, "desde"

    const-string v51, "e"

    filled-new-array/range {v6 .. v51}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "title.prefix.word.list"

    aput-object v3, v2, v4

    const-string v6, "el"

    const-string v7, "la"

    const-string/jumbo v8, "los"

    const-string v9, "las"

    const-string/jumbo v10, "un"

    const-string/jumbo v11, "una"

    const-string/jumbo v12, "unos"

    const-string/jumbo v13, "unas"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_es;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_es;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
