.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_pt;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 44

    const/4 v0, 0x5

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

    const-string v7, "a"

    const-string/jumbo v8, "os"

    const-string v9, "as"

    const-string/jumbo v10, "um"

    const-string/jumbo v11, "uma"

    const-string/jumbo v12, "uns"

    const-string/jumbo v13, "umas"

    const-string v14, "esta"

    const-string v15, "estes"

    const-string v16, "estas"

    const-string v17, "aquele"

    const-string v18, "aquela"

    const-string v19, "aqueles"

    const-string v20, "aqueles"

    const-string v21, "aquelas"

    const-string v22, "isto"

    const-string v23, "aquilo"

    const-string v24, "eu"

    const-string/jumbo v25, "voc\u00ea"

    const-string v26, "ele"

    const-string v27, "ela"

    const-string/jumbo v28, "n\u00f3s"

    const-string/jumbo v29, "v\u00f3s"

    const-string/jumbo v30, "voc\u00eas"

    const-string v31, "eles"

    const-string v32, "elas"

    const-string v33, "de"

    const-string v34, "a"

    const-string v35, "e"

    const-string v36, "em"

    const-string/jumbo v37, "para"

    const-string/jumbo v38, "n\u00e3o"

    const-string/jumbo v39, "no"

    const-string/jumbo v40, "na"

    const-string/jumbo v41, "por"

    const-string v42, "como"

    const-string/jumbo v43, "ou"

    filled-new-array/range {v6 .. v43}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "title.prefix.word.list"

    aput-object v3, v2, v4

    const-string/jumbo v6, "o"

    const-string v7, "a"

    const-string/jumbo v8, "os"

    const-string v9, "as"

    const-string/jumbo v10, "um"

    const-string/jumbo v11, "uma"

    const-string/jumbo v12, "uns"

    const-string/jumbo v13, "umas"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "enclitic.list"

    aput-object v3, v2, v4

    const-string/jumbo v6, "me"

    const-string/jumbo v7, "te"

    const-string/jumbo v8, "o"

    const-string v9, "a"

    const-string v10, "lhe"

    const-string/jumbo v11, "nos"

    const-string/jumbo v12, "vos"

    const-string/jumbo v13, "os"

    const-string v14, "as"

    const-string v15, "lhes"

    const-string/jumbo v16, "se"

    const-string v17, "lo"

    const-string v18, "la"

    const-string/jumbo v19, "los"

    const-string v20, "las"

    const-string/jumbo v21, "no"

    const-string/jumbo v22, "na"

    const-string/jumbo v23, "nas"

    filled-new-array/range {v6 .. v23}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "mesoclitic.list"

    aput-object v2, v1, v4

    const-string/jumbo v6, "me"

    const-string/jumbo v7, "te"

    const-string/jumbo v8, "o"

    const-string v9, "a"

    const-string v10, "lhe"

    const-string/jumbo v11, "nos"

    const-string/jumbo v12, "vos"

    const-string/jumbo v13, "os"

    const-string v14, "as"

    const-string v15, "lhes"

    const-string/jumbo v16, "se"

    const-string v17, "lo"

    const-string v18, "la"

    const-string/jumbo v19, "los"

    const-string v20, "las"

    const-string/jumbo v21, "no"

    const-string/jumbo v22, "na"

    const-string/jumbo v23, "nas"

    filled-new-array/range {v6 .. v23}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_pt;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_pt;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
