.class Lcom/amazon/kcp/reader/NotesListEventHandler$5;
.super Ljava/lang/Object;
.source "NotesListEventHandler.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/NotesListEventHandler;->populateContextMenu(Landroid/view/ContextMenu;Lcom/amazon/kcp/reader/Note;ILandroid/widget/AdapterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

.field final synthetic val$annotation:Lcom/amazon/kcp/reader/Note;

.field final synthetic val$color:Ljava/lang/String;

.field final synthetic val$v:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/NotesListEventHandler;Lcom/amazon/kcp/reader/Note;Ljava/lang/String;Landroid/widget/AdapterView;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$5;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    iput-object p2, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$5;->val$annotation:Lcom/amazon/kcp/reader/Note;

    iput-object p3, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$5;->val$color:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$5;->val$v:Landroid/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 241
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$5;->this$0:Lcom/amazon/kcp/reader/NotesListEventHandler;

    invoke-static {p1}, Lcom/amazon/kcp/reader/NotesListEventHandler;->access$100(Lcom/amazon/kcp/reader/NotesListEventHandler;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$5;->val$annotation:Lcom/amazon/kcp/reader/Note;

    iget-object v1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$5;->val$color:Ljava/lang/String;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;->create(Lcom/amazon/kcp/application/UserSettingsController;)Lcom/amazon/kcp/util/fastmetrics/annotations/DefaultAnnotationActionMetricRecorder;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kcp/util/AnnotationUtils;->setAnnotationColor(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/annotations/AnnotationActionMetricRecorder;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesListEventHandler$5;->val$v:Landroid/widget/AdapterView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1
.end method
