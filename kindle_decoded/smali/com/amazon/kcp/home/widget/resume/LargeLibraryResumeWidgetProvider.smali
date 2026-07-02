.class public final Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;
.super Lcom/amazon/kcp/home/widget/resume/BaseResumeWidgetProvider;
.source "LargeLibraryResumeWidgetProvider.kt"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adapter:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;

.field private final dataProvider:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

.field private final repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

.field private resumeWidget:Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 109
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/util/HomeContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/amazon/kcp/home/util/HomeContext;->getFragment()Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;-><init>(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/BaseResumeWidgetProvider;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 79
    invoke-static {}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->largeLibraryRepository()Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    .line 80
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->newDataProvider()Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->dataProvider:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    .line 83
    const-class v0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(this.javaClass)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 87
    new-instance v0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;-><init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;Landroid/app/Activity;)V

    .line 88
    new-instance p1, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$1;-><init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->setOnItemClickListener(Lcom/amazon/kcp/library/FastRecyclerItemClickListener;)V

    .line 95
    new-instance p1, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$2;-><init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->setOnItemLongClickListener(Lcom/amazon/kcp/library/FastRecyclerItemLongClickListener;)V

    .line 102
    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->adapter:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;

    .line 103
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->dataProvider:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->init(Lcom/amazon/kcp/library/FastRecyclerAdapter;)V

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p2, p0}, Lcom/amazon/kcp/library/fragments/RubyHomeFragment;->addHomeVisibilityListener(Lcom/amazon/kcp/library/fragments/RubyHomeFragment$HomeVisibilityListener;)V

    .line 105
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final synthetic access$getDataProvider$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->dataProvider:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    return-object p0
.end method

.method public static final synthetic access$getRepository$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    return-object p0
.end method

.method public static final synthetic access$getResumeWidget$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->resumeWidget:Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;

    return-object p0
.end method

.method private final newDataProvider()Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;
    .locals 25

    move-object/from16 v0, p0

    .line 112
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getOWNERSHIPS()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 113
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getREADING_PROGRESSES()Ljava/util/Set;

    move-result-object v2

    .line 114
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v5

    .line 115
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v6

    .line 116
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v7

    .line 117
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v4

    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/Integer;

    const/4 v13, 0x4

    .line 118
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v14, 0x0

    aput-object v9, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v15, 0x1

    aput-object v9, v8, v15

    invoke-static {v8}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    .line 119
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v16

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 121
    new-instance v24, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    iget-object v12, v0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v9

    const-string v10, "Utils.getFactory()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v9

    const-string v10, "Utils.getFactory().authenticationManager"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v9

    const-string v10, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v11

    const-string v9, "Utils.getFactory().authe\u2026ionManager.accountInfo.id"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v19, v11

    move/from16 v11, v17

    move-object/from16 v20, v12

    move-object/from16 v12, v18

    .line 122
    invoke-static/range {v7 .. v12}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v12

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object/from16 v7, v16

    move-object v8, v1

    .line 123
    invoke-static/range {v2 .. v11}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelFilterWithArguments$default(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ModelFilter;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v21

    const/4 v1, 0x0

    .line 124
    invoke-static {v14, v15, v1, v13, v1}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelSortingWithArguments$default(IILcom/amazon/kindle/observablemodel/ModelSorting;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object v22

    .line 125
    new-instance v1, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newDataProvider$1;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newDataProvider$1;-><init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)V

    move-object/from16 v17, v24

    move-object/from16 v18, v20

    move-object/from16 v20, v12

    move-object/from16 v23, v1

    .line 121
    invoke-direct/range {v17 .. v23}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;Lcom/amazon/kcp/home/widget/resume/ItemsCountChangedListener;)V

    return-object v24
.end method

.method private final resetScrollIfBooksChanged()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->resumeWidget:Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->dataProvider:Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->getAndResetBooksChangedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$resetScrollIfBooksChanged$1$1;

    invoke-direct {v2, v0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$resetScrollIfBooksChanged$1$1;-><init>(Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->getAdapter()Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->adapter:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;

    return-object v0
.end method

.method public getUserItemsCount()I
    .locals 2

    .line 203
    invoke-static {}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getInstance()Lcom/amazon/kcp/library/CounterManagerSingleton;

    move-result-object v0

    const-string v1, "ALL_ITEMS"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getCounter(Ljava/lang/String;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public isEnabled(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)Z
    .locals 1

    const-string/jumbo v0, "weblabManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryResumeCardEnabled()Z

    move-result p1

    return p1
.end method

.method protected newResumeWidget()Lcom/amazon/kindle/home/card/HomeCard;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->resumeWidget:Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;

    if-eqz v0, :cond_0

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;

    const/16 v1, -0x64

    invoke-direct {v0, p0, v1, p0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;-><init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;ILcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;)V

    .line 186
    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->resumeWidget:Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;

    return-object v0
.end method

.method public final onHomeActivatedEvent(Lcom/amazon/kindle/event/HomeActivatedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->refreshAccessDates()V

    return-void
.end method

.method public onHomeDisplayed()V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->resetScrollIfBooksChanged()V

    return-void
.end method

.method public onHomeHidden()V
    .locals 0

    return-void
.end method

.method public final onResumeShovelerBooksChangedEvent(Lcom/amazon/kcp/library/fragments/ResumeShovelerBooksChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->resetScrollIfBooksChanged()V

    return-void
.end method
