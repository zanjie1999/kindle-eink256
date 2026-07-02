.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_de;
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

    const-string v6, "der"

    const-string v7, "die"

    const-string v8, "das"

    const-string v9, "des"

    const-string v10, "dem"

    const-string v11, "den"

    const-string v12, "ein"

    const-string v13, "eine"

    const-string v14, "einer"

    const-string v15, "einem"

    const-string v16, "einen"

    const-string v17, "dies"

    const-string v18, "diese"

    const-string v19, "diesem"

    const-string v20, "diesem"

    const-string v21, "diesen"

    const-string v22, "dieser"

    const-string v23, "dieses"

    const-string v24, "ich"

    const-string v25, "du"

    const-string v26, "er"

    const-string/jumbo v27, "sie"

    const-string v28, "es"

    const-string/jumbo v29, "wir"

    const-string v30, "ihr"

    const-string/jumbo v31, "sie"

    const-string v32, "Sie"

    const-string v33, "als"

    const-string v34, "an"

    const-string v35, "ans"

    const-string v36, "auch"

    const-string v37, "auf"

    const-string v38, "aufs"

    const-string v39, "aus"

    const-string v40, "bei"

    const-string v41, "fuer"

    const-string v42, "f\u00fcr"

    const-string/jumbo v43, "nicht"

    const-string/jumbo v44, "nur"

    const-string/jumbo v45, "oder"

    const-string/jumbo v46, "so"

    const-string/jumbo v47, "und"

    const-string/jumbo v48, "um"

    const-string/jumbo v49, "ums"

    const-string/jumbo v50, "vom"

    const-string/jumbo v51, "von"

    const-string v52, "in"

    const-string v53, "im"

    filled-new-array/range {v6 .. v53}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "title.prefix.word.list"

    aput-object v3, v2, v4

    const-string v6, "der"

    const-string v7, "die"

    const-string v8, "das"

    const-string v9, "des"

    const-string v10, "dem"

    const-string v11, "den"

    const-string v12, "ein"

    const-string v13, "eine"

    const-string v14, "einer"

    const-string v15, "einem"

    const-string v16, "einen"

    const-string v17, "eines"

    filled-new-array/range {v6 .. v17}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_de;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_de;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
