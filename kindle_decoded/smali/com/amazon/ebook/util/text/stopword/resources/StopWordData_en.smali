.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_en;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 37

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

    const-string/jumbo v6, "the"

    const-string v7, "a"

    const-string v8, "an"

    const-string/jumbo v9, "this"

    const-string/jumbo v10, "that"

    const-string/jumbo v11, "these"

    const-string/jumbo v12, "those"

    const-string v13, "i"

    const-string/jumbo v14, "you"

    const-string/jumbo v15, "she"

    const-string v16, "he"

    const-string v17, "it"

    const-string/jumbo v18, "we"

    const-string/jumbo v19, "they"

    const-string v20, "as"

    const-string v21, "like"

    const-string v22, "at"

    const-string/jumbo v23, "to"

    const-string v24, "also"

    const-string/jumbo v25, "on"

    const-string/jumbo v26, "of"

    const-string v27, "by"

    const-string v28, "for"

    const-string/jumbo v29, "not"

    const-string/jumbo v30, "only"

    const-string/jumbo v31, "or"

    const-string/jumbo v32, "so"

    const-string v33, "and"

    const-string v34, "about"

    const-string v35, "from"

    const-string v36, "in"

    filled-new-array/range {v6 .. v36}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "title.prefix.word.list"

    aput-object v3, v2, v4

    const-string/jumbo v3, "the"

    const-string v4, "a"

    const-string v6, "an"

    filled-new-array {v3, v4, v6}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_en;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_en;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
