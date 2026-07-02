.class Lcom/amazon/kcp/reader/UserGotoDialogController;
.super Ljava/lang/Object;
.source "UserGotoDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

.field private final dialogType:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private lastPosition:I

.field private navigator:Lcom/amazon/kcp/reader/nav/IPageNavigator;

.field private positiveButton:Landroid/widget/Button;

.field private final targetTextField:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/amazon/kcp/reader/UserGotoDialogController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/UserGotoDialogController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->targetTextField:Landroid/widget/EditText;

    .line 65
    iput-object p2, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 66
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    .line 68
    iput-object p3, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->dialogType:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    return-void
.end method

.method static getGotoLocation(Lcom/amazon/android/docviewer/KindleDoc;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 368
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p0

    .line 370
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x1

    .line 372
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method static getGotoPageLabel(Ljava/lang/String;Lcom/amazon/android/docviewer/IPageLabelProvider;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 343
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 346
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getLastBodyPageLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x1

    .line 353
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 354
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :catch_0
    return-object p0
.end method

.method private logStartingPerfMarker()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 191
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->ACX_GOTO:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/amazon/kcp/util/Utils;->startChromeFirePerf(Lcom/amazon/kindle/performance/KindlePerformanceConstants;Lcom/amazon/kindle/model/content/IListableBook;Z)V

    return-void
.end method

.method private onTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .line 132
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->targetTextField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/amazon/kcp/reader/UserGotoDialogController;->getGotoLocation(Lcom/amazon/android/docviewer/KindleDoc;Ljava/lang/String;)I

    move-result p1

    .line 134
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPageNavigatorFactory()Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    sget-object v1, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;->GOTO:Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;->createPageNavigator(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;)Lcom/amazon/kcp/reader/nav/IPageNavigator;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->navigator:Lcom/amazon/kcp/reader/nav/IPageNavigator;

    .line 135
    iget v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->lastPosition:I

    invoke-interface {p2, v0, p1}, Lcom/amazon/kcp/reader/nav/IPageNavigator;->start(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    sget-object p1, Lcom/amazon/kcp/reader/UserGotoDialogController;->TAG:Ljava/lang/String;

    const-string p2, "User attempted to input an invalid location - location can only be a number"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getNegativeText()Ljava/lang/String;
    .locals 3

    .line 313
    sget-object v0, Lcom/amazon/kcp/reader/UserGotoDialogController$1;->$SwitchMap$com$amazon$kcp$reader$UserGotoDialogBuilder$GoToDialogType:[I

    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->dialogType:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 321
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$string;->goto_page:I

    goto :goto_0

    .line 318
    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$string;->cancel:I

    goto :goto_0

    .line 315
    :cond_2
    sget v0, Lcom/amazon/kindle/krl/R$string;->cancel:I

    :goto_0
    if-eq v0, v2, :cond_3

    .line 326
    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->targetTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNeutralText()Ljava/lang/String;
    .locals 3

    .line 287
    sget-object v0, Lcom/amazon/kcp/reader/UserGotoDialogController$1;->$SwitchMap$com$amazon$kcp$reader$UserGotoDialogBuilder$GoToDialogType:[I

    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->dialogType:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 294
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$string;->cancel:I

    goto :goto_0

    .line 291
    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$string;->go:I

    :goto_0
    if-eq v0, v2, :cond_2

    .line 299
    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->targetTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositiveText()Ljava/lang/String;
    .locals 3

    .line 261
    sget-object v0, Lcom/amazon/kcp/reader/UserGotoDialogController$1;->$SwitchMap$com$amazon$kcp$reader$UserGotoDialogBuilder$GoToDialogType:[I

    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->dialogType:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 268
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$string;->goto_location:I

    goto :goto_0

    .line 263
    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$string;->go:I

    :goto_0
    if-eq v0, v2, :cond_2

    .line 273
    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->targetTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public gotoEnteredLocation()V
    .locals 4

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->targetTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kcp/reader/UserGotoDialogController;->getGotoLocation(Lcom/amazon/android/docviewer/KindleDoc;Ljava/lang/String;)I

    move-result v0

    .line 203
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "UserGotoDialogController"

    const-string v3, "Location"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->navigator:Lcom/amazon/kcp/reader/nav/IPageNavigator;

    if-nez v1, :cond_0

    .line 207
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPageNavigatorFactory()Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    sget-object v3, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;->GOTO:Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;->createPageNavigator(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;)Lcom/amazon/kcp/reader/nav/IPageNavigator;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->navigator:Lcom/amazon/kcp/reader/nav/IPageNavigator;

    .line 208
    iget v2, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->lastPosition:I

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/reader/nav/IPageNavigator;->start(II)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->navigator:Lcom/amazon/kcp/reader/nav/IPageNavigator;

    const-string v1, "GoToLocation"

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/nav/IPageNavigator;->commit(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->navigator:Lcom/amazon/kcp/reader/nav/IPageNavigator;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    sget-object v0, Lcom/amazon/kcp/reader/UserGotoDialogController;->TAG:Ljava/lang/String;

    const-string v1, "User attempted to input an invalid location - location can only be a number"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public gotoEnteredPage()V
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->targetTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    sget-object v0, Lcom/amazon/kcp/reader/UserGotoDialogController;->TAG:Ljava/lang/String;

    const-string v1, "User attempted to input an empty page label"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    .line 232
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    .line 235
    :try_start_0
    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/UserGotoDialogController;->getGotoPageLabel(Ljava/lang/String;Lcom/amazon/android/docviewer/IPageLabelProvider;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 240
    :goto_0
    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPositionForPageLabel(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 242
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 244
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "UserGotoDialogController"

    const-string v4, "Page"

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->bookNavigator:Lcom/amazon/kindle/krx/reader/IBookNavigator;

    const-string v3, "GoToPage"

    invoke-interface {v2, v1, v0, v3}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_1
    sget-object v1, Lcom/amazon/kcp/reader/UserGotoDialogController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User attempted to go to an invalid page: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->navigator:Lcom/amazon/kcp/reader/nav/IPageNavigator;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Lcom/amazon/kcp/reader/nav/IPageNavigator;->rollback()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->navigator:Lcom/amazon/kcp/reader/nav/IPageNavigator;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/amazon/kcp/reader/UserGotoDialogController;->logStartingPerfMarker()V

    const/4 p1, -0x3

    if-eq p2, p1, :cond_4

    const/4 p1, -0x2

    if-eq p2, p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_3

    .line 94
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->OVERFLOW_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_GOTO_LOCATION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_0

    .line 98
    :cond_1
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_GOTO_LOCATION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 101
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/UserGotoDialogController;->gotoEnteredLocation()V

    goto :goto_3

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->dialogType:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    sget-object p2, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->PAGE_OR_LOCATION:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    if-ne p1, p2, :cond_6

    .line 82
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 83
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->OVERFLOW_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_GOTO_PAGE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_1

    .line 86
    :cond_3
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_GOTO_PAGE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 90
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/UserGotoDialogController;->gotoEnteredPage()V

    goto :goto_3

    .line 105
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->dialogType:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    sget-object p2, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;->PAGE_OR_LOCATION:Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;

    if-eq p1, p2, :cond_6

    .line 106
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 107
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->OVERFLOW_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_GOTO_PAGE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    goto :goto_2

    .line 110
    :cond_5
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object p2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_GOTO_PAGE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, p2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 114
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/UserGotoDialogController;->gotoEnteredPage()V

    :cond_6
    :goto_3
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->lastPosition:I

    .line 160
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    .line 161
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->positiveButton:Landroid/widget/Button;

    .line 164
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    .line 166
    sget v0, Lcom/amazon/kindle/krl/R$color;->inbook_dialog_button_text_color_dark:I

    goto :goto_0

    .line 168
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$color;->inbook_dialog_button_text_color_light:I

    .line 171
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->positiveButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    const/4 v1, -0x2

    .line 176
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, -0x3

    .line 177
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 182
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    .line 153
    sget-object p1, Lcom/amazon/kcp/reader/UserGotoDialogController;->TAG:Ljava/lang/String;

    const-string p2, "Detected invalid event action"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogController;->positiveButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/Button;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/UserGotoDialogController;->onCancel()V

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/UserGotoDialogController;->onTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
