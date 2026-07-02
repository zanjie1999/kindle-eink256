.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_it;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 99

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

    const-string v6, "il"

    const-string v7, "lo"

    const-string v8, "la"

    const-string v9, "l\'"

    const-string v10, "i"

    const-string v11, "gli"

    const-string v12, "le"

    const-string/jumbo v13, "un"

    const-string/jumbo v14, "uno"

    const-string/jumbo v15, "una"

    const-string/jumbo v16, "un\'"

    const-string v17, "del"

    const-string v18, "dello"

    const-string v19, "della"

    const-string v20, "dell\'"

    const-string v21, "dei"

    const-string v22, "degli"

    const-string v23, "degl\'"

    const-string v24, "delle"

    const-string/jumbo v25, "questo"

    const-string/jumbo v26, "questa"

    const-string/jumbo v27, "questi"

    const-string/jumbo v28, "queste"

    const-string/jumbo v29, "quello"

    const-string/jumbo v30, "quella"

    const-string/jumbo v31, "quelli"

    const-string v32, "codesto"

    const-string v33, "codesta"

    const-string v34, "codesti"

    const-string v35, "codeste"

    const-string v36, "io"

    const-string/jumbo v37, "noi"

    const-string/jumbo v38, "tu"

    const-string/jumbo v39, "voi"

    const-string v40, "egli"

    const-string v41, "esso"

    const-string v42, "essi"

    const-string v43, "ella"

    const-string v44, "essa"

    const-string v45, "esse"

    const-string v46, "ad"

    const-string v47, "al"

    const-string v48, "allo"

    const-string v49, "agli"

    const-string v50, "all"

    const-string v51, "agl"

    const-string v52, "alla"

    const-string v53, "alle"

    const-string v54, "con"

    const-string v55, "col"

    const-string v56, "coi"

    const-string v57, "da"

    const-string v58, "dal"

    const-string v59, "dallo"

    const-string v60, "dai"

    const-string v61, "dagli"

    const-string v62, "dall"

    const-string v63, "dagl"

    const-string v64, "dalla"

    const-string v65, "dalle"

    const-string v66, "di"

    const-string v67, "del"

    const-string v68, "dello"

    const-string v69, "dei"

    const-string v70, "degli"

    const-string v71, "dell"

    const-string v72, "degl"

    const-string v73, "della"

    const-string v74, "delle"

    const-string v75, "in"

    const-string/jumbo v76, "nel"

    const-string/jumbo v77, "nello"

    const-string/jumbo v78, "nei"

    const-string/jumbo v79, "nell"

    const-string/jumbo v80, "negl"

    const-string/jumbo v81, "nella"

    const-string/jumbo v82, "nelle"

    const-string/jumbo v83, "su"

    const-string/jumbo v84, "sul"

    const-string/jumbo v85, "sullo"

    const-string/jumbo v86, "sui"

    const-string/jumbo v87, "sugli"

    const-string/jumbo v88, "sull"

    const-string/jumbo v89, "sugl"

    const-string/jumbo v90, "sulla"

    const-string/jumbo v91, "sulle"

    const-string/jumbo v92, "per"

    const-string v93, "ed"

    const-string v94, "anche"

    const-string/jumbo v95, "non"

    const-string v96, "a"

    const-string v97, "e"

    const-string/jumbo v98, "o"

    filled-new-array/range {v6 .. v98}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "title.prefix.word.list"

    aput-object v3, v2, v4

    const-string v6, "il"

    const-string v7, "lo"

    const-string v8, "la"

    const-string v9, "i"

    const-string v10, "gli"

    const-string v11, "le"

    const-string/jumbo v12, "un"

    const-string/jumbo v13, "uno"

    const-string/jumbo v14, "una"

    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "elision.shorten.article.list"

    aput-object v3, v2, v4

    const-string v6, "l"

    const-string v7, "dell"

    const-string v8, "all"

    const-string v9, "dall"

    const-string/jumbo v10, "nell"

    const-string/jumbo v11, "sull"

    const-string v12, "gl"

    const-string/jumbo v13, "un"

    const-string v14, "c"

    const-string v15, "grand"

    const-string/jumbo v16, "sant"

    const-string/jumbo v17, "pover"

    const-string v18, "bell"

    const-string v19, "buen"

    const-string/jumbo v20, "quell"

    const-string/jumbo v21, "nessun"

    const-string/jumbo v22, "qualcun"

    const-string v23, "ciascun"

    const-string v24, "alcun"

    const-string v25, "d"

    const-string v26, "anch"

    const-string/jumbo v27, "sul"

    const-string/jumbo v28, "sar"

    const-string/jumbo v29, "mi"

    const-string v30, "cos"

    const-string v31, "degl"

    const-string v32, "agl"

    const-string/jumbo v33, "sugl"

    const-string/jumbo v34, "quegl"

    const-string/jumbo v35, "negl"

    const-string v36, "dagl"

    const-string/jumbo v37, "quest"

    const-string/jumbo v38, "su"

    const-string/jumbo v39, "tu"

    const-string/jumbo v40, "vostr"

    const-string/jumbo v41, "nostr"

    const-string/jumbo v42, "lor"

    const-string/jumbo v43, "m"

    const-string/jumbo v44, "t"

    const-string/jumbo v45, "v"

    const-string/jumbo v46, "s"

    const-string v47, "anch"

    const-string/jumbo v48, "senz"

    const-string/jumbo v49, "qualcos"

    const-string v50, "buon"

    const-string v51, "cent"

    filled-new-array/range {v6 .. v51}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "title.prefix.elision.list"

    aput-object v2, v1, v4

    const-string v2, "l"

    const-string/jumbo v3, "un"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_it;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_it;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
