.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_hu;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 41

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

    const-string v6, "a"

    const-string v7, "az"

    const-string v8, "egy"

    const-string v9, "be"

    const-string v10, "ki"

    const-string v11, "le"

    const-string v12, "fel"

    const-string/jumbo v13, "meg"

    const-string v14, "el"

    const-string/jumbo v15, "\u00e1t"

    const-string/jumbo v16, "r\u00e1"

    const-string v17, "ide"

    const-string/jumbo v18, "oda"

    const-string/jumbo v19, "sz\u00e9t"

    const-string/jumbo v20, "\u00f6ssze"

    const-string/jumbo v21, "vissza"

    const-string v22, "de"

    const-string v23, "h\u00e1t"

    const-string/jumbo v24, "\u00e9s"

    const-string/jumbo v25, "vagy"

    const-string v26, "hogy"

    const-string/jumbo v27, "van"

    const-string v28, "lesz"

    const-string/jumbo v29, "volt"

    const-string v30, "csak"

    const-string/jumbo v31, "nem"

    const-string v32, "igen"

    const-string/jumbo v33, "mint"

    const-string/jumbo v34, "\u00e9n"

    const-string/jumbo v35, "te"

    const-string/jumbo v36, "\u00f5"

    const-string/jumbo v37, "mi"

    const-string/jumbo v38, "ti"

    const-string/jumbo v39, "\u00f5k"

    const-string/jumbo v40, "\u00f6n"

    filled-new-array/range {v6 .. v40}, [Ljava/lang/String;

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

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_hu;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_hu;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
