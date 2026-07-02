.class public Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;
.super Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;
.source "PageElementObjectSelectionModel.java"

# interfaces
.implements Lcom/amazon/android/docviewer/selection/ISelectionEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;,
        Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_WORDS:I = 0x7d0

.field private static TAG:Ljava/lang/String;


# instance fields
.field private anchorPosition:I

.field private cachedMaxWords:I

.field private cachedText:Ljava/lang/String;

.field private volatile disableSelectionUpdates:Z

.field private dummyElement:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;

.field private elementStartComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation
.end field

.field private endpointPosition:I

.field private pageTurnedForward:Ljava/lang/Boolean;

.field private refreshedAfterRotation:Z

.field private selectionAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

.field private selectionEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

.field private selectionPageTurnListener:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;

.field private selectionType:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 292
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->refreshedAfterRotation:Z

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->cachedText:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$1;-><init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->elementStartComparator:Ljava/util/Comparator;

    .line 125
    new-instance v0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;-><init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$1;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->dummyElement:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;

    .line 293
    invoke-direct {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->anchorPosition:I

    return p0
.end method

.method static synthetic access$1000(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;I)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->isPositionOnPage(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;I)Lcom/amazon/android/docviewer/IPageElement;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getElementOnPage(I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;I)Lcom/amazon/android/docviewer/IPageElement;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->createOffPageElement(I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;IIZ)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(IIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->endpointPosition:I

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)Lcom/amazon/android/docviewer/IPageElement;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)Lcom/amazon/android/docviewer/IPageElement;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    return-void
.end method

