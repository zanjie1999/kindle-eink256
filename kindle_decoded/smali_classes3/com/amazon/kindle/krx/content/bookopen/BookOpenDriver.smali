.class public final Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;
.super Ljava/lang/Object;
.source "BookOpenDriver.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBookOpenDriver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookOpenDriver.kt\ncom/amazon/kindle/krx/content/bookopen/BookOpenDriver\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n1819#2,2:156\n1819#2,2:158\n*E\n*S KotlinDebug\n*F\n+ 1 BookOpenDriver.kt\ncom/amazon/kindle/krx/content/bookopen/BookOpenDriver\n*L\n33#1,2:156\n55#1,2:158\n*E\n"
.end annotation


# instance fields
.field private final lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

.field private final openActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
    .locals 1

    const-string v0, "lifecycleDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "openActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    iput-object p2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->openActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    return-void
.end method

.method public static final synthetic access$getOpenActivity$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->openActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    return-object p0
.end method

.method private final createOpenBookIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/model/content/ILocalBookInfo;)Landroid/content/Intent;
    .locals 3

    .line 133
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriverKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating book open intent for book: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    invoke-static {p2, p1}, Lcom/amazon/kcp/util/Utils;->shouldClosePreviousBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getStartPage()Lcom/amazon/kcp/reader/IReaderController$StartPage;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    :goto_0
    const-string v2, "Utils.getFactory()"

    if-eqz p2, :cond_1

    .line 141
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result p2

    if-nez p2, :cond_1

    .line 142
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {p2, p1, v1, v0, v2}, Lcom/amazon/kcp/reader/IReaderController;->prepareOpenReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLandroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_1

    .line 145
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p2

    .line 146
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getSourceActivity()Landroid/app/Activity;

    move-result-object v2

    .line 145
    invoke-interface {p2, p1, v1, v0, v2}, Lcom/amazon/kcp/reader/IReaderController;->prepareOpenReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLandroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_2

    .line 150
    sget p2, Lcom/amazon/kindle/krl/R$anim;->activity_fade_out:I

    const-string v0, "BookCloseAnimationId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    return-object p1
.end method

.method private final executeAction()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getState()Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver$WhenMappings;->$EnumSwitchMapping$0:[I

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

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->performReaderOpenAction()V

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->performSplashScreenAction()V

    goto :goto_0

    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->performDownloadAction()V

    goto :goto_0

    .line 66
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->performEntryPointAction()V

    :goto_0
    return-void
.end method

.method private final performDownloadAction()V
    .locals 4

    .line 86
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    const-string v2, "Utils.getFactory().libraryService"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriverKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download action executed for book: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with content state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 90
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v2, v3, :cond_3

    .line 92
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    :cond_1
    new-instance v2, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$ONE_TAP;

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$ONE_TAP;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/services/download/IDownloadService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->completeAction$krxsdk_release()V

    return-void

    .line 100
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to download book for ASIN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->openActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void

    .line 105
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->completeAction$krxsdk_release()V

    return-void
.end method

.method private final performEntryPointAction()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriverKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry point action execution for book: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->completeAction$krxsdk_release()V

    return-void
.end method

.method private final performReaderOpenAction()V
    .locals 4

    .line 116
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriverKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reader open action executed for book: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v2, "Utils.getFactory()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    const-string v3, "localBook"

    .line 118
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBookFrom()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->createOpenBookIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/model/content/ILocalBookInfo;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 120
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getSourceActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v0, v2, v3}, Lcom/amazon/kcp/reader/IReaderController;->openReaderByIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->completeAction$krxsdk_release()V

    return-void

    .line 125
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriverKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open book for ASIN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", contentType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->openActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method private final performSplashScreenAction()V
    .locals 2

    .line 109
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriverKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Splash screen action executed for book: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver$performSplashScreenAction$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver$performSplashScreenAction$1;-><init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final completeAction$krxsdk_release()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getState()Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriverKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " completed for book: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getPattern()Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;->getTransitioner(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;->getMetrics()Ljava/util/List;

    move-result-object v1

    .line 54
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriverKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running metrics for book: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;

    .line 56
    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;->emitMetrics(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->openActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->completeState$krxsdk_release()V

    return-void
.end method

.method public final executeStep$krxsdk_release()V
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getState()Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getPattern()Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;->getTransitioner(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateTransitioner;->getValidation()Ljava/util/List;

    move-result-object v1

    .line 32
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriverKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running validation for book: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;

    .line 34
    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->lifecycleDetails:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;->performValidation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->openActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->handleValidationFailure$krxsdk_release(Lcom/amazon/kindle/krx/content/bookopen/ValidationFailureDetails;)V

    return-void

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->executeAction()V

    return-void
.end method
