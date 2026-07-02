.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_ro;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 54

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

    const-string/jumbo v6, "o"

    const-string/jumbo v7, "unui"

    const-string/jumbo v8, "unei"

    const-string/jumbo v9, "unor"

    const-string v10, "cel"

    const-string v11, "cea"

    const-string v12, "cei"

    const-string v13, "cele"

    const-string v14, "celui"

    const-string v15, "celei"

    const-string v16, "celor"

    const-string v17, "al"

    const-string v18, "a"

    const-string v19, "ai"

    const-string v20, "ale"

    const-string/jumbo v21, "pe"

    const-string v22, "la"

    const-string/jumbo v23, "\u00een"

    const-string v24, "f\u0103r\u0103"

    const-string/jumbo v25, "sub"

    const-string v26, "despre"

    const-string v27, "c\u0103tre"

    const-string v28, "cu"

    const-string v29, "de"

    const-string v30, "din"

    const-string/jumbo v31, "l\u00e2ng\u0103"

    const-string/jumbo v32, "spre"

    const-string v33, "ca"

    const-string/jumbo v34, "sunt"

    const-string/jumbo v35, "s"

    const-string v36, "e\u015fti"

    const-string v37, "este"

    const-string v38, "e"

    const-string/jumbo v39, "suntem"

    const-string/jumbo v40, "sunte\u0163i"

    const-string v41, "eram"

    const-string v42, "erai"

    const-string v43, "era"

    const-string v44, "era\u0163i"

    const-string v45, "erau"

    const-string v46, "fiu"

    const-string v47, "fii"

    const-string v48, "fie"

    const-string v49, "fim"

    const-string v50, "fi\u0163i"

    const-string v51, "fi"

    const-string v52, "fiind"

    const-string v53, "fost"

    filled-new-array/range {v6 .. v53}, [Ljava/lang/String;

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

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_ro;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_ro;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
