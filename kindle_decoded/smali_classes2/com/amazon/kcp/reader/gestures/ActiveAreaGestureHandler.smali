.class public Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "ActiveAreaGestureHandler.java"

# interfaces
.implements Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;


# static fields
.field private static final MIN_IMAGE_HEIGHT:I = 0xf

.field private static final MIN_IMAGE_WIDTH:I = 0xf

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cachedActiveAreaVirtualViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private cachedAnnotationVirtualViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private cachedBookMarkVirtualViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private foundActiveAreaOnPointerUp:Z

.field private gestureEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

.field protected gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

.field private oldEndPosition:I

.field private oldStartPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->oldStartPosition:I

    .line 54
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->oldEndPosition:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedActiveAreaVirtualViews:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedAnnotationVirtualViews:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedBookMarkVirtualViews:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    .line 62
    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->registerForAccessibility(Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;)Z

    .line 63
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private getRectForNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;
    .locals 6

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 352
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSelector()Lcom/amazon/android/docviewer/IObjectSelector;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IObjectSelector;->getRectForNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 362
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-virtual {v0, v2, v4, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return-object v0
.end method

.method private isImageSizeValid(Lcom/amazon/system/drawing/Rectangle;)Z
    .locals 2

    .line 381
    iget v0, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    iget p1, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateActiveAreaVirtualViews(Z)V
    .locals 9

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    if-eqz p1, :cond_1

    goto/16 :goto_3

    .line 199
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result p1

    .line 200
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v1

    .line 202
    iget v2, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->oldEndPosition:I

    if-ne v2, v1, :cond_2

    iget v2, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->oldStartPosition:I

    if-ne v2, p1, :cond_2

    return-void

    .line 207
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedActiveAreaVirtualViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 208
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedAnnotationVirtualViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 209
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedBookMarkVirtualViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x2

    .line 211
    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/IDocumentPage;->getElements(I)Ljava/util/Vector;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/IPageElement;

    .line 213
    invoke-interface {v2}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v3

    if-lt v3, p1, :cond_3

    invoke-interface {v2}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result v3

    if-gt v3, v1, :cond_3

    .line 214
    invoke-interface {v2}, Lcom/amazon/android/docviewer/IPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v2

    .line 217
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_4

    .line 218
    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/system/drawing/Rectangle;

    .line 219
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v5, 0x1

    .line 220
    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 221
    invoke-virtual {v2, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v3, v6}, Lcom/amazon/system/drawing/Rectangle;->add(Lcom/amazon/system/drawing/Rectangle;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 225
    :cond_4
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v3}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    .line 226
    sget-object v2, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->TAG:Ljava/lang/String;

    const-string v5, "Image with no covering rectangle in content"

    invoke-static {v2, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_5
    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->isImageSizeValid(Lcom/amazon/system/drawing/Rectangle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    new-instance v2, Lcom/amazon/kcp/reader/accessibility/VirtualView;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v3, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v7, v3, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v8, v3, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v8, v6

    iget v3, v3, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v3, v7

    invoke-direct {v5, v6, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "Image"

    invoke-direct {v2, v5, v3, v4}, Lcom/amazon/kcp/reader/accessibility/VirtualView;-><init>(Landroid/graphics/Rect;Ljava/lang/String;Z)V

    .line 231
    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedActiveAreaVirtualViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_6
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    return-void

    .line 191
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedActiveAreaVirtualViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 192
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    .line 195
    :cond_8
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedActiveAreaVirtualViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private updateAnnotationVirtualViews(Z)V
    .locals 13

    .line 245
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 247
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getCurrentPage()Lcom/amazon/android/docviewer/IDocumentPage;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 250
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 253
    sget-object p1, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->TAG:Ljava/lang/String;

    const-string v0, "No context in GestureService\'s ReaderLayout. Can\'t make strings"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedAnnotationVirtualViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 255
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    return-void

    .line 259
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 261
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v3

    .line 262
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v4

    .line 264
    iget-object v5, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedAnnotationVirtualViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    .line 270
    :cond_2
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v5

    const/4 v6, 0x1

    .line 271
    invoke-interface {v5, v6, v3, v4}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object v5

    .line 269
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    const/4 v5, 0x2

    .line 276
    invoke-interface {p1, v5, v3, v4}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsOverlappingRange(III)Ljava/util/List;

    move-result-object p1

    .line 274
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    new-instance p1, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler$1;-><init>(Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;)V

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 286
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 288
    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    .line 287
    invoke-interface {v0, v3, v4}, Lcom/amazon/android/docviewer/IDocumentPage;->createCoveringRectangles(II)Ljava/util/Vector;

    move-result-object v3

    .line 290
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 291
    invoke-virtual {v3}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 292
    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 294
    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v7

    .line 296
    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 297
    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 298
    iget v10, v4, Landroid/graphics/Rect;->right:I

    iget v11, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 299
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 302
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x0

    if-eq v7, v6, :cond_5

    if-eq v7, v5, :cond_4

    .line 315
    sget-object v3, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Detected invalid annotation type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    goto :goto_2

    .line 306
    :cond_4
    sget v4, Lcom/amazon/kindle/krl/R$string;->speak_highlight:I

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    invoke-virtual {v1, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 307
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v8, v9, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v4

    move-object v4, v7

    goto :goto_2

    .line 311
    :cond_5
    sget v3, Lcom/amazon/kindle/krl/R$string;->speak_note:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v11

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->getRectForNote(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Landroid/graphics/Rect;

    move-result-object v4

    .line 318
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 319
    new-instance v2, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler$2;

    invoke-direct {v2, p0, v4, v3, v11}, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler$2;-><init>(Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;Landroid/graphics/Rect;Ljava/lang/String;Z)V

    .line 326
    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedAnnotationVirtualViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 328
    :cond_6
    sget-object v3, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Empty virtual view for: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v2, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 333
    :cond_7
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/16 v0, 0x6e

    return v0
.end method

.method public getVirtualViews(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->updateActiveAreaVirtualViews(Z)V

    .line 173
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->updateAnnotationVirtualViews(Z)V

    .line 175
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedActiveAreaVirtualViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedAnnotationVirtualViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedBookMarkVirtualViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public onAccessibilityDisabled()V
    .locals 0

    return-void
.end method

.method public onAccessibilityEnabled()V
    .locals 0

    return-void
.end method

.method public onAnnotationManagerEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 338
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 340
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->cachedAnnotationVirtualViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public onDoubleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->supportsActiveAreas()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    sget-object v2, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v0, p1, v2}, Lcom/amazon/kcp/reader/gestures/GestureService;->executeSelectorAction(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->onToggleActiveArea()V

    return v0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    .line 79
    invoke-virtual {v3}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 78
    invoke-virtual {p1, v2, v3, v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    .line 81
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/gestures/GestureService;->isComicBook()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p1, :cond_4

    .line 82
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 83
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/gestures/GestureService;->getActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    .line 85
    check-cast p1, Lcom/amazon/android/docviewer/IImagePageElement;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IImagePageElement;->getImageId()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {v2, p1}, Lcom/amazon/kcp/reader/ImageZoomActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 87
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "ImageZoomActivity"

    const-string v5, "ImageZoomLaunchViaDoubleTap"

    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 97
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 102
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->removeSelection()V

    .line 105
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->foundActiveAreaOnPointerUp:Z

    .line 130
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getPageTurnOffset()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 149
    :cond_2
    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v1, v2, :cond_3

    return v0

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 158
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x1

    .line 157
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/reader/gestures/GestureService;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    sget-object v3, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v2, p1, v3}, Lcom/amazon/kcp/reader/gestures/GestureService;->checkSelectorAction(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    sget-object v3, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->DOUBLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    .line 161
    invoke-virtual {v2, p1, v3}, Lcom/amazon/kcp/reader/gestures/GestureService;->checkSelectorAction(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v1, :cond_4

    .line 162
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    .line 163
    :cond_5
    :goto_0
    iput-boolean v4, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->foundActiveAreaOnPointerUp:Z

    return v4
.end method

.method public onSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->foundActiveAreaOnPointerUp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->supportsActiveAreas()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/ActiveAreaGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    sget-object v1, Lcom/amazon/android/docviewer/IObjectSelector$UserAction;->SINGLE_TAP:Lcom/amazon/android/docviewer/IObjectSelector$UserAction;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->executeSelectorAction(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
