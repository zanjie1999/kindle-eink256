.class public final Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;
.super Ljava/lang/Object;
.source "AbstractAnnotationRendererFactory.java"


# static fields
.field private static drawnRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final renderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->renderers:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->drawnRects:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getAllAnnotations(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;

    monitor-enter v0

    .line 80
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    sget-object v2, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->renderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;

    .line 82
    invoke-interface {v3, p0, p1}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getNotes(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 84
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 91
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p0

    .line 92
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAnnotationItemManager()Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemManager;

    move-result-object p1

    .line 93
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemManager;->getAnnotationItems(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 96
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;

    .line 97
    invoke-static {p1}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getAnnotation(Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v2

    .line 98
    new-instance v3, Lcom/amazon/kcp/reader/Note;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-interface {p1}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {p1}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;->getDisplayText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/amazon/kcp/reader/Note;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 100
    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    const/4 v2, 0x0

    .line 101
    invoke-virtual {v3, v2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->setIsRemovable(Z)V

    .line 102
    invoke-interface {p1}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;->isMutable()Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->setIsMutable(Z)V

    .line 104
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getAnnotation(Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 9

    .line 114
    new-instance v8, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;->getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {p0}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-interface {p0}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-interface {p0}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v5

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotation;-><init>(Ljava/lang/String;IIIILjava/lang/String;[B)V

    return-object v8
.end method

.method public static declared-synchronized getAnnotationByStartPositionAndType(Lcom/amazon/android/docviewer/KindleDocViewer;II)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 4

    const-class v0, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->renderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;

    .line 127
    invoke-interface {v2, p0, p1, p2}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getAnnotationForStartPositionAndType(Lcom/amazon/android/docviewer/KindleDocViewer;II)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 129
    monitor-exit v0

    return-object v2

    .line 133
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 135
    monitor-exit v0

    return-object v1

    .line 139
    :cond_2
    :try_start_2
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p0

    .line 140
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAnnotationItemManager()Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemManager;

    move-result-object v2

    .line 141
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItemManager;->getAnnotationItems(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/Collection;

    move-result-object p0

    .line 143
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;

    .line 144
    invoke-interface {v2}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;->getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v3, p2, :cond_3

    invoke-interface {v2}, Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    if-ne p1, v3, :cond_3

    .line 145
    invoke-static {v2}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getAnnotation(Lcom/amazon/kindle/krx/annotations/items/IAnnotationItem;)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 149
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getRenderers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->renderers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static declared-synchronized register(Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;)V
    .locals 4

    const-class v0, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;

    monitor-enter v0

    const/4 v1, 0x0

    .line 48
    :goto_0
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->renderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 49
    sget-object v2, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->renderers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;

    invoke-interface {v2}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getPriority()I

    move-result v2

    invoke-interface {p0}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getPriority()I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    sget-object v2, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->renderers:Ljava/util/List;

    invoke-interface {v2, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized render(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;)V
    .locals 9

    const-class v0, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->drawnRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 65
    sget-object v1, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->renderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;

    .line 66
    sget-object v8, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->drawnRects:Ljava/util/List;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->render(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 67
    invoke-interface {v2}, Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;->getPriority()I

    move-result v2

    if-lez v2, :cond_0

    .line 68
    sget-object v2, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->drawnRects:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
