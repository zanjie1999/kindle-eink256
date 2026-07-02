.class public final Lcom/amazon/kcp/review/KfaReviewUtils;
.super Ljava/lang/Object;
.source "KfaReviewUtils.kt"

# interfaces
.implements Lcom/amazon/android/util/ReviewUtils;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKfaReviewUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KfaReviewUtils.kt\ncom/amazon/kcp/review/KfaReviewUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n716#2,10:140\n*E\n*S KotlinDebug\n*F\n+ 1 KfaReviewUtils.kt\ncom/amazon/kcp/review/KfaReviewUtils\n*L\n104#1,10:140\n*E\n"
.end annotation


# instance fields
.field private appOpenRecorded:Ljava/lang/String;

.field private final isAuthenticated$delegate:Lkotlin/Lazy;

.field private final isColdBookOpen$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/amazon/kcp/review/KfaReviewUtils$isColdBookOpen$2;->INSTANCE:Lcom/amazon/kcp/review/KfaReviewUtils$isColdBookOpen$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/review/KfaReviewUtils;->isColdBookOpen$delegate:Lkotlin/Lazy;

    .line 69
    sget-object v0, Lcom/amazon/kcp/review/KfaReviewUtils$isAuthenticated$2;->INSTANCE:Lcom/amazon/kcp/review/KfaReviewUtils$isAuthenticated$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/review/KfaReviewUtils;->isAuthenticated$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final isAuthenticated()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/review/KfaReviewUtils;->isAuthenticated$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final isColdBookOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/review/KfaReviewUtils;->isColdBookOpen$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public showIfNecessary(Lcom/amazon/kcp/redding/ReddingActivity;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v3

    const-string v0, "ReviewManagerFactory.create(activity)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-direct {p0}, Lcom/amazon/kcp/review/KfaReviewUtils;->isAuthenticated()Z

    move-result v5

    invoke-direct {p0}, Lcom/amazon/kcp/review/KfaReviewUtils;->isColdBookOpen()Z

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/review/KfaReviewUtils;->showIfNecessary$StandAlone_kfaRelease(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/google/android/play/core/review/ReviewManager;Ljava/util/Date;ZZ)V

    return-void
.end method

.method public final showIfNecessary$StandAlone_kfaRelease(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/google/android/play/core/review/ReviewManager;Ljava/util/Date;ZZ)V
    .locals 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reviewManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "todaysDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/amazon/kcp/review/KfaReviewUtilsKt;->getOPEN_DATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/amazon/kcp/review/KfaReviewUtils;->appOpenRecorded:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    if-nez p4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 p4, 0x0

    const-string v1, "KINDLE_REVIEW_PREFS"

    .line 92
    invoke-virtual {p1, v1, p4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v3, "DATES_OPENED_KEY"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_0
    const-string v4, "today"

    .line 96
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const-string v5, "cal"

    .line 101
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p3, 0x5

    const/16 v5, -0x1e

    .line 102
    invoke-virtual {v4, p3, v5}, Ljava/util/Calendar;->add(II)V

    .line 103
    invoke-static {}, Lcom/amazon/kcp/review/KfaReviewUtilsKt;->getOPEN_DATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object p3

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    .line 141
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 144
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_3
    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    const-string v9, "countWindow"

    .line 104
    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_2

    .line 146
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_1

    .line 107
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 108
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p4

    invoke-interface {p3, v3, p4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    iput-object v0, p0, Lcom/amazon/kcp/review/KfaReviewUtils;->appOpenRecorded:Ljava/lang/String;

    .line 115
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x3

    if-ge p3, p4, :cond_6

    return-void

    :cond_6
    if-nez p5, :cond_8

    .line 122
    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->isOutOfBookActivity()Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_3

    .line 126
    :cond_7
    invoke-static {}, Lcom/amazon/kcp/review/KfaReviewUtilsKt;->access$getTAG$p()Ljava/lang/String;

    .line 127
    invoke-interface {p2}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/play/core/tasks/Task;

    move-result-object p3

    const-string p4, "reviewManager.requestReviewFlow()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance p4, Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2;

    invoke-direct {p4, p2, p1}, Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2;-><init>(Lcom/google/android/play/core/review/ReviewManager;Lcom/amazon/kcp/redding/ReddingActivity;)V

    invoke-virtual {p3, p4}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    :cond_8
    :goto_3
    return-void
.end method
