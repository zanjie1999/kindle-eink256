.class Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$EventHandlerImpl;
.super Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;
.source "ReaderTutorialProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandlerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$EventHandlerImpl;->this$0:Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;

    const-string p1, "Method not yet implemented in ReaderTutorialProvider"

    .line 474
    invoke-direct {p0, p1}, Lcom/amazon/kindle/tutorial/BaseReaderEventHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBookOpenStart(Lcom/amazon/kindle/model/content/ILocalBookItem;Z)V
    .locals 12

    .line 479
    invoke-static {p1}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v4

    .line 484
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 485
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result p1

    .line 487
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 488
    invoke-virtual {v6}, Lcom/amazon/kcp/application/UserSettingsController;->getContinuousScrollReflowableEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v6, :cond_1

    .line 489
    invoke-virtual {v6}, Lcom/amazon/kcp/application/UserSettingsController;->getHasContinuousScrollEverEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 491
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v10

    invoke-interface {v10}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v10

    invoke-interface {v10}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 492
    invoke-static {v10}, Lcom/amazon/kindle/yj/ContinuousScrollUtils;->isContinuousScrollSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 494
    :goto_2
    invoke-static {}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->access$000()Ljava/lang/String;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v8

    .line 495
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v11, v7

    const-string v7, "onBeforeBookOpen called - creating tutorial event with book format %s, isSRL: %b"

    .line 494
    invoke-static {v7, v11}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 497
    new-instance v7, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    const-string v8, "BookOpenStart"

    invoke-direct {v7, v8}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "BookFormat"

    .line 498
    invoke-virtual {v7, v8, v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object v0

    const-string v7, "Asin"

    .line 499
    invoke-virtual {v0, v7, v2}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object v0

    const-string v2, "BookId"

    .line 500
    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object v0

    const-string v2, "Guid"

    .line 501
    invoke-virtual {v0, v2, v4}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object v0

    const-string v2, "MimeType"

    .line 502
    invoke-virtual {v0, v2, v5}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object v0

    const-string v2, "ContentClass"

    .line 503
    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object v0

    const-string v1, "Srl"

    .line 504
    invoke-virtual {v0, v1, p2}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object p2

    const-string v0, "IsDictionary"

    .line 505
    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object p1

    const-string p2, "IsContinuousScroll"

    .line 506
    invoke-virtual {p1, p2, v9}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object p1

    const-string p2, "IsContinuousScrollSupported"

    .line 507
    invoke-virtual {p1, p2, v10}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object p1

    const-string p2, "HasEverEnabledContinuousScroll"

    .line 508
    invoke-virtual {p1, p2, v6}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object p1

    .line 509
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object p1

    .line 510
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$EventHandlerImpl;->this$0:Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method

.method public onChromeOpen(Lcom/amazon/kindle/model/content/ILocalBookItem;I)V
    .locals 6

    .line 515
    invoke-static {p1}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    .line 519
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$EventHandlerImpl;->this$0:Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;

    const-string v3, "ChromeOpenCount"

    invoke-static {v2, v3}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->access$100(Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;Ljava/lang/String;)I

    move-result v2

    .line 521
    invoke-static {}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->access$000()Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 522
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "onChromeOpen called - creating tutorial event with book format %s, reading progress percentage %d, chrome open count %d"

    .line 521
    invoke-static {v4, v3}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 524
    new-instance v3, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    const-string v4, "ChromeOpen"

    invoke-direct {v3, v4}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "BookFormat"

    .line 525
    invoke-virtual {v3, v4, v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object v0

    const-string v3, "MimeType"

    .line 526
    invoke-virtual {v0, v3, p1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object p1

    const-string v0, "ContentClass"

    .line 527
    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object p1

    const-string v0, "ReadingProgress"

    .line 528
    invoke-virtual {p1, v0, p2}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withInt(Ljava/lang/String;I)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object p1

    const-string p2, "Count"

    .line 529
    invoke-virtual {p1, p2, v2}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withInt(Ljava/lang/String;I)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object p1

    .line 530
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object p1

    .line 531
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$EventHandlerImpl;->this$0:Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method

.method public onPageTurn(Ljava/lang/String;)V
    .locals 4

    .line 536
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$EventHandlerImpl;->this$0:Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;

    const-string v1, "PageTurnCount"

    invoke-static {v0, v1}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->access$100(Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;Ljava/lang/String;)I

    move-result v0

    .line 538
    invoke-static {}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->access$000()Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 539
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onPageTurn called - creating tutorial event with book format %s, page turn count %d"

    .line 538
    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    .line 541
    new-instance v1, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    const-string v2, "PageTurn"

    invoke-direct {v1, v2}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "BookFormat"

    .line 542
    invoke-virtual {v1, v2, p1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object p1

    const-string v1, "Count"

    .line 543
    invoke-virtual {p1, v1, v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->withInt(Ljava/lang/String;I)Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    move-result-object p1

    .line 544
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object p1

    .line 545
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider$EventHandlerImpl;->this$0:Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    return-void
.end method
