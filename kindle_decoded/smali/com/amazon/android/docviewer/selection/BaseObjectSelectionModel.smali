.class public abstract Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;
.super Ljava/lang/Object;
.source "BaseObjectSelectionModel.java"

# interfaces
.implements Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;


# static fields
.field private static final TRANSPARENCY_FACTOR:I = -0x80000000

.field private static final TRANSPARENCY_REMOVER:I = 0xffffff


# instance fields
.field protected currentDisplayState:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

.field protected disposed:Z

.field protected docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field protected messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field protected objectSelectionController:Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

.field protected selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

.field protected selectionMethod:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

.field protected selectionModified:Z

.field protected selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

.field protected suppressControllerInit:Z


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionModified:Z

    .line 55
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->suppressControllerInit:Z

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->init(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-void
.end method

.method private init(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 68
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 69
    sget-object p1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->UNKNOWN:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionMethod:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->disposed:Z

    .line 71
    sget-object p1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_NONE:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->currentDisplayState:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    .line 72
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    return-void
.end method

.method private initializeQuickHighlight()V
    .locals 2

    .line 122
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->suppressControllerInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->nn_quick_highlight_min_words:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->objectSelectionController:Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->setQuickHighlightMinWords(I)V

    return-void
.end method


# virtual methods
.method protected abstract createObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;
.end method

.method public dispose()V
    .locals 2

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->disposed:Z

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 149
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->objectSelectionController:Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->dispose()V

    .line 152
    :cond_0
    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->objectSelectionController:Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    return-void
.end method

.method public getCurrentSelectionColor()I
    .locals 3

    .line 206
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->isSelectionInQuickHighlightMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->getLastUsedHighlightColor()Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object v1

    .line 212
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorHexForColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/Context;)I

    move-result v0

    const/high16 v1, -0x80000000

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-eqz v1, :cond_1

    .line 218
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    .line 219
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-static {v1}, Lcom/amazon/kcp/util/AnnotationUtils;->getAnnotationColor(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getHighlightColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 224
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$color;->selection_default:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is disposed. This call should never happen in this state. Returning null."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->objectSelectionController:Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->createObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->objectSelectionController:Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    .line 116
    invoke-direct {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->initializeQuickHighlight()V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->objectSelectionController:Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    return-object v0
.end method

.method public getSelectionDisplay()Lcom/amazon/android/docviewer/selection/SelectionDisplay;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->currentDisplayState:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    return-object v0
.end method

.method public getSelectionMethod()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionMethod:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    return-object v0
.end method

.method public getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    return-object v0
.end method

.method public isCurrentSelectionQuickHighlightable()Z
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->isCurrentSelectionQuickHighlightable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->disposed:Z

    return v0
.end method

.method public isSelectionInQuickHighlightMode()Z
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->currentDisplayState:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_QUICK_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/android/docviewer/selection/SelectionDisplay;->STATE_SELECTING_QUICK_HIGHLIGHT:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected publishEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V
    .locals 2

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 168
    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v1, :cond_0

    .line 170
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    .line 171
    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 173
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;

    invoke-direct {v1, p0, p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void

    :catchall_0
    move-exception p1

    .line 173
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public reInitializeOnOrientationChange()V
    .locals 0

    return-void
.end method

.method public setSelectionDisplay(Lcom/amazon/android/docviewer/selection/SelectionDisplay;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->currentDisplayState:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    if-eq p1, v0, :cond_0

    .line 199
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->currentDisplayState:Lcom/amazon/android/docviewer/selection/SelectionDisplay;

    .line 200
    sget-object p1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->SELECTION_DISPLAY_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->publishEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V

    :cond_0
    return-void
.end method

.method public setSelectionMethod(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionMethod:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    if-eq p1, v0, :cond_0

    .line 95
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionMethod:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    .line 96
    sget-object p1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->SELECTION_METHOD_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->publishEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V

    :cond_0
    return-void
.end method

.method protected setSelectionState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq p1, v0, :cond_0

    .line 87
    iput-object p1, p0, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->selectionState:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 88
    sget-object p1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/selection/BaseObjectSelectionModel;->publishEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;)V

    :cond_0
    return-void
.end method

.method protected shouldDisplaySelectionButtonsOnQH()Z
    .locals 1

    .line 246
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldDisplaySelectionButtonsOnQH()Z

    move-result v0

    return v0
.end method
