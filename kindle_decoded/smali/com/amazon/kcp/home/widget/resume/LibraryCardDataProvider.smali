.class public final Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;
.super Ljava/lang/Object;
.source "LibraryCardDataProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryCardDataProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryCardDataProvider.kt\ncom/amazon/kcp/home/widget/resume/LibraryCardDataProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,327:1\n734#2:328\n825#2,2:329\n318#2,7:331\n1571#2,9:338\n1819#2:347\n1820#2:349\n1580#2:350\n1571#2,9:351\n1819#2:360\n1820#2:362\n1580#2:363\n1711#2,3:364\n1#3:348\n1#3:361\n*E\n*S KotlinDebug\n*F\n+ 1 LibraryCardDataProvider.kt\ncom/amazon/kcp/home/widget/resume/LibraryCardDataProvider\n*L\n123#1:328\n123#1,2:329\n219#1,7:331\n279#1,9:338\n279#1:347\n279#1:349\n279#1:350\n280#1,9:351\n280#1:360\n280#1:362\n280#1:363\n314#1,3:364\n279#1:348\n280#1:361\n*E\n"
.end annotation


# static fields
.field private static final resumeBooksComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private final dataChangedCallback:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/callback/ResumeWidgetResult;",
            ">;"
        }
    .end annotation
.end field

.field private final filter:Lcom/amazon/kcp/library/LibraryContentFilter;

.field private final groupService$delegate:Lkotlin/Lazy;

.field private isInitialized:Z

.field private final libraryService$delegate:Lkotlin/Lazy;

.field private final maxSize:I