.method static synthetic access$602(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    return p1
.end method

.method static synthetic access$700(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->refreshedAfterRotation:Z

    return p0
.end method

.method static synthetic access$702(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->refreshedAfterRotation:Z

    return p1
.end method

.method static synthetic access$800(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)Ljava/lang/Boolean;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->pageTurnedForward:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$802(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->pageTurnedForward:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private assertSelecting(Z)V
    .locals 2

    .line 1015
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1017
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    .line 1021
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No selection in progress!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    if-nez p1, :cond_6

    if-nez v0, :cond_4

    goto :goto_3

    .line 1023
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempt to start a selection when already in a selecting state."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1027
    sget-object v0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->TAG:Ljava/lang/String;

    const-string v1, "Assert selecting failed: "

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1030
    :cond_5
    sget-object p1, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->TAG:Ljava/lang/String;

    const-string v0, "assertSelecting failed"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private assertValidElement(Lcom/amazon/android/docviewer/IPageElement;)V
    .locals 2

    if-nez p1, :cond_1

    .line 1001
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1008
    sget-object p1, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->TAG:Ljava/lang/String;

    const-string v0, "assertValidElement failed"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1003
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must supply a valid page element!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 1005
    sget-object v0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->TAG:Ljava/lang/String;

    const-string v1, "Assert valid element failed: "

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private changeSelectedArea(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1040
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v0

    invoke-interface {p2}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1041
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v0

    .line 1042
    invoke-interface {p2}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result v1

    goto :goto_0

    .line 1044
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result v0

    .line 1045
    invoke-interface {p2}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    .line 1048
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(IIZ)Z

    move-result v0

    .line 1053
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 1054
    iput-object p2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    if-eqz v0, :cond_4

    .line 1058
    sget-object p1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->publishEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1070
    :cond_2
    sget-object p1, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->TAG:Ljava/lang/String;

    const-string p2, "Setting selected area with one null and one non-null page elements! Is this during a multi page selection?"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    const/4 p2, -0x1

    .line 1072
    invoke-direct {p0, p2, p2, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(IIZ)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private changeSelectedArea(IIZ)Z
    .locals 3

    .line 1089
    iget v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->anchorPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    .line 1090
    iput p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->anchorPosition:I

    .line 1091
    iput-object v2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 1092
    iput-object v2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->cachedText:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1095
    :goto_0
    iget v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->endpointPosition:I

    if-eq p2, v0, :cond_1

    .line 1096
    iput p2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->endpointPosition:I

    .line 1097
    iput-object v2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 1098
    iput-object v2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->cachedText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    .line 1103
    sget-object p1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->publishEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V

    :cond_2
    return v1
.end method

.method private declared-synchronized createOffPageElement(I)Lcom/amazon/android/docviewer/IPageElement;
    .locals 4

    monitor-enter p0

    .line 1213
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->isDisposed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1219
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 1220
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 1221
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The element ID is on current page!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1223
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->createWordIterator()Lcom/amazon/kindle/search/IKindleWordTokenIterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 1226
    monitor-exit p0

    return-object v1

    .line 1229
    :cond_3
    :try_start_1
    invoke-interface {v0, p1}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 1230
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1233
    iget v3, v2, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    if-le v3, p1, :cond_4

    .line 1234
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->previous()Z

    .line 1235
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object v2

    .line 1237
    :cond_4
    invoke-interface {v0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_5

    .line 1239
    monitor-exit p0

    return-object v1

    .line 1243
    :cond_5
    :try_start_2
    new-instance p1, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$2;

    invoke-direct {p1, p0, v2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$2;-><init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1215
    :cond_6
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getElementOnPage(I)Lcom/amazon/android/docviewer/IPageElement;
    .locals 4

    .line 1145
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->isDisposed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1149
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1154
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getElements()Ljava/util/Vector;

    move-result-object v0

    .line 1155
    invoke-direct {p0, v0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getIndexOfElementForPosition(Ljava/util/Vector;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/IPageElement;

    if-eqz v0, :cond_3

    .line 1159
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result v2

    if-lt v2, p1, :cond_3

    .line 1160
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v2

    if-le v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1

    .line 1161
    :cond_3
    :goto_0
    sget-object v0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was on current page, but no valid element was found!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-object v1
.end method

.method private getIndexOfElementForPosition(Ljava/util/Vector;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;I)I"
        }
    .end annotation

    .line 1178
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->dummyElement:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;

    invoke-static {v0, p2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;->access$1402(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;I)I

    .line 1180
    iget-object p2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->dummyElement:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$DummyPageElement;

    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->elementStartComparator:Ljava/util/Comparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const/4 p2, -0x1

    if-ge p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    return p2
.end method

.method private getNextElementInPage(I)Lcom/amazon/android/docviewer/IPageElement;
    .locals 3

    .line 1297
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->disposed:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1301
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1306
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getElements()Ljava/util/Vector;

    move-result-object v0

    .line 1307
    invoke-direct {p0, v0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getIndexOfElementForPosition(Ljava/util/Vector;I)I

    move-result p1

    .line 1309
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/amazon/android/docviewer/IPageElement;

    :cond_2
    :goto_0
    return-object v1
.end method

.method private getPreviousElementInPage(I)Lcom/amazon/android/docviewer/IPageElement;
    .locals 3

    .line 1274
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->disposed:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1278
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1283
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getElements()Ljava/util/Vector;

    move-result-object v0

    .line 1284
    invoke-direct {p0, v0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getIndexOfElementForPosition(Ljava/util/Vector;I)I

    move-result p1

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 1286
    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/amazon/android/docviewer/IPageElement;

    :cond_2
    :goto_0
    return-object v1
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 303
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    const/4 v0, -0x1

    .line 304
    iput v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->anchorPosition:I

    .line 305
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->TOUCH:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    iput-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionMethod:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    .line 306
    iput v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->endpointPosition:I

    .line 308
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getSelectionPageTurnListener()Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionPageTurnListener:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;

    .line 309
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 311
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    .line 312
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->NONE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionType:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    return-void
.end method

.method private isPositionOnPage(I)Z
    .locals 3

    .line 1127
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->isDisposed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1130
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1132
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 1133
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v0

    if-gt p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private selectionWithinPage(Lcom/amazon/android/docviewer/IDocumentPage;)Z
    .locals 4

    .line 1116
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v0

    .line 1117
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    .line 1120
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result p1

    if-gt v1, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public addWordToEndOfSelection()Ljava/lang/String;
    .locals 4

    .line 740
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->disposed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 744
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-eqz v0, :cond_1

    return-object v1

    .line 748
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 751
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getNextElementInPage(I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 754
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 756
    invoke-direct {p0, v2, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    .line 757
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 758
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result v0

    const/4 v3, 0x1

    invoke-interface {v2, v1, v0, v3}, Lcom/amazon/android/docviewer/IDocumentPage;->createText(III)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public addWordToStartOfSelection()Ljava/lang/String;
    .locals 4

    .line 673
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->disposed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 677
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-eqz v0, :cond_1

    return-object v1

    .line 681
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 684
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getPreviousElementInPage(I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 688
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 690
    invoke-direct {p0, v0, v2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    .line 691
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 692
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result v0

    const/4 v3, 0x1

    invoke-interface {v2, v1, v0, v3}, Lcom/amazon/android/docviewer/IDocumentPage;->createText(III)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method protected createObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;
    .locals 2

    .line 1341
    new-instance v0, Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;

    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/android/docviewer/selection/MobiObjectSelectionController;-><init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;)V

    return-object v0
.end method

.method public dispose()V
    .locals 3

    const/4 v0, 0x0

    .line 1328
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 1329
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 1330
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 1331
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionPageTurnListener:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;

    if-eqz v2, :cond_0

    .line 1332
    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 1334
    :cond_0
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionPageTurnListener:Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;

    .line 1335
    invoke-super {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->dispose()V

    return-void
.end method

.method public endSelection()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 933
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-eqz v0, :cond_0

    return-void

    .line 937
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 941
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->assertSelecting(Z)V

    .line 943
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v1, :cond_2

    .line 944
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getMetadata()Ljava/util/Map;

    move-result-object v6

    .line 945
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v2

    .line 946
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v3

    .line 947
    invoke-virtual {p0, v2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getPreviousElementInPagePosition(I)I

    move-result v4

    .line 948
    invoke-virtual {p0, v3}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getNextElementInPagePosition(I)I

    move-result v5

    .line 949
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v1

    const-string v7, "ExtendHighlight"

    invoke-interface/range {v1 .. v7}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->addHighlight(IIIILjava/util/Map;Ljava/lang/String;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 951
    :cond_2
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    .line 954
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->shouldDisplaySelectionButtonsOnQH()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionModified:Z

    if-eqz v0, :cond_3

    .line 955
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectNone()V

    :cond_3
    const/4 v0, 0x0

    .line 957
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionModified:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public endSelection(Lcom/amazon/android/docviewer/IPageElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 911
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-eqz v0, :cond_0

    return-void

    .line 915
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->assertValidElement(Lcom/amazon/android/docviewer/IPageElement;)V

    const/4 v0, 0x1

    .line 916
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->assertSelecting(Z)V

    .line 919
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    invoke-direct {p0, v0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    .line 920
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->endSelection()V

    return-void
.end method

.method public getCoveringRectangles()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 514
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v2

    .line 515
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    if-eq v3, v4, :cond_2

    .line 521
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 522
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 524
    invoke-interface {v0, v1, v2}, Lcom/amazon/android/docviewer/IDocumentPage;->createCoveringRectangles(II)Ljava/util/Vector;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method getFirstSelectedElement()Lcom/amazon/android/docviewer/IPageElement;
    .locals 3

    .line 331
    iget v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->anchorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget v2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->endpointPosition:I

    if-ne v2, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v0, v2, :cond_1

    .line 340
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    if-eqz v1, :cond_3

    return-object v1

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    move v0, v2

    .line 355
    :cond_3
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->isPositionOnPage(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 356
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getElementOnPage(I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v1

    goto :goto_0

    .line 358
    :cond_4
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->createOffPageElement(I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v1

    .line 362
    :goto_0
    iget v2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->anchorPosition:I

    if-ne v0, v2, :cond_5

    .line 363
    iput-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 368
    iget v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->endpointPosition:I

    if-ne v2, v0, :cond_6

    .line 369
    iput-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    goto :goto_1

    .line 372
    :cond_5
    iput-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    :cond_6
    :goto_1
    return-object v1

    :cond_7
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstSelectedPositionId()I
    .locals 3

    .line 442
    iget v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->anchorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->endpointPosition:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-gt v0, v2, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method getLastSelectedElement()Lcom/amazon/android/docviewer/IPageElement;
    .locals 3

    .line 389
    iget v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->anchorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget v2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->endpointPosition:I

    if-ne v2, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v0, v2, :cond_1

    .line 398
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    if-eqz v1, :cond_3

    return-object v1

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    move v0, v2

    .line 413
    :cond_3
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->isPositionOnPage(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 414
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getElementOnPage(I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v1

    goto :goto_0

    .line 416
    :cond_4
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->createOffPageElement(I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v1

    .line 420
    :goto_0
    iget v2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->anchorPosition:I

    if-ne v0, v2, :cond_5

    .line 421
    iput-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 426
    iget v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->endpointPosition:I

    if-ne v2, v0, :cond_6

    .line 427
    iput-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    goto :goto_1

    .line 430
    :cond_5
    iput-object v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionEndpointElement:Lcom/amazon/android/docviewer/IPageElement;

    :cond_6
    :goto_1
    return-object v1

    :cond_7
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastSelectedPositionId()I
    .locals 3

    .line 459
    iget v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->anchorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v2, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->endpointPosition:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public getNextElementInPagePosition(I)I
    .locals 0

    .line 1321
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getNextElementInPage(I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1322
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getPreviousElementInPagePosition(I)I
    .locals 0

    .line 1314
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getPreviousElementInPage(I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1316
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getSelectedFirstWordStartId()I
    .locals 1

    .line 471
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v0

    return v0
.end method

.method public getSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object v0
.end method

.method public getSelectedLastWordEndId()I
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v0

    return v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x7d0

    .line 541
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getSelectedText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/String;
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->cachedText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->cachedMaxWords:I

    if-ne v1, p1, :cond_1

    return-object v0

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    .line 571
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v1

    .line 572
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 578
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionWithinPage(Lcom/amazon/android/docviewer/IDocumentPage;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 579
    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/android/docviewer/IDocumentPage;->createText(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTextBetweenPositions(III)Ljava/lang/String;

    move-result-object v0

    .line 584
    :goto_0
    invoke-static {v0}, Lcom/amazon/android/util/CharacterAnalyzer;->removeSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->cachedText:Ljava/lang/String;

    .line 585
    iput p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->cachedMaxWords:I

    return-object v0

    :cond_4
    :goto_1
    const-string p1, ""

    return-object p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectedTextToSearch()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x7d0

    .line 546
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getSelectedText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionEditor()Lcom/amazon/android/docviewer/selection/ISelectionEditor;
    .locals 0

    return-object p0
.end method

.method protected getSelectionPageTurnListener()Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;
    .locals 1

    .line 316
    new-instance v0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$SelectionPageTurnListener;-><init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)V

    return-object v0
.end method

.method public getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v1, :cond_0

    .line 806
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->NONE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    return-object v0

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionType:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->NONE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-ne v0, v1, :cond_1

    .line 809
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    :cond_1
    return-object v0
.end method

.method public getTabletSelectedHighlight()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object v0
.end method

.method public removeWordFromEndOfSelection()Ljava/lang/String;
    .locals 5

    .line 773
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->disposed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 777
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-eqz v0, :cond_1

    return-object v1

    .line 781
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 784
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getPreviousElementInPage(I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 786
    invoke-interface {v2}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v3

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 787
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 789
    invoke-direct {p0, v3, v2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    .line 790
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 791
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result v0

    const/4 v3, 0x1

    invoke-interface {v2, v1, v0, v3}, Lcom/amazon/android/docviewer/IDocumentPage;->createText(III)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public removeWordFromStartOfSelection()Ljava/lang/String;
    .locals 5

    .line 707
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->disposed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 711
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-eqz v0, :cond_1

    return-object v1

    .line 715
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 718
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getNextElementInPage(I)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 720
    invoke-interface {v2}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v3

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 721
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 723
    invoke-direct {p0, v2, v3}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    .line 724
    iget-object v2, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 725
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result v0

    const/4 v3, 0x1

    invoke-interface {v2, v1, v0, v3}, Lcom/amazon/android/docviewer/IDocumentPage;->createText(III)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public selectNone()V
    .locals 2

    .line 598
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 601
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 602
    invoke-direct {p0, v1, v1, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(IIZ)Z

    .line 603
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    return-void
.end method

.method public setPageTurnedBySelection(Z)V
    .locals 0

    .line 962
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->pageTurnedForward:Ljava/lang/Boolean;

    return-void
.end method

.method public setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 2

    .line 625
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 630
    invoke-static {p1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationSelectionType(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionType:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    .line 631
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->TOUCH:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionMethod:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    .line 632
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    sget-object v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;->LOADED:Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->setAnnotationOrigin(Lcom/amazon/kindle/model/sync/annotation/IAnnotation$AnnotationOriginType;)V

    .line 633
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(IIZ)Z

    .line 634
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Z)V
    .locals 0

    .line 639
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->setSelectedHighlight(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    .line 641
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 643
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 645
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->showSelectionHandles(Z)V

    :cond_0
    return-void
.end method

.method public setSelection(II)V
    .locals 1

    .line 608
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 613
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    const/4 v0, 0x1

    .line 614
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(IIZ)Z

    .line 615
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    return-void
.end method

.method public setSelection(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 620
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->setSelection(II)V

    return-void
.end method

.method public setSelectionType(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionType:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    return-void
.end method

.method public setStateCreatingAnnotation()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 823
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->ANNOTATE_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    return-void
.end method

.method public startSelection(Lcom/amazon/android/docviewer/IPageElement;)V
    .locals 1

    .line 837
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-eqz v0, :cond_0

    return-void

    .line 841
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->assertValidElement(Lcom/amazon/android/docviewer/IPageElement;)V

    const/4 v0, 0x0

    .line 842
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->assertSelecting(Z)V

    .line 845
    invoke-direct {p0, p1, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    .line 846
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    .line 848
    sget-object p1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->SELECTION_STARTED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->publishEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V

    return-void
.end method

.method public startSelectionBeginChange(Lcom/amazon/android/docviewer/IPageElement;)V
    .locals 1

    .line 858
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-eqz v0, :cond_0

    return-void

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getLastSelectedElement()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->startSelectionChange(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    return-void
.end method

.method protected startSelectionChange(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V
    .locals 2

    .line 977
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->disposed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 981
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->assertValidElement(Lcom/amazon/android/docviewer/IPageElement;)V

    .line 982
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v1, :cond_2

    .line 986
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    .line 992
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    .line 993
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V

    return-void

    .line 983
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must have created and ended a selection before calling this method."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public startSelectionEndChange(Lcom/amazon/android/docviewer/IPageElement;)V
    .locals 1

    .line 872
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-eqz v0, :cond_0

    return-void

    .line 877
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->getFirstSelectedElement()Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->startSelectionChange(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    return-void
.end method

.method public updateSelectionBounds(Lcom/amazon/android/docviewer/IPageElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 891
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->disableSelectionUpdates:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 894
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionModified:Z

    .line 895
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->assertValidElement(Lcom/amazon/android/docviewer/IPageElement;)V

    .line 896
    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->assertSelecting(Z)V

    .line 897
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->selectionAnchorElement:Lcom/amazon/android/docviewer/IPageElement;

    invoke-direct {p0, v0, p1}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;->changeSelectedArea(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)V

    return-void
.end method
