.class Lcom/amazon/kcp/reader/BookTOCActivity$1;
.super Ljava/lang/Object;
.source "BookTOCActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/BookTOCActivity;->setListViewListener(Lcom/amazon/android/docviewer/IBookHierarchicalTOC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

.field final synthetic val$toc:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/BookTOCActivity;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/kcp/reader/BookTOCActivity$1;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/BookTOCActivity$1;->val$toc:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 105
    iget-object p1, p0, Lcom/amazon/kcp/reader/BookTOCActivity$1;->val$toc:Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    iget-object p2, p0, Lcom/amazon/kcp/reader/BookTOCActivity$1;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    invoke-static {p2}, Lcom/amazon/kcp/reader/BookTOCActivity;->access$100(Lcom/amazon/kcp/reader/BookTOCActivity;)Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/IBookTOC;->getChapterAtPosition(I)Lcom/amazon/android/docviewer/IChapterTOCItem;

    move-result-object p1

    .line 106
    invoke-static {}, Lcom/amazon/kcp/reader/BookTOCActivity;->access$200()Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Selecting toc item \""

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\", position: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IGoto;->gotoLocation()V

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/reader/BookTOCActivity$1;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 110
    iget-object p1, p0, Lcom/amazon/kcp/reader/BookTOCActivity$1;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    sget p2, Lcom/amazon/kindle/krl/R$anim;->no_anim:I

    sget p3, Lcom/amazon/kindle/krl/R$anim;->slide_fade_to_bottom:I

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/redding/ReddingActivity;->animateAndFinish(II)V

    return-void
.end method