.field private final messageQueue$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 318
    new-instance v0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$Companion$resumeBooksComparator$1;

    invoke-direct {v0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$Companion$resumeBooksComparator$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->resumeBooksComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(ILcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/callback/ResumeWidgetResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataChangedCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->maxSize:I

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->dataChangedCallback:Lcom/amazon/kindle/callback/ICallback;

    .line 62
    sget-object p1, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$messageQueue$2;->INSTANCE:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$messageQueue$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->messageQueue$delegate:Lkotlin/Lazy;

    .line 66
    sget-object p1, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$libraryService$2;->INSTANCE:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$libraryService$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->libraryService$delegate:Lkotlin/Lazy;

    .line 70
    sget-object p1, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$groupService$2;->INSTANCE:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$groupService$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->groupService$delegate:Lkotlin/Lazy;

    .line 75
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 78
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$booksNotEqual(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/List;)Z
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->booksNotEqual(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCurrentBooks$p(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static final synthetic access$getFilter$p(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;)Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    return-object p0
.end method

.method public static final synthetic access$getLibraryService$p(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMaxSize$p(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->maxSize:I

    return p0
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCurrentBooks$p(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private final booksNotEqual(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)Z"
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 346
    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const-string v3, "it"

    .line 279
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_0

    .line 346
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 359
    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 280
    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 359
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 281
    :cond_5
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final getGroupService()Lcom/amazon/kindle/content/IGroupService;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->groupService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/IGroupService;

    return-object v0
.end method

.method private final getLibraryService()Lcom/amazon/kindle/content/ILibraryService;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->libraryService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ILibraryService;

    return-object v0
.end method

.method private final getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->messageQueue$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method private final insertItem(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 247
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->shouldStayInResume(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 252
    sget-object v3, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->resumeBooksComparator:Ljava/util/Comparator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;IIILjava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    rsub-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, -0x1

    .line 257
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[insertItem] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 260
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->maxSize:I

    if-le p1, v0, :cond_2

    .line 261
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private final isItemInList(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)Z"
        }
    .end annotation

    .line 313
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    const-string/jumbo v0, "metadata.bookID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "metadata.bookID.serializedForm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 314
    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    const-string v2, "it.bookID"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private final lastAccessChangedForExistingItem(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentUpdate;Z)Z
    .locals 0

    .line 289
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->shouldStayInResume(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 291
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic loadDataFromDb$default(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->loadDataFromDb(Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;)V

    return-void
.end method

.method private final shouldIgnoreEvent(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 303
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    const-string/jumbo v1, "metadata.bookID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[shouldIgnoreEvent] FALSE bookId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final shouldPublishUpdateEvent(ZLcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;Lcom/amazon/kindle/content/ContentUpdate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ")Z"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0, v0, p3}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->booksNotEqual(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-direct {p0, p2, p4, p1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->lastAccessChangedForExistingItem(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentUpdate;Z)Z

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

.method private final shouldRemoveFromHome(Lcom/amazon/kindle/content/ContentMetadata;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 295
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->shouldStayInResume(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final shouldStayInResume(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    .line 299
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->hasUserContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsInCarousel()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final getBooks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->isInitialized:Z

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$getBooks$1;

    invoke-direct {v0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$getBooks$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->loadDataFromDb(Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;)V

    .line 120
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const-string v4, "it"

    .line 125
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const-string v5, "KindleUserGuide"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getIsHidden()Z

    move-result v3

    if-eq v3, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_2
    if-eqz v5, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->isInitialized:Z

    return v0
.end method

.method public final loadDataFromDb(Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;-><init>(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final declared-synchronized onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 134
    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 135
    invoke-static {p0, v0, p1, v0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->loadDataFromDb$default(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;ILjava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->dataChangedCallback:Lcom/amazon/kindle/callback/ICallback;

    new-instance v1, Lcom/amazon/kindle/callback/OperationResult;

    new-instance v2, Lcom/amazon/kcp/callback/ResumeWidgetResult;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/amazon/kcp/callback/ResumeWidgetResult;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Z)V

    invoke-direct {v1, v2}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onContentAdd(Lcom/amazon/kindle/content/LibraryContentAddPayload;)V
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_ADD"
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "adds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v0

    const-string v1, "Utils.getFactory().accountProvider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    .line 151
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/LibraryContentAddPayload;->getMetadata()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v3, :cond_1

    .line 152
    invoke-direct {p0, v3}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->shouldIgnoreEvent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 156
    :cond_2
    iget-object v5, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CONTENT_ADD_TOPIC] metadata="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-eq v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 159
    :goto_2
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    .line 160
    invoke-direct {p0, v3, v5}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->isItemInList(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 161
    invoke-direct {p0, v3, v5}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->insertItem(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;)V

    if-nez v2, :cond_5

    .line 162
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0, v2, v5}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->booksNotEqual(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v2, 0x1

    .line 165
    :cond_6
    :goto_4
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 166
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->dataChangedCallback:Lcom/amazon/kindle/callback/ICallback;

    new-instance v5, Lcom/amazon/kindle/callback/OperationResult;

    new-instance v6, Lcom/amazon/kcp/callback/ResumeWidgetResult;

    invoke-direct {v6, v3, v1}, Lcom/amazon/kcp/callback/ResumeWidgetResult;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Z)V

    invoke-direct {v5, v6}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    .line 170
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;

    invoke-direct {v0, v4}, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "deletes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CONTENT_DELETE_TOPIC] size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CONTENT_DELETE_TOPIC] onContentDelete bookId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const-string v5, "book"

    .line 184
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->shouldIgnoreEvent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    const-string v5, "book.bookID"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CONTENT_DELETE_TOPIC] onContentDelete bookId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; publishUpdateEvent TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 194
    new-instance p1, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$onContentDelete$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$onContentDelete$1;-><init>(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->loadDataFromDb(Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;)V

    .line 200
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->dataChangedCallback:Lcom/amazon/kindle/callback/ICallback;

    new-instance v0, Lcom/amazon/kindle/callback/OperationResult;

    new-instance v1, Lcom/amazon/kcp/callback/ResumeWidgetResult;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/amazon/kcp/callback/ResumeWidgetResult;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Z)V

    invoke-direct {v0, v1}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onContentUpdate(Ljava/util/Collection;)V
    .locals 13
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "updates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentUpdate;

    .line 210
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 211
    invoke-direct {p0, v3}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->shouldIgnoreEvent(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 217
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazon/kindle/content/IGroupService;->getSeriesIdFromItemId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    .line 332
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 333
    check-cast v8, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 221
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v10

    const-string/jumbo v11, "metadata.bookID"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v10

    const-string v11, "it"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v11

    const-string v12, "it.bookID"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    invoke-interface {v8}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v8

    const-string v11, "it.bookID"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v8, 0x1

    :goto_4
    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    const/4 v7, -0x1

    :goto_5
    if-ltz v7, :cond_7

    .line 224
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v7, v5, :cond_7

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_8

    goto/16 :goto_0

    .line 229
    :cond_8
    invoke-direct {p0, v3, v5}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->shouldRemoveFromHome(Lcom/amazon/kindle/content/ContentMetadata;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 231
    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 233
    :cond_9
    new-instance v8, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-direct {v8, v3}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v4, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_7
    if-nez v1, :cond_b

    .line 236
    invoke-direct {p0, v5, v3, v4, v2}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->shouldPublishUpdateEvent(ZLcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;Lcom/amazon/kindle/content/ContentUpdate;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v1, 0x1

    .line 237
    :goto_9
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->currentBooks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 238
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->dataChangedCallback:Lcom/amazon/kindle/callback/ICallback;

    new-instance v4, Lcom/amazon/kindle/callback/OperationResult;

    new-instance v5, Lcom/amazon/kcp/callback/ResumeWidgetResult;

    invoke-direct {v5, v3, v6}, Lcom/amazon/kcp/callback/ResumeWidgetResult;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Z)V

    invoke-direct {v4, v5}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    goto/16 :goto_0

    :cond_c
    if-eqz v1, :cond_d

    .line 242
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v1, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setInitialized(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->isInitialized:Z

    return-void
.end method
