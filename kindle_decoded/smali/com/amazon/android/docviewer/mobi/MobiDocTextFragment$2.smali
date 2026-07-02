.class Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTaskCompleteCallbackForActiveAreaType(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;J)Ljava/lang/Runnable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask<",
            "Ljava/lang/Void;",
            ">;J)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    long-to-int p3, p2

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1

    const/16 p2, 0x1000

    if-eq p3, p2, :cond_0

    const/16 p2, 0x2000

    if-eq p3, p2, :cond_0

    const/16 p2, 0x4000

    if-eq p3, p2, :cond_0

    .line 736
    new-instance p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$7;

    invoke-direct {p2, p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$7;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 721
    :cond_1
    new-instance p2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$6;

    invoke-direct {p2, p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$6;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    :goto_0
    return-object p2
.end method


# virtual methods
.method public canHandleAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
    .locals 1

    .line 587
    sget-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    .line 589
    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    .line 590
    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$200(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canHandleFallbackAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
    .locals 1

    .line 636
    sget-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    .line 638
    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    .line 639
    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$200(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public executeActiveArea(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)Z
    .locals 3

    .line 675
    new-instance v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$5;

    invoke-direct {v2, p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$5;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)V

    invoke-direct {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;)V

    .line 695
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getType()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->getTaskCompleteCallbackForActiveAreaType(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;J)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;->setTaskCompleteCallback(Ljava/lang/Runnable;)V

    .line 697
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$800(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    const/4 p1, 0x1

    return p1
.end method

.method public handleAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
    .locals 5

    .line 602
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->canHandleAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 606
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$100(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isNavigatingWithinPage()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 607
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    iget-object p1, p1, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->m_pageRenderDrawables:Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->setInToggleOffTransient(Z)V

    .line 610
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object p1

    new-instance v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$1;

    invoke-direct {v3, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$1;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;)V

    new-instance v4, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$2;

    invoke-direct {v4, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$2;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    return v0
.end method

.method public handleFallbackAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
    .locals 4

    .line 644
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->canHandleFallbackAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 648
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object p1

    new-instance v0, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$3;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$3;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;)V

    new-instance v3, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$4;

    invoke-direct {v3, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2$4;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$2;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldExecuteActiveArea(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;J)Z
    .locals 5

    .line 751
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$11;->$SwitchMap$com$amazon$android$docviewer$IObjectSelector$UserAction:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-wide/16 v0, 0x4000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    cmp-long p1, p2, v0

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    cmp-long p1, p2, v0

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method
