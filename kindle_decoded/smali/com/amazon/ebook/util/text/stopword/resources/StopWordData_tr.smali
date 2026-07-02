.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_tr;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 120

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

    const-string v6, "acaba"

    const-string v7, "altm\u00fd\u00fe"

    const-string v8, "alt\u00fd"

    const-string v9, "ama"

    const-string v10, "bana"

    const-string v11, "baz\u00fd"

    const-string v12, "belki"

    const-string v13, "ben"

    const-string v14, "benden"

    const-string v15, "beni"

    const-string v16, "benim"

    const-string v17, "be\u00fe"

    const-string v18, "bin"

    const-string v19, "bir"

    const-string v20, "biri"

    const-string v21, "birka\u00e7"

    const-string v22, "birkez"

    const-string v23, "bir\u00feey"

    const-string v24, "bir\u00feeyi"

    const-string v25, "biz"

    const-string v26, "bizden"

    const-string v27, "bizi"

    const-string v28, "bizim"

    const-string v29, "bu"

    const-string v30, "buna"

    const-string v31, "bunda"

    const-string v32, "bundan"

    const-string v33, "bunu"

    const-string v34, "bunun"

    const-string v35, "da"

    const-string v36, "daha"

    const-string v37, "dahi"

    const-string v38, "de"

    const-string v39, "defa"

    const-string v40, "diye"

    const-string v41, "doksan"

    const-string v42, "dokuz"

    const-string v43, "d\u00f6rt"

    const-string v44, "elli"

    const-string v45, "en"

    const-string v46, "gibi"

    const-string v47, "hem"

    const-string v48, "hep"

    const-string v49, "hepsi"

    const-string v50, "her"

    const-string v51, "hi\u00e7"

    const-string v52, "iki"

    const-string v53, "ile"

    const-string v54, "INSERmi"

    const-string v55, "ise"

    const-string v56, "i\u00e7in"

    const-string v57, "katrilyon"

    const-string v58, "kez"

    const-string v59, "ki"

    const-string v60, "kim"

    const-string v61, "kimden"

    const-string v62, "kime"

    const-string v63, "kimi"

    const-string v64, "k\u00fdrk"

    const-string/jumbo v65, "milyar"

    const-string/jumbo v66, "milyon"

    const-string/jumbo v67, "mu"

    const-string/jumbo v68, "m\u00fc"

    const-string/jumbo v69, "m\u00fd"

    const-string/jumbo v70, "nas\u00fdl"

    const-string/jumbo v71, "ne"

    const-string/jumbo v72, "neden"

    const-string/jumbo v73, "nerde"

    const-string/jumbo v74, "nerede"

    const-string/jumbo v75, "nereye"

    const-string/jumbo v76, "niye"

    const-string/jumbo v77, "ni\u00e7in"

    const-string/jumbo v78, "on"

    const-string/jumbo v79, "ona"

    const-string/jumbo v80, "ondan"

    const-string/jumbo v81, "onlar"

    const-string/jumbo v82, "onlardan"

    const-string/jumbo v83, "onlari"

    const-string/jumbo v84, "onlar\u00fdn"

    const-string/jumbo v85, "onu"

    const-string/jumbo v86, "otuz"

    const-string/jumbo v87, "sanki"

    const-string/jumbo v88, "sekiz"

    const-string/jumbo v89, "seksen"

    const-string/jumbo v90, "sen"

    const-string/jumbo v91, "senden"

    const-string/jumbo v92, "seni"

    const-string/jumbo v93, "senin"

    const-string/jumbo v94, "siz"

    const-string/jumbo v95, "sizden"

    const-string/jumbo v96, "sizi"

    const-string/jumbo v97, "sizin"

    const-string/jumbo v98, "trilyon"

    const-string/jumbo v99, "t\u00fcm"

    const-string/jumbo v100, "ve"

    const-string/jumbo v101, "veya"

    const-string/jumbo v102, "ya"

    const-string/jumbo v103, "yani"

    const-string/jumbo v104, "yedi"

    const-string/jumbo v105, "yetmi\u00fe"

    const-string/jumbo v106, "yirmi"

    const-string/jumbo v107, "y\u00fcz"

    const-string/jumbo v108, "\u00e7ok"

    const-string/jumbo v109, "\u00e7\u00fcnk\u00fc"

    const-string/jumbo v110, "\u00fc\u00e7"

    const-string/jumbo v111, "\u00feey"

    const-string/jumbo v112, "\u00feeyden"

    const-string/jumbo v113, "\u00feeyi"

    const-string/jumbo v114, "\u00feeyler"

    const-string/jumbo v115, "\u00feu"

    const-string/jumbo v116, "\u00feuna"

    const-string/jumbo v117, "\u00feunda"

    const-string/jumbo v118, "\u00feundan"

    const-string/jumbo v119, "\u00feunu"

    filled-new-array/range {v6 .. v119}, [Ljava/lang/String;

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

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_tr;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_tr;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
