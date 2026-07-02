.class public Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;
.super Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;
.source "NotesDecorationProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
    .locals 0

    .line 36
    invoke-direct {p0, p2}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;-><init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;->annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 40
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private getNoteDecorations(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;->annotationManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getNotesInRange(II)Ljava/util/List;

    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;->toContentDecoration(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getNotesFromSearchResults()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getSearchResults()Ljava/util/List;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/search/ISearchResult;

    .line 165
    instance-of v3, v2, Lcom/amazon/kcp/search/InBookAnnotationSearchResult;

    if-eqz v3, :cond_0

    .line 166
    check-cast v2, Lcom/amazon/kcp/search/InBookAnnotationSearchResult;

    .line 167
    invoke-virtual {v2}, Lcom/amazon/kcp/search/InBookAnnotationSearchResult;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v2

    .line 168
    invoke-interface {v2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 169
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private toContentDecoration(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;

    move-result-object v1

    if-nez p1, :cond_0

    return-object v0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;->getNotesFromSearchResults()Ljava/util/List;

    move-result-object v2

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 97
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 101
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 102
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    .line 103
    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-virtual {v1, v5}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object v5

    .line 104
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;

    move-result-object v6

    goto :goto_1

    .line 107
    :cond_2
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v5

    .line 108
    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createPositionObject(I)Lcom/amazon/krf/platform/Position;

    move-result-object v6

    :goto_1
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-nez v3, :cond_3

    .line 113
    sget-object v3, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->NOTE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->createDefaultContentDecorationStyle(Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;)Lcom/amazon/krf/platform/ContentDecorationStyle;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v0

    .line 120
    :cond_3
    new-instance v7, Lcom/amazon/krf/platform/PositionRange;

    invoke-direct {v7, v5, v6}, Lcom/amazon/krf/platform/PositionRange;-><init>(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/Position;)V

    .line 121
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;->SEARCHED_NOTE_ICON:Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;->DEFAULT_NOTE_ICON:Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    .line 123
    :goto_2
    new-instance v6, Lcom/amazon/krf/platform/NoteContentDecorationPayload;

    invoke-interface {v4}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-direct {v6, v4, v5}, Lcom/amazon/krf/platform/NoteContentDecorationPayload;-><init>(Ljava/lang/String;I)V

    .line 126
    new-instance v4, Lcom/amazon/krf/platform/ContentDecoration;

    invoke-direct {v4, v7, v3, v6}, Lcom/amazon/krf/platform/ContentDecoration;-><init>(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;Lcom/amazon/krf/platform/ContentDecorationPayload;)V

    .line 127
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public getContentDecorations(Lcom/amazon/krf/platform/PositionRange;Lcom/amazon/krf/platform/ContentDecorationStyle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PositionRange;",
            "Lcom/amazon/krf/platform/ContentDecorationStyle;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;"
        }
    .end annotation

    const-string v0, "NotesDecorationProvider.getContentDecorations"

    const/4 v1, 0x1

    .line 45
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getLastPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    long-to-int v3, v2

    const/4 v2, -0x1

    if-ne v3, v2, :cond_0

    const v3, 0x7fffffff

    .line 52
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result v2

    sget-object v4, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->NOTE:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v2, v4, :cond_1

    invoke-virtual {p2}, Lcom/amazon/krf/platform/ContentDecorationStyle;->getContentDecorationStyleID()I

    move-result p2

    sget-object v2, Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;->INVALID:Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne p2, v2, :cond_2

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide p1

    long-to-int p2, p1

    invoke-direct {p0, p2, v3}, Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;->getNoteDecorations(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const/4 p1, 0x0

    .line 56
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public updateAnnotations(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = false
    .end annotation

    .line 137
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_ADDED_REMOVED:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v0, v1, :cond_3

    .line 138
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAddedAnnotations()Ljava/util/List;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getRemovedAnnotations()Ljava/util/List;

    move-result-object p1

    .line 142
    invoke-direct {p0, v0}, Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;->toContentDecoration(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 143
    invoke-direct {p0, p1}, Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;->toContentDecoration(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 145
    invoke-direct {p0}, Lcom/amazon/kindle/contentdecoration/NotesDecorationProvider;->getNotesFromSearchResults()Ljava/util/List;

    move-result-object v2

    .line 146
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 147
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->getDocViewer()Lcom/amazon/kindle/rendering/KRIFDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->refreshSearchResults()V

    .line 153
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 154
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/contentdecoration/AbstractContentDecorationProvider;->postDecorationsUpdate(Ljava/util/List;Ljava/util/List;)V

    :cond_3
    return-void
.end method
