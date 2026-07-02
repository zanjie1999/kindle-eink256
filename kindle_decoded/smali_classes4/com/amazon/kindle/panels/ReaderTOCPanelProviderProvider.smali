.class public Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;
.super Ljava/lang/Object;
.source "ReaderTOCPanelProviderProvider.java"

# interfaces
.implements Lcom/amazon/kindle/factory/IKindleObjectProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/factory/IKindleObjectProvider<",
        "Lcom/amazon/kindle/panels/PanelProvider<",
        "+",
        "Landroid/app/Activity;",
        ">;",
        "Lcom/amazon/kindle/panels/PanelProviderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private previouslyProvidedProvider:Lcom/amazon/kindle/panels/PanelProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;->previouslyProvidedProvider:Lcom/amazon/kindle/panels/PanelProvider;

    .line 34
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private getNewReaderPanelProvider(Lcom/amazon/kindle/panels/PanelProviderState;)Lcom/amazon/kindle/panels/PanelProvider;
    .locals 5

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/PanelProviderState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    .line 95
    invoke-static {v0}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/PanelProviderState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->reader_panel_provider_lava:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 97
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/PanelProviderState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->reader_panel_provider_falkor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/PanelProviderState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->reader_panel_provider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/amazon/kindle/panels/PanelProviderState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/panels/PanelProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 104
    :catch_0
    sget-object v0, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t instantiate BasePanelProvider subclass"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/amazon/kindle/panels/BookPanelProvider;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/panels/BookPanelProvider;-><init>(Lcom/amazon/kindle/panels/PanelProviderState;)V

    return-object v0
.end method

.method public static supportsTOCPanel(Lcom/amazon/kcp/reader/ReaderActivity;)Z
    .locals 3

    .line 56
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 60
    :cond_0
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isListableBookLocalPDF(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 67
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    .line 68
    sget-object v2, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    return v0

    .line 78
    :pswitch_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/panels/PanelProviderState;)Lcom/amazon/kindle/panels/PanelProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/panels/PanelProviderState;",
            ")",
            "Lcom/amazon/kindle/panels/PanelProvider<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/PanelProviderState;->getStateType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/PanelProviderState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 48
    invoke-static {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;->supportsTOCPanel(Lcom/amazon/kcp/reader/ReaderActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;->getNewReaderPanelProvider(Lcom/amazon/kindle/panels/PanelProviderState;)Lcom/amazon/kindle/panels/PanelProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;->previouslyProvidedProvider:Lcom/amazon/kindle/panels/PanelProvider;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lcom/amazon/kindle/panels/PanelProviderState;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;->get(Lcom/amazon/kindle/panels/PanelProviderState;)Lcom/amazon/kindle/panels/PanelProvider;

    move-result-object p1

    return-object p1
.end method

.method public onBookClosed(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 112
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;->previouslyProvidedProvider:Lcom/amazon/kindle/panels/PanelProvider;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;->previouslyProvidedProvider:Lcom/amazon/kindle/panels/PanelProvider;

    :cond_0
    return-void
.end method
