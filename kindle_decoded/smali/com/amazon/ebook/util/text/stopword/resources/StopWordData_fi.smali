.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_fi;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 26

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

    const-string/jumbo v6, "olla"

    const-string/jumbo v7, "olen"

    const-string/jumbo v8, "olet"

    const-string/jumbo v9, "on"

    const-string/jumbo v10, "olemme"

    const-string/jumbo v11, "olette"

    const-string/jumbo v12, "ovat"

    const-string/jumbo v13, "ole"

    const-string/jumbo v14, "se"

    const-string/jumbo v15, "sen"

    const-string/jumbo v16, "sit\u00e4"

    const-string/jumbo v17, "siin\u00e4"

    const-string/jumbo v18, "siit\u00e4"

    const-string/jumbo v19, "siihen"

    const-string/jumbo v20, "sill\u00e4"

    const-string/jumbo v21, "silt\u00e4"

    const-string/jumbo v22, "sille"

    const-string/jumbo v23, "sin\u00e4"

    const-string/jumbo v24, "siksi"

    const-string v25, "kanssa"

    filled-new-array/range {v6 .. v25}, [Ljava/lang/String;

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

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_fi;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_fi;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
