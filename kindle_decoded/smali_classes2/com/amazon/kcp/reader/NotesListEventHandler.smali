.class Lcom/amazon/kcp/reader/NotesListEventHandler;
.super Ljava/lang/Object;
.source "NotesListEventHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Lcom/amazon/kcp/redding/ReddingActivity;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private enterAnim:I

.field private exitAnim:I

.field private filter:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;

.field private listView:Landroid/widget/ListView;

.field private notesScreen:Lcom/amazon/kcp/reader/ui/NotesScreenLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/NotesListEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/widget/ListView;Lcom/amazon/kcp/reader/ui/NotesScreenLayout;Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 128
    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/NotesListEventHandler;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/widget/ListView;Lcom/amazon/kcp/reader/ui/NotesScreenLayout;ZLcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/widget/ListView;Lcom/amazon/kcp/reader/ui/NotesScreenLayout;ZLcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->enterAnim:I

    .line 77
    iput v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->exitAnim:I

    .line 90
    iput-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    .line 91
    iput-object p2, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 92
    iput-object p3, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->listView:Landroid/widget/ListView;

    .line 93
    iput-object p4, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->notesScreen:Lcom/amazon/kcp/reader/ui/NotesScreenLayout;

    .line 94
    iput-object p6, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->filter:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;

    if-eqz p5, :cond_0

    .line 97
    sget p2, Lcom/amazon/kindle/krl/R$anim;->no_anim:I

    iput p2, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->enterAnim:I

    .line 98
    sget p2, Lcom/amazon/kindle/krl/R$anim;->slide_fade_to_bottom:I

    iput p2, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->exitAnim:I

    .line 101
    :cond_0
    new-instance p2, Lcom/amazon/kcp/reader/NotesListEventHandler$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/reader/NotesListEventHandler$1;-><init>(Lcom/amazon/kcp/reader/NotesListEventHandler;Lcom/amazon/kcp/redding/ReddingActivity;)V

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/NotesListEventHandler;Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->recordViewAnnotation(Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/NotesListEventHandler;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->enterAnim:I

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/NotesListEventHandler;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->exitAnim:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/kcp/redding/ReddingActivity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/NotesListEventHandler;)Landroid/widget/ListView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->filter:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/kcp/reader/ui/NotesScreenLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->notesScreen:Lcom/amazon/kcp/reader/ui/NotesScreenLayout;

    return-object p0
.end method

.method private populateContextMenu(Landroid/view/ContextMenu;Lcom/amazon/kcp/reader/Note;ILandroid/widget/AdapterView;)V
    .locals 7

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->notes_location_type:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/kcp/reader/NotesListEventHandler;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 166
    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v4

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p2, Lcom/amazon/kcp/reader/Note;->text:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 165
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 172
    sget v0, Lcom/amazon/kindle/krl/R$string;->notes_context_view:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/NotesListEventHandler$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/amazon/kcp/reader/NotesListEventHandler$2;-><init>(Lcom/amazon/kcp/reader/NotesListEventHandler;Lcom/amazon/kcp/reader/Note;I)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 190
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget v0, Lcom/amazon/kindle/krl/R$string;->notes_context_edit:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/NotesListEventHandler$3;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/reader/NotesListEventHandler$3;-><init>(Lcom/amazon/kcp/reader/NotesListEventHandler;Lcom/amazon/kcp/reader/Note;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 209
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->isRemovable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    sget v0, Lcom/amazon/kindle/krl/R$string;->notes_context_delete:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/NotesListEventHandler$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/amazon/kcp/reader/NotesListEventHandler$4;-><init>(Lcom/amazon/kcp/reader/NotesListEventHandler;Lcom/amazon/kcp/reader/Note;I)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 230
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result p3

    if-eq p3, v2, :cond_2

    .line 231
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result p3

    const/4 v0, 0x7

    if-ne p3, v0, :cond_4

    .line 232
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->values()[Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;

    move-result-object p3

    array-length v0, p3

    :goto_0
    if-ge v5, v0, :cond_4

    aget-object v1, p3, v5

    .line 233
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getColorTitle()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getMetadata()Ljava/util/Map;

    move-result-object v3

    const-string v4, "mchl_color"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 237
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;->getChangeTextResId()I

    move-result v1

    .line 238
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v3, Lcom/amazon/kcp/reader/NotesListEventHandler$5;

    invoke-direct {v3, p0, p2, v2, p4}, Lcom/amazon/kcp/reader/NotesListEventHandler$5;-><init>(Lcom/amazon/kcp/reader/NotesListEventHandler;Lcom/amazon/kcp/reader/Note;Ljava/lang/String;Landroid/widget/AdapterView;)V

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private recordViewAnnotation(Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;
    .locals 4

    .line 263
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 277
    sget-object v0, Lcom/amazon/kcp/reader/NotesListEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid annotation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "ViewPopularHighlight"

    goto :goto_0

    :cond_1
    const-string v0, "ViewHighlight"

    goto :goto_0

    :cond_2
    const-string v0, "ViewNote"

    goto :goto_0

    :cond_3
    const-string v0, "ViewBookmark"

    .line 280
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 282
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    .line 283
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    const-string v3, "Book"

    .line 282
    invoke-interface {v1, v3, v0, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performContentAction(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 146
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget p3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 148
    check-cast p2, Landroid/widget/AdapterView;

    .line 150
    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/Note;

    .line 152
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/amazon/kcp/reader/NotesListEventHandler;->populateContextMenu(Landroid/view/ContextMenu;Lcom/amazon/kcp/reader/Note;ILandroid/widget/AdapterView;)V

    return-void
.end method
