.class Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;
.super Ljava/lang/Object;
.source "MarkAsActionButtonProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->createMARActionButton(IILcom/amazon/kindle/krx/content/IBook$ReadState;)Lcom/amazon/kindle/krx/ui/IActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Ljava/util/List<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;

.field final synthetic val$buttonText:I

.field final synthetic val$buttonTextVerbose:I

.field final synthetic val$newReadState:Lcom/amazon/kindle/krx/content/IBook$ReadState;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;IILcom/amazon/kindle/krx/content/IBook$ReadState;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;

    iput p2, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->val$buttonTextVerbose:I

    iput p3, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->val$buttonText:I

    iput-object p4, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->val$newReadState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reportLibraryMenuMarkAsItemPressedMetrics(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;

    .line 142
    invoke-static {v0}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->access$100(Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/kcp/util/fastmetrics/RecordLibraryActionButtonMetricsKt;->convertBookListToContentMetadataList(Ljava/util/List;Lcom/amazon/kindle/content/ILibraryService;)Ljava/util/List;

    move-result-object p2

    const-string v0, "LibraryLongPressMenuItemPressed"

    const-string v1, "Library"

    .line 140
    invoke-static {v0, p2, p1, v1}, Lcom/amazon/kcp/util/fastmetrics/LibraryActionMenuMetricsRecorder;->reportLibraryActionMenuActionSelectedMetrics(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->getActionStringId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;

    invoke-static {v0}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->access$000(Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;)Lcom/amazon/kcp/library/ActivityProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ActivityProvider;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 87
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/ui/TextType;->VERBOSE:Lcom/amazon/kindle/krx/ui/TextType;

    if-ne p1, v1, :cond_1

    .line 88
    iget p1, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->val$buttonTextVerbose:I

    goto :goto_0

    .line 90
    :cond_1
    iget p1, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->val$buttonText:I

    .line 92
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 72
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->getVisibility(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/ComponentStatus;"
        }
    .end annotation

    .line 97
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object p1
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->onClick(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 102
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 103
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    iget-object v1, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->val$newReadState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE_ORIGIN:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v1, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->MANUAL:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/amazon/kindle/krx/content/IBook;

    .line 108
    invoke-interface {v9}, Lcom/amazon/kindle/krx/content/IBook;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->val$newReadState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-eq v0, v1, :cond_0

    .line 109
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;

    invoke-static {v0}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->access$100(Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-interface {v9}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;

    invoke-static {v2}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->access$100(Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 111
    const-class v3, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;

    invoke-static {v3}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v6

    .line 110
    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V

    .line 114
    invoke-interface {v9}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v1, :cond_0

    .line 115
    new-instance v0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;

    invoke-interface {v9}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 120
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 121
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/content/IBook;

    .line 122
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    :cond_2
    const-class v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    if-eqz v0, :cond_3

    .line 126
    invoke-interface {v0, p1}, Lcom/amazon/kcp/integrator/LargeLibraryRepository;->handleBooksReadingStateDidChange(Ljava/util/Set;)V

    .line 129
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->getMarkAsActionButtonOption()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v8}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->reportLibraryMenuMarkAsItemPressedMetrics(Ljava/lang/String;Ljava/util/List;)V

    .line 132
    iget-object p1, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;

    invoke-static {p1}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->access$200(Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;)Lcom/amazon/kindle/network/INetworkService;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 136
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->this$0:Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;

    invoke-static {p1}, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;->access$300(Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider;)Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/mar/MarkAsActionButtonProvider$1;->val$newReadState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-interface {p1, v7, v0}, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;->onReadStateChanged(Ljava/util/List;Lcom/amazon/kindle/krx/content/IBook$ReadState;)V

    return-void
.end method

.method public showAsAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
