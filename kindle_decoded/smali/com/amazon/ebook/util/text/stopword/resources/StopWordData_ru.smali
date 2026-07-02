.class public Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_ru;
.super Ljava/util/ListResourceBundle;


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 165

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

    const-string/jumbo v6, "\u0438"

    const-string/jumbo v7, "\u0432"

    const-string/jumbo v8, "\u0432\u043e"

    const-string/jumbo v9, "\u043d\u0435"

    const-string/jumbo v10, "\u0447\u0442\u043e"

    const-string/jumbo v11, "\u043e\u043d"

    const-string/jumbo v12, "\u043d\u0430"

    const-string/jumbo v13, "\u044f"

    const-string/jumbo v14, "\u0441"

    const-string/jumbo v15, "\u0441\u043e"

    const-string/jumbo v16, "\u043a\u0430\u043a"

    const-string/jumbo v17, "\u0430"

    const-string/jumbo v18, "\u0442\u043e"

    const-string/jumbo v19, "\u0432\u0441\u0435"

    const-string/jumbo v20, "\u043e\u043d\u0430"

    const-string/jumbo v21, "\u0442\u0430\u043a"

    const-string/jumbo v22, "\u0435\u0433\u043e"

    const-string/jumbo v23, "\u043d\u043e"

    const-string/jumbo v24, "\u0434\u0430"

    const-string/jumbo v25, "\u0442\u044b"

    const-string/jumbo v26, "\u043a"

    const-string/jumbo v27, "\u0443"

    const-string/jumbo v28, "\u0436\u0435"

    const-string/jumbo v29, "\u0432\u044b"

    const-string/jumbo v30, "\u0437\u0430"

    const-string/jumbo v31, "\u0431\u044b"

    const-string/jumbo v32, "\u043f\u043e"

    const-string/jumbo v33, "\u0442\u043e\u043b\u044c\u043a\u043e"

    const-string/jumbo v34, "\u0435\u0435"

    const-string/jumbo v35, "\u043c\u043d\u0435"

    const-string/jumbo v36, "\u0431\u044b\u043b\u043e"

    const-string/jumbo v37, "\u0432\u043e\u0442"

    const-string/jumbo v38, "\u043e\u0442"

    const-string/jumbo v39, "\u043c\u0435\u043d\u044f"

    const-string/jumbo v40, "\u0435\u0449\u0435"

    const-string/jumbo v41, "\u043d\u0435\u0442"

    const-string/jumbo v42, "\u043e"

    const-string/jumbo v43, "\u0438\u0437"

    const-string/jumbo v44, "\u0435\u043c\u0443"

    const-string/jumbo v45, "\u0442\u0435\u043f\u0435\u0440\u044c"

    const-string/jumbo v46, "\u043a\u043e\u0433\u0434\u0430"

    const-string/jumbo v47, "\u0434\u0430\u0436\u0435"

    const-string/jumbo v48, "\u043d\u0443"

    const-string/jumbo v49, "\u0432\u0434\u0440\u0443\u0433"

    const-string/jumbo v50, "\u043b\u0438"

    const-string/jumbo v51, "\u0435\u0441\u043b\u0438"

    const-string/jumbo v52, "\u0443\u0436\u0435"

    const-string/jumbo v53, "\u0438\u043b\u0438"

    const-string/jumbo v54, "\u043d\u0438"

    const-string/jumbo v55, "\u0431\u044b\u0442\u044c"

    const-string/jumbo v56, "\u0431\u044b\u043b"

    const-string/jumbo v57, "\u043d\u0435\u0433\u043e"

    const-string/jumbo v58, "\u0434\u043e"

    const-string/jumbo v59, "\u0432\u0430\u0441"

    const-string/jumbo v60, "\u043d\u0438\u0431\u0443\u0434\u044c"

    const-string/jumbo v61, "\u043e\u043f\u044f\u0442\u044c"

    const-string/jumbo v62, "\u0443\u0436"

    const-string/jumbo v63, "\u0432\u0430\u043c"

    const-string/jumbo v64, "\u0441\u043a\u0430\u0437\u0430\u043b"

    const-string/jumbo v65, "\u0432\u0435\u0434\u044c"

    const-string/jumbo v66, "\u0442\u0430\u043c"

    const-string/jumbo v67, "\u043f\u043e\u0442\u043e\u043c"

    const-string/jumbo v68, "\u0441\u0435\u0431\u044f"

    const-string/jumbo v69, "\u043d\u0438\u0447\u0435\u0433\u043e"

    const-string/jumbo v70, "\u0435\u0439"

    const-string/jumbo v71, "\u043c\u043e\u0436\u0435\u0442"

    const-string/jumbo v72, "\u043e\u043d\u0438"

    const-string/jumbo v73, "\u0442\u0443\u0442"

    const-string/jumbo v74, "\u0433\u0434\u0435"

    const-string/jumbo v75, "\u0435\u0441\u0442\u044c"

    const-string/jumbo v76, "\u043d\u0430\u0434\u043e"

    const-string/jumbo v77, "\u043d\u0435\u0439"

    const-string/jumbo v78, "\u0434\u043b\u044f"

    const-string/jumbo v79, "\u043c\u044b"

    const-string/jumbo v80, "\u0442\u0435\u0431\u044f"

    const-string/jumbo v81, "\u0438\u0445"

    const-string/jumbo v82, "\u0447\u0435\u043c"

    const-string/jumbo v83, "\u0431\u044b\u043b\u0430"

    const-string/jumbo v84, "\u0441\u0430\u043c"

    const-string/jumbo v85, "\u0447\u0442\u043e\u0431"

    const-string/jumbo v86, "\u0431\u0435\u0437"

    const-string/jumbo v87, "\u0431\u0443\u0434\u0442\u043e"

    const-string/jumbo v88, "\u0447\u0435\u043b\u043e\u0432\u0435\u043a"

    const-string/jumbo v89, "\u0447\u0435\u0433\u043e"

    const-string/jumbo v90, "\u0440\u0430\u0437"

    const-string/jumbo v91, "\u0442\u043e\u0436\u0435"

    const-string/jumbo v92, "\u0441\u0435\u0431\u0435"

    const-string/jumbo v93, "\u043f\u043e\u0434"

    const-string/jumbo v94, "\u0436\u0438\u0437\u043d\u044c"

    const-string/jumbo v95, "\u0431\u0443\u0434\u0435\u0442"

    const-string/jumbo v96, "\u0436"

    const-string/jumbo v97, "\u0442\u043e\u0433\u0434\u0430"

    const-string/jumbo v98, "\u043a\u0442\u043e"

    const-string/jumbo v99, "\u044d\u0442\u043e\u0442"

    const-string/jumbo v100, "\u0433\u043e\u0432\u043e\u0440\u0438\u043b"

    const-string/jumbo v101, "\u0442\u043e\u0433\u043e"

    const-string/jumbo v102, "\u043f\u043e\u0442\u043e\u043c\u0443"

    const-string/jumbo v103, "\u044d\u0442\u043e\u0433\u043e"

    const-string/jumbo v104, "\u043a\u0430\u043a\u043e\u0439"

    const-string/jumbo v105, "\u0441\u043e\u0432\u0441\u0435\u043c"

    const-string/jumbo v106, "\u043d\u0438\u043c"

    const-string/jumbo v107, "\u0437\u0434\u0435\u0441\u044c"

    const-string/jumbo v108, "\u044d\u0442\u043e\u043c"

    const-string/jumbo v109, "\u043e\u0434\u0438\u043d"

    const-string/jumbo v110, "\u043f\u043e\u0447\u0442\u0438"

    const-string/jumbo v111, "\u043c\u043e\u0439"

    const-string/jumbo v112, "\u0442\u0435\u043c"

    const-string/jumbo v113, "\u0447\u0442\u043e\u0431\u044b"

    const-string/jumbo v114, "\u043d\u0435\u0435"

    const-string/jumbo v115, "\u043a\u0430\u0436\u0435\u0442\u0441\u044f"

    const-string/jumbo v116, "\u0441\u0435\u0439\u0447\u0430\u0441"

    const-string/jumbo v117, "\u0431\u044b\u043b\u0438"

    const-string/jumbo v118, "\u043a\u0443\u0434\u0430"

    const-string/jumbo v119, "\u0437\u0430\u0447\u0435\u043c"

    const-string/jumbo v120, "\u0441\u043a\u0430\u0437\u0430\u0442\u044c"

    const-string/jumbo v121, "\u0432\u0441\u0435\u0445"

    const-string/jumbo v122, "\u043d\u0438\u043a\u043e\u0433\u0434\u0430"

    const-string/jumbo v123, "\u0441\u0435\u0433\u043e\u0434\u043d\u044f"

    const-string/jumbo v124, "\u043c\u043e\u0436\u043d\u043e"

    const-string/jumbo v125, "\u043f\u0440\u0438"

    const-string/jumbo v126, "\u043d\u0430\u043a\u043e\u043d\u0435\u0446"

    const-string/jumbo v127, "\u0434\u0432\u0430"

    const-string/jumbo v128, "\u043e\u0431"

    const-string/jumbo v129, "\u0434\u0440\u0443\u0433\u043e\u0439"

    const-string/jumbo v130, "\u0445\u043e\u0442\u044c"

    const-string/jumbo v131, "\u043f\u043e\u0441\u043b\u0435"

    const-string/jumbo v132, "\u043d\u0430\u0434"

    const-string/jumbo v133, "\u0431\u043e\u043b\u044c\u0448\u0435"

    const-string/jumbo v134, "\u0442\u043e\u0442"

    const-string/jumbo v135, "\u0447\u0435\u0440\u0435\u0437"

    const-string/jumbo v136, "\u044d\u0442\u0438"

    const-string/jumbo v137, "\u043d\u0430\u0441"

    const-string/jumbo v138, "\u043f\u0440\u043e"

    const-string/jumbo v139, "\u0432\u0441\u0435\u0433\u043e"

    const-string/jumbo v140, "\u043d\u0438\u0445"

    const-string/jumbo v141, "\u043a\u0430\u043a\u0430\u044f"

    const-string/jumbo v142, "\u043c\u043d\u043e\u0433\u043e"

    const-string/jumbo v143, "\u0440\u0430\u0437\u0432\u0435"

    const-string/jumbo v144, "\u0441\u043a\u0430\u0437\u0430\u043b\u0430"

    const-string/jumbo v145, "\u0442\u0440\u0438"

    const-string/jumbo v146, "\u044d\u0442\u0443"

    const-string/jumbo v147, "\u043c\u043e\u044f"

    const-string/jumbo v148, "\u0432\u043f\u0440\u043e\u0447\u0435\u043c"

    const-string/jumbo v149, "\u0445\u043e\u0440\u043e\u0448\u043e"

    const-string/jumbo v150, "\u0441\u0432\u043e\u044e"

    const-string/jumbo v151, "\u044d\u0442\u043e\u0439"

    const-string/jumbo v152, "\u043f\u0435\u0440\u0435\u0434"

    const-string/jumbo v153, "\u0438\u043d\u043e\u0433\u0434\u0430"

    const-string/jumbo v154, "\u043b\u0443\u0447\u0448\u0435"

    const-string/jumbo v155, "\u0447\u0443\u0442\u044c"

    const-string/jumbo v156, "\u0442\u043e\u043c"

    const-string/jumbo v157, "\u043d\u0435\u043b\u044c\u0437\u044f"

    const-string/jumbo v158, "\u0442\u0430\u043a\u043e\u0439"

    const-string/jumbo v159, "\u0438\u043c"

    const-string/jumbo v160, "\u0431\u043e\u043b\u0435\u0435"

    const-string/jumbo v161, "\u0432\u0441\u0435\u0433\u0434\u0430"

    const-string/jumbo v162, "\u043a\u043e\u043d\u0435\u0447\u043d\u043e"

    const-string/jumbo v163, "\u0432\u0441\u044e"

    const-string/jumbo v164, "\u043c\u0435\u0436\u0434\u0443"

    filled-new-array/range {v6 .. v164}, [Ljava/lang/String;

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

    sput-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_ru;->contents:[[Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/ebook/util/text/stopword/resources/StopWordData_ru;->contents:[[Ljava/lang/Object;

    return-object v0
.end method
