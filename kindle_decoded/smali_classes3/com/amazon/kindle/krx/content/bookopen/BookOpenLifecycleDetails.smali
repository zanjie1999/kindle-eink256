.class public final Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;
.super Ljava/lang/Object;
.source "BookOpenLifecycleDetails.kt"


# instance fields
.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private final bookFrom:Lcom/amazon/kindle/model/content/ILocalBookInfo;

.field private final clientId:Ljava/lang/String;

.field private final openEventTimes:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

.field private final pattern:Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;

.field private final shouldAwaitMRPR:Z

.field private final sourceActivity:Landroid/app/Activity;

.field private final startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

.field private state:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;ZLcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kcp/reader/IReaderController$StartPage;)V
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceActivity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openEventTimes"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->book:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->pattern:Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;

    iput-object p3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->sourceActivity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->clientId:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->view:Landroid/view/View;

    iput-boolean p6, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->shouldAwaitMRPR:Z

    iput-object p7, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->openEventTimes:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    iput-object p8, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->bookFrom:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    iput-object p9, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    .line 24
    sget-object p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->ENTRY_POINT:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->state:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;ZLcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kcp/reader/IReaderController$StartPage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p8

    :goto_0
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 23
    invoke-direct/range {v3 .. v12}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;-><init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;ZLcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kcp/reader/IReaderController$StartPage;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;ZLcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kcp/reader/IReaderController$StartPage;ILjava/lang/Object;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->book:Lcom/amazon/kindle/krx/content/IBook;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->pattern:Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->sourceActivity:Landroid/app/Activity;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->clientId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->view:Landroid/view/View;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->shouldAwaitMRPR:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->openEventTimes:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->bookFrom:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->copy(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;ZLcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kcp/reader/IReaderController$StartPage;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public final component2()Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->pattern:Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;

    return-object v0
.end method

.method public final component3()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->sourceActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->view:Landroid/view/View;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->shouldAwaitMRPR:Z

    return v0
.end method

.method public final component7()Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->openEventTimes:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    return-object v0
.end method

.method public final component8()Lcom/amazon/kindle/model/content/ILocalBookInfo;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->bookFrom:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    return-object v0
.end method

.method public final component9()Lcom/amazon/kcp/reader/IReaderController$StartPage;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    return-object v0
.end method

.method public final copy(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;ZLcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kcp/reader/IReaderController$StartPage;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;
    .locals 11

    const-string v0, "book"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceActivity"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openEventTimes"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    move-object v1, v0

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;-><init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;ZLcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kcp/reader/IReaderController$StartPage;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->book:Lcom/amazon/kindle/krx/content/IBook;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->pattern:Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->pattern:Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->sourceActivity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->sourceActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->clientId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->clientId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->view:Landroid/view/View;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->view:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->shouldAwaitMRPR:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->shouldAwaitMRPR:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->openEventTimes:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->openEventTimes:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->bookFrom:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    iget-object v1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->bookFrom:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    iget-object p1, p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method public final getBookFrom()Lcom/amazon/kindle/model/content/ILocalBookInfo;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->bookFrom:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpenEventTimes()Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->openEventTimes:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    return-object v0
.end method

.method public final getPattern()Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->pattern:Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;

    return-object v0
.end method

.method public final getShouldAwaitMRPR()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->shouldAwaitMRPR:Z

    return v0
.end method

.method public final getSourceActivity()Landroid/app/Activity;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->sourceActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getStartPage()Lcom/amazon/kcp/reader/IReaderController$StartPage;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    return-object v0
.end method

.method public final getState()Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->state:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->view:Landroid/view/View;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->book:Lcom/amazon/kindle/krx/content/IBook;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->pattern:Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->sourceActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->clientId:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->view:Landroid/view/View;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->shouldAwaitMRPR:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->openEventTimes:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->bookFrom:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final nextStep()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->state:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    sget-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 34
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->ENTRY_POINT:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 33
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->READER_OPEN:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    goto :goto_0

    .line 32
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->SPLASH_SCREEN:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    goto :goto_0

    .line 31
    :cond_3
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->DOWNLOAD:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    .line 30
    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->state:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    return-void
.end method

.method public final setState(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->state:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookOpenLifecycleDetails(book="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->pattern:Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->sourceActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldAwaitMRPR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->shouldAwaitMRPR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", openEventTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->openEventTimes:Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bookFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->bookFrom:Lcom/amazon/kindle/model/content/ILocalBookInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->startPage:Lcom/amazon/kcp/reader/IReaderController$StartPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
