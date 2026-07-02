.class final Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;
.super Ljava/lang/Object;
.source "MobiObjectSelector.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IObjectSelector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_actionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

.field private final m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

.field private m_activeAreaSelectionListener:Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;

.field private m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

.field private m_highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

.field private final m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

.field private m_noteSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

.field private m_selectedActiveAreaIndex:I

.field private m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

.field private m_selectedNoteIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    .line 70
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    .line 72
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 74
    sget-object p2, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->UNKNOWN:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 75
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_actionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

    return-void
.end method

.method private static compareItemPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 4

    .line 628
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ge v0, v1, :cond_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_1

    .line 635
    :cond_1
    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-ge p0, p1, :cond_2

    goto :goto_0

    :cond_2
    if-le p0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private static convertKRFRectangleToRect(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Landroid/graphics/Rect;
    .locals 4

    .line 651
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_x()I

    move-result v0

    .line 652
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_y()I

    move-result v1

    .line 653
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_width()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_height()I

    move-result p0

    add-int/2addr p0, v1

    invoke-direct {v2, v0, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private isNoObjectSelected()Z
    .locals 1

    .line 470
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private performActionInternal(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)I
    .locals 6

    .line 426
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->validateIndices()V

    .line 428
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-nez v0, :cond_0

    return v2

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    sget-object v1, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    const/4 v3, 0x2

    if-ne v0, v1, :cond_2

    .line 433
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v0

    .line 434
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_actionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getType()J

    move-result-wide v4

    invoke-interface {v1, p1, v4, v5}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;->shouldExecuteActiveArea(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 438
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_actionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;->executeActiveArea(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v2

    .line 444
    :cond_2
    sget-object v1, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->shouldExecuteNote(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 445
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getAreas()Ljava/util/List;

    move-result-object p1

    .line 446
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    .line 447
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 449
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    if-eqz v0, :cond_3

    .line 450
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;->onNoteExecute(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    :cond_3
    return v3

    .line 454
    :cond_4
    sget-object p1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t find the annotation selected by the user to popup an edit box !"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_5
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    sget-object v1, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->HIGHLIGHT:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    if-ne p1, v0, :cond_6

    .line 457
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    if-eqz p1, :cond_6

    .line 458
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;->onNoteExecute(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    return v3

    :cond_6
    :goto_0
    return v2
.end method

.method private refreshOverlayUI()V
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    sget-object v1, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    if-ne v0, v1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaSelectionListener:Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaSelectionListener:Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;->onActiveAreaSelection(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)V

    goto :goto_0

    .line 605
    :cond_0
    sget-object v1, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    if-ne v0, v1, :cond_1

    .line 606
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getAreas()Ljava/util/List;

    move-result-object v0

    .line 608
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;->onNoteSelection(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaSelectionListener:Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;->onActiveAreaSelection(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)V

    .line 612
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;->onNoteSelection(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private selectActiveAreaFromIndexIfNoNote(I)Z
    .locals 6

    .line 493
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getAreas()Ljava/util/List;

    move-result-object v1

    .line 496
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 497
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    .line 498
    sget-object p1, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 499
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->refreshOverlayUI()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private selectFirstSelectableObject()Z
    .locals 8

    .line 569
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getAreas()Ljava/util/List;

    move-result-object v1

    .line 572
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-lez v7, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 573
    invoke-virtual {v0, v4, v5}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    move-result-object v0

    .line 574
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    .line 576
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getActiveRectangles()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->convertKRFRectangleToRect(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Landroid/graphics/Rect;

    move-result-object v0

    .line 577
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getRectangles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 578
    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->compareItemPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 581
    iput v6, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    .line 582
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 584
    iput v6, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    .line 585
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 588
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->refreshOverlayUI()V

    return v1

    :cond_2
    return v6
.end method

.method private selectLastSelectableObject()Z
    .locals 9

    .line 535
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getAreas()Ljava/util/List;

    move-result-object v1

    .line 538
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 539
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v2

    const-wide/16 v7, 0x1

    sub-long/2addr v2, v7

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    move-result-object v2

    .line 540
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    .line 542
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getActiveRectangles()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->convertKRFRectangleToRect(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Landroid/graphics/Rect;

    move-result-object v2

    .line 543
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getRectangles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 544
    invoke-static {v2, v3}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->compareItemPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v0

    long-to-int v1, v0

    sub-int/2addr v1, v7

    iput v1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    .line 548
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    .line 550
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    .line 551
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 554
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->refreshOverlayUI()V

    return v7

    :cond_2
    return v4
.end method

.method private selectNoteAreaFromIndexIfNoActiveArea(I)Z
    .locals 6

    .line 514
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getAreas()Ljava/util/List;

    move-result-object v1

    .line 517
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 518
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    .line 519
    sget-object p1, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 520
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->refreshOverlayUI()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private shouldExecuteNote(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
    .locals 1

    .line 657
    sget-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DEFAULT:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private validateIndices()V
    .locals 5

    .line 478
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getAreas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    .line 479
    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 480
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    .line 481
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    :cond_1
    return-void
.end method


# virtual methods
.method public canPerformActionAt(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;III)Z
    .locals 8

    .line 276
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->hasActionAnywhere(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v0, p2, p3, p4}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getArea(III)Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->shouldExecuteNote(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    int-to-long v2, p4

    invoke-virtual {v0, p2, p3, v2, v3}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->createActiveAreasAt(IIJ)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_2

    return p3

    .line 288
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    :goto_0
    cmp-long p4, v4, v2

    if-gez p4, :cond_4

    .line 291
    invoke-virtual {p2, v4, v5}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    move-result-object p4

    .line 292
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_actionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

    invoke-virtual {p4}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getType()J

    move-result-wide v6

    invoke-interface {v0, p1, v6, v7}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;->shouldExecuteActiveArea(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;J)Z

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_3

    .line 297
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->delete()V

    return v1

    :cond_3
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->delete()V

    return p3

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->delete()V

    .line 298
    throw p1
.end method

.method public getRectForNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getRectForNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public hasActionAnywhere(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_actionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

    if-eqz v0, :cond_1

    .line 319
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;->canHandleAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_actionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;->canHandleFallbackAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasSelectableObjects()Z
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDoubleTapObjectSelected()Z
    .locals 5

    .line 303
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->validateIndices()V

    .line 305
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    sget-object v1, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v0

    .line 310
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_actionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

    sget-object v2, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getType()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;->shouldExecuteActiveArea(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;J)Z

    move-result v0

    return v0
.end method

.method public performAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)I
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_actionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;->handleAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 412
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->performActionInternal(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_actionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;->handleFallbackAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public selectAt(III)Z
    .locals 24

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 336
    iget-object v4, v1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v4, v0, v2, v3}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getArea(III)Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 339
    iget-object v7, v1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v7}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getAreas()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    .line 340
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 341
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_0

    .line 342
    iput v8, v1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 347
    :cond_1
    :goto_1
    sget-object v4, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v4, v1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_8

    .line 352
    iget-object v7, v1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    int-to-long v8, v3

    invoke-virtual {v7, v0, v2, v8, v9}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->createActiveAreasAt(IIJ)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 355
    :try_start_0
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :goto_3
    cmp-long v13, v11, v7

    if-gez v13, :cond_7

    .line 358
    invoke-virtual {v3, v11, v12}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    move-result-object v13

    .line 359
    invoke-virtual {v13}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getType()J

    move-result-wide v14

    const-wide/16 v16, 0x800

    const-wide/16 v18, 0x1

    cmp-long v20, v14, v16

    if-eqz v20, :cond_5

    const-wide/16 v16, 0x20

    cmp-long v20, v14, v16

    if-nez v20, :cond_3

    goto :goto_5

    .line 366
    :cond_3
    iget-object v14, v1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v14}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v14

    move-wide/from16 v16, v7

    move-wide v6, v9

    .line 367
    :goto_4
    invoke-virtual {v14}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v20

    cmp-long v8, v6, v20

    if-gez v8, :cond_6

    .line 368
    invoke-static {v13}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getCPtr(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)J

    move-result-wide v20

    invoke-virtual {v14, v6, v7}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    move-result-object v8

    invoke-static {v8}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getCPtr(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)J

    move-result-wide v22

    cmp-long v8, v20, v22

    if-nez v8, :cond_4

    long-to-int v4, v6

    .line 369
    iput v4, v1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    .line 370
    sget-object v4, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v4, v1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    goto :goto_6

    :cond_4
    add-long v6, v6, v18

    goto :goto_4

    :cond_5
    :goto_5
    move-wide/from16 v16, v7

    :cond_6
    :goto_6
    add-long v11, v11, v18

    move-wide/from16 v7, v16

    goto :goto_3

    .line 377
    :cond_7
    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->delete()V

    goto :goto_7

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->delete()V

    .line 378
    throw v0

    :cond_8
    :goto_7
    if-nez v4, :cond_9

    .line 384
    iget-object v3, v1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v3, v0, v2, v5}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getHighlight(IIZ)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    iput-object v0, v1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    if-eqz v0, :cond_9

    .line 387
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->HIGHLIGHT:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, v1, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    const/4 v6, 0x1

    goto :goto_8

    :cond_9
    move v6, v4

    :goto_8
    if-eqz v6, :cond_a

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->refreshOverlayUI()V

    :cond_a
    return v6
.end method

.method public selectNext()Z
    .locals 14

    .line 122
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->validateIndices()V

    .line 125
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->isNoObjectSelected()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 126
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->selectActiveAreaFromIndexIfNoNote(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 128
    :cond_0
    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->selectNoteAreaFromIndexIfNoActiveArea(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->selectFirstSelectableObject()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v0

    .line 138
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getAreas()Ljava/util/List;

    move-result-object v3

    .line 141
    iget v4, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    int-to-long v4, v4

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    cmp-long v10, v4, v6

    if-ltz v10, :cond_4

    iget v4, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-lt v4, v5, :cond_4

    return v1

    .line 146
    :cond_4
    iget v4, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-le v4, v5, :cond_5

    int-to-long v10, v4

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v12

    sub-long/2addr v12, v8

    cmp-long v4, v10, v12

    if-gez v4, :cond_5

    .line 147
    iget v4, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    add-int/2addr v4, v2

    int-to-long v7, v4

    invoke-virtual {v0, v7, v8}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v6

    .line 152
    :goto_0
    iget v4, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    if-le v4, v5, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_6

    .line 153
    iget v4, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    add-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    :cond_6
    if-nez v0, :cond_7

    if-nez v6, :cond_7

    .line 158
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->TAG:Ljava/lang/String;

    const-string v2, "Strange behaviour in MobiObjectSelector !!!"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    if-nez v0, :cond_8

    .line 163
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 164
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    goto :goto_1

    :cond_8
    if-nez v6, :cond_9

    .line 168
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 169
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    goto :goto_1

    .line 173
    :cond_9
    sget-object v3, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->UNKNOWN:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 176
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getActiveRectangles()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->convertKRFRectangleToRect(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Landroid/graphics/Rect;

    move-result-object v0

    .line 177
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getRectangles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 179
    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->compareItemPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    if-gtz v0, :cond_a

    .line 180
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 181
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    .line 185
    :cond_a
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    sget-object v1, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->UNKNOWN:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    if-ne v0, v1, :cond_b

    .line 186
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 187
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    .line 191
    :cond_b
    :goto_1
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->refreshOverlayUI()V

    return v2
.end method

.method public selectNone()V
    .locals 1

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    .line 113
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedHighlight:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 115
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->UNKNOWN:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 117
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->refreshOverlayUI()V

    return-void
.end method

.method public selectPrevious()Z
    .locals 8

    .line 198
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->validateIndices()V

    .line 201
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->hasSelectableObjects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaManager:Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ActiveAreaManager;->getActiveAreas()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;

    move-result-object v0

    .line 205
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteAreaManager:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->getAreas()Ljava/util/List;

    move-result-object v2

    .line 208
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->isNoObjectSelected()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 209
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getCount()J

    move-result-wide v5

    long-to-int v0, v5

    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->selectActiveAreaFromIndexIfNoNote(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 211
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->selectNoteAreaFromIndexIfNoActiveArea(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    .line 213
    :cond_2
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->selectLastSelectableObject()Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    return v1

    .line 221
    :cond_4
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    sget-object v5, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    if-ne v3, v5, :cond_5

    .line 222
    iget v3, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    goto :goto_0

    .line 223
    :cond_5
    sget-object v5, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    if-ne v3, v5, :cond_6

    .line 224
    iget v3, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    .line 229
    :cond_6
    :goto_0
    iget v3, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedActiveAreaIndex:I

    const/4 v5, 0x0

    if-ltz v3, :cond_7

    int-to-long v6, v3

    .line 230
    invoke-virtual {v0, v6, v7}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateActiveAreaArray;->getItem(J)Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v5

    .line 235
    :goto_1
    iget v3, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_selectedNoteIndex:I

    if-ltz v3, :cond_8

    .line 236
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/amazon/android/docviewer/mobi/MobiAnnotationArea;

    :cond_8
    if-nez v0, :cond_9

    if-nez v5, :cond_9

    .line 241
    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->TAG:Ljava/lang/String;

    const-string v2, "Strange behaviour in CTPZObjectSelector !!!"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_9
    if-nez v0, :cond_a

    .line 246
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    goto :goto_2

    :cond_a
    if-nez v5, :cond_b

    .line 250
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    goto :goto_2

    .line 254
    :cond_b
    sget-object v2, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->UNKNOWN:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 257
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;->getActiveRectangles()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->convertKRFRectangleToRect(Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;)Landroid/graphics/Rect;

    move-result-object v0

    .line 258
    invoke-virtual {v5}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->getRectangles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 259
    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->compareItemPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    if-ltz v0, :cond_c

    .line 260
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->ACTIVE_AREA:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 264
    :cond_c
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    sget-object v1, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->UNKNOWN:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    if-ne v0, v1, :cond_d

    .line 265
    sget-object v0, Lcom/amazon/android/docviewer/selection/AreaSelectionType;->NOTE:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_currentSelectionType:Lcom/amazon/android/docviewer/selection/AreaSelectionType;

    .line 269
    :cond_d
    :goto_2
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->refreshOverlayUI()V

    return v4
.end method

.method setActionHandler(Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_actionHandler:Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;

    return-void
.end method

.method public setActiveAreaSelectionListener(Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_activeAreaSelectionListener:Lcom/amazon/android/docviewer/mobi/IActiveAreaSelectionListener;

    return-void
.end method

.method public setHighlightSelectionListener(Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_highlightSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    return-void
.end method

.method setNoteSelectionListener(Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;->m_noteSelectionListener:Lcom/amazon/android/docviewer/mobi/INoteSelectionListener;

    return-void
.end method
