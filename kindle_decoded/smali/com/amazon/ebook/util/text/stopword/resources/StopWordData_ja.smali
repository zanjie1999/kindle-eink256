.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_ja;
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

    const-string/jumbo v6, "\u304b"

    const-string/jumbo v7, "\u306f"

    const-string/jumbo v8, "\u304c"

    const-string/jumbo v9, "\u306e"

    const-string/jumbo v10, "\u306b"

    const-string/jumbo v11, "\u3078"

    const-string/jumbo v12, "\u3092"

    const-string/jumbo v13, "\u3067"

    const-string/jumbo v14, "\u3048"

    const-string/jumbo v15, "\u3082"

    const-string/jumbo v16, "\u3068"

    const-string/jumbo v17, "\u3057"

    const-string/jumbo v18, "\u3053\u308c"

    const-string/jumbo v19, "\u305d\u308c"

    const-string/jumbo v20, "\u3042\u308c"

    const-string/jumbo v21, "\u3053\u306e"

    const-string/jumbo v22, "\u305d\u306e"

    const-string/jumbo v23, "\u3042\u306e"

    const-string/jumbo v24, "\u3053\u3053"

    const-string/jumbo v25, "\u305d\u3053"

    const-string/jumbo v26, "\u3042\u305d\u3053"

    const-string/jumbo v27, "\u3053\u3061\u3089"

    const-string/jumbo v28, "\u3069\u3053"

    const-string/jumbo v29, "\u3060\u308c"

    const-string/jumbo v30, "\u306a\u306b"

    const-string/jumbo v31, "\u306a\u3093"

    const-string/jumbo v32, "\u4f55"

    const-string/jumbo v33, "\u79c1"

    const-string/jumbo v34, "\u8cb4\u65b9"

    const-string/jumbo v35, "\u8cb4\u65b9\u65b9"

    const-string/jumbo v36, "\u6211\u3005"

    const-string/jumbo v37, "\u79c1\u9054"

    const-string/jumbo v38, "\u3042\u306e\u4eba"

    const-string/jumbo v39, "\u3042\u306e\u304b\u305f"

    const-string/jumbo v40, "\u5f7c\u5973"

    const-string/jumbo v41, "\u5f7c"

    const-string/jumbo v42, "\u3067\u3059"

    const-string/jumbo v43, "\u3042\u308a\u307e\u3059"

    const-string/jumbo v44, "\u304a\u308a\u307e\u3059"

    const-string/jumbo v45, "\u3044\u307e\u3059"

    const-string/jumbo v46, "\u304b\u3089"

    const-string/jumbo v47, "\u307e\u3067"

    const-string/jumbo v48, "\u3088\u308a"

    const-string/jumbo v49, "\u3069\u306e"

    const-string/jumbo v50, "\u305d\u308c\u3067"

    const-string/jumbo v51, "\u3057\u304b\u3057"

    filled-new-array/range {v6 .. v51}, [Ljava/lang/String;

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

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_ja;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_ja;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
