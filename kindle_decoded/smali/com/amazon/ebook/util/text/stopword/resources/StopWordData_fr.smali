.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_fr;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 44

    const/4 v0, 0x6

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

    const-string v6, "le"

    const-string v7, "la"

    const-string v8, "l\'"

    const-string v9, "les"

    const-string/jumbo v10, "un"

    const-string/jumbo v11, "une"

    const-string v12, "des"

    const-string v13, "du"

    const-string v14, "de"

    const-string v15, "au"

    const-string v16, "aux"

    const-string v17, "ce"

    const-string v18, "cet"

    const-string v19, "cette"

    const-string v20, "ces"

    const-string v21, "je"

    const-string/jumbo v22, "tu"

    const-string v23, "elle"

    const-string v24, "il"

    const-string/jumbo v25, "on"

    const-string/jumbo v26, "nous"

    const-string/jumbo v27, "vous"

    const-string v28, "elles"

    const-string v29, "ils"

    const-string v30, "comme"

    const-string/jumbo v31, "\u00e0"

    const-string v32, "aussi"

    const-string/jumbo v33, "sur"

    const-string/jumbo v34, "par"

    const-string/jumbo v35, "pour"

    const-string/jumbo v36, "ne"

    const-string/jumbo v37, "n\u2019"

    const-string/jumbo v38, "pas"

    const-string/jumbo v39, "ou"

    const-string/jumbo v40, "or"

    const-string v41, "donc"

    const-string v42, "et"

    const-string v43, "dans"

    filled-new-array/range {v6 .. v43}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "title.prefix.word.list"

    aput-object v3, v2, v4

    const-string v6, "le"

    const-string v7, "la"

    const-string v8, "les"

    const-string/jumbo v9, "un"

    const-string/jumbo v10, "une"

    const-string v11, "des"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "elision.shorten.article.list"

    aput-object v3, v2, v4

    const-string v6, "l"

    const-string v7, "j"

    const-string v8, "c"

    const-string/jumbo v9, "m"

    const-string/jumbo v10, "t"

    const-string/jumbo v11, "s"

    const-string v12, "d"

    const-string/jumbo v13, "qu"

    const-string/jumbo v14, "n"

    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "title.prefix.elision.list"

    aput-object v3, v2, v4

    const-string v3, "l"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "enclitic.list"

    aput-object v2, v1, v4

    const-string v6, "le"

    const-string v7, "la"

    const-string v8, "les"

    const-string/jumbo v9, "lui"

    const-string v10, "leur"

    const-string/jumbo v11, "moi"

    const-string/jumbo v12, "toi"

    const-string/jumbo v13, "nous"

    const-string/jumbo v14, "vous"

    const-string/jumbo v15, "y"

    const-string v16, "en"

    const-string v17, "il"

    const-string v18, "elle"

    const-string v19, "ils"

    const-string v20, "elles"

    const-string v21, "je"

    const-string/jumbo v22, "z"

    const-string/jumbo v23, "m\'en"

    const-string/jumbo v24, "t\'en"

    const-string/jumbo v25, "m\u2019en"

    const-string/jumbo v26, "t\u2019en"

    filled-new-array/range {v6 .. v26}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_fr;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_fr;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
