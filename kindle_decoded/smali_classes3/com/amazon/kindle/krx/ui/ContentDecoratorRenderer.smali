.class public Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;
.super Ljava/lang/Object;
.source "ContentDecoratorRenderer.java"

# interfaces
.implements Lcom/amazon/kindle/annotation/ui/IAnnotationRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$SortableProviderWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;

.field private static phlLineDrawer:Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;

.field private static textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;


# instance fields
.field private contentDecorationProvider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

.field private contentDecorator:Lcom/amazon/kindle/krx/contentdecoration/IContentDecorator;

.field private dummyEndPos:Lcom/amazon/kindle/model/Annotations/IntPosition;

.field private dummyPage:Lcom/amazon/kindle/krx/reader/Page;

.field private dummyStartPos:Lcom/amazon/kindle/model/Annotations/IntPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->TAG:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDrawer;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;

    .line 106
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/contentdecoration/TextDrawer;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;

    .line 107
    new-instance v0, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/contentdecoration/DashedLineDrawer;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->phlLineDrawer:Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    new-instance v0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$SortableProviderWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$SortableProviderWrapper;-><init>(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;-><init>(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->contentDecorationProvider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    .line 131
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;->getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->getDecoratorForStyle(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;)Lcom/amazon/kindle/krx/contentdecoration/IContentDecorator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->contentDecorator:Lcom/amazon/kindle/krx/contentdecoration/IContentDecorator;

    .line 132
    new-instance p1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->dummyStartPos:Lcom/amazon/kindle/model/Annotations/IntPosition;

    .line 133
    new-instance p1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->dummyEndPos:Lcom/amazon/kindle/model/Annotations/IntPosition;

    .line 134
    new-instance p1, Lcom/amazon/kindle/krx/reader/Page;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/amazon/kindle/krx/reader/Page;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->dummyPage:Lcom/amazon/kindle/krx/reader/Page;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getDecorationsForBookAndRange(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->dummyPage:Lcom/amazon/kindle/krx/reader/Page;

    const-string v1, ""

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/amazon/kindle/krx/reader/Page;->setPage(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 228
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->contentDecorationProvider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    iget-object p2, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->dummyPage:Lcom/amazon/kindle/krx/reader/Page;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/providers/IProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method private getDecoratorForStyle(Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;)Lcom/amazon/kindle/krx/contentdecoration/IContentDecorator;
    .locals 3

    .line 138
    sget-object v0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer$1;->$SwitchMap$com$amazon$kindle$krx$contentdecoration$DecorationStyle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 151
    sget-object p1, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->TAG:Ljava/lang/String;

    const-string v0, "DecorationStyle not supported by availible IContentDecorators. Decorations will not be drawn for this provider."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 149
    :cond_0
    new-instance p1, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDecorator;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/contentdecoration/AmplifyHighlightDecorator;-><init>()V

    return-object p1

    .line 147
    :cond_1
    new-instance p1, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/contentdecoration/WordWiseDecorator;-><init>()V

    return-object p1

    .line 144
    :cond_2
    new-instance p1, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;

    sget-object v0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->textDrawer:Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;

    sget-object v1, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->phlLineDrawer:Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;

    sget-object v2, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/kindle/krx/contentdecoration/PHLLineDecorator;-><init>(Lcom/amazon/kindle/krx/contentdecoration/ITextDrawer;Lcom/amazon/kindle/krx/contentdecoration/ILineDrawer;Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;)V

    return-object p1

    .line 141
    :cond_3
    new-instance p1, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecorator;

    sget-object v0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->highlightDrawer:Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecorator;-><init>(Lcom/amazon/kindle/krx/contentdecoration/IHighlightDrawer;)V

    return-object p1
.end method


# virtual methods
.method public getAnnotationForStartPositionAndType(Lcom/amazon/android/docviewer/KindleDocViewer;II)Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnnotations(Lcom/amazon/android/docviewer/KindleDocViewer;II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "II)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getContentDecorationAt(II)Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->contentDecorator:Lcom/amazon/kindle/krx/contentdecoration/IContentDecorator;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecorator;->getContentDecorationAt(II)Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;

    move-result-object p1

    return-object p1
.end method

.method public getContentDecorations(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation

    .line 211
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->getDecorationsForBookAndRange(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->contentDecorationProvider:Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;->getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v0

    return-object v0
.end method

.method public getNotes(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;
    .locals 0
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

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPriority()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->contentDecorator:Lcom/amazon/kindle/krx/contentdecoration/IContentDecorator;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecorator;->getPriority()I

    move-result v0

    return v0
.end method

.method public render(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Landroid/graphics/Canvas;",
            "Lcom/amazon/android/docviewer/IDocumentPage;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 159
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    invoke-interface {p3}, Lcom/amazon/android/docviewer/IDocumentPage;->getFirstElementPositionId()I

    move-result v0

    .line 163
    invoke-interface {p3}, Lcom/amazon/android/docviewer/IDocumentPage;->getLastElementPositionId()I

    move-result v1

    if-gez v1, :cond_1

    move v1, v0

    .line 171
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->dummyStartPos:Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;->setPosValue(I)V

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->dummyEndPos:Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;->setPosValue(I)V

    .line 173
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->dummyStartPos:Lcom/amazon/kindle/model/Annotations/IntPosition;

    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->dummyEndPos:Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->getDecorationsForBookAndRange(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 174
    iget-object v3, p0, Lcom/amazon/kindle/krx/ui/ContentDecoratorRenderer;->contentDecorator:Lcom/amazon/kindle/krx/contentdecoration/IContentDecorator;

    if-eqz v3, :cond_2

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 175
    invoke-interface/range {v3 .. v9}, Lcom/amazon/kindle/krx/contentdecoration/IContentDecorator;->decorate(Ljava/util/Collection;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 177
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
