.class Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;
.super Landroid/os/AsyncTask;
.source "TermListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/list/TermListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalculatePlaceholdersTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Lcom/amazon/klo/list/TermListItemPlaceholder;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public id:I

.field final synthetic this$0:Lcom/amazon/klo/list/TermListView;


# direct methods
.method private constructor <init>(Lcom/amazon/klo/list/TermListView;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->this$0:Lcom/amazon/klo/list/TermListView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/klo/list/TermListView;Lcom/amazon/klo/list/TermListView$1;)V
    .locals 0

    .line 650
    invoke-direct {p0, p1}, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;-><init>(Lcom/amazon/klo/list/TermListView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 650
    invoke-virtual {p0, p1}, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 14

    const/4 v0, 0x0

    .line 681
    aget-object v1, p1, v0

    check-cast v1, Lcom/amazon/klo/list/TermListAdapter;

    const/4 v2, 0x1

    .line 682
    aget-object v3, p1, v2

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    .line 683
    aget-object v4, p1, v4

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x3

    .line 684
    aget-object p1, p1, v5

    check-cast p1, Landroid/view/View;

    .line 686
    :goto_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 688
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5, p1, v4}, Lcom/amazon/klo/list/TermListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 689
    iget-object v6, p0, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->this$0:Lcom/amazon/klo/list/TermListView;

    invoke-static {v6}, Lcom/amazon/klo/list/TermListView;->access$400(Lcom/amazon/klo/list/TermListView;)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    new-array v6, v2, [Lcom/amazon/klo/list/TermListItemPlaceholder;

    .line 690
    new-instance v13, Lcom/amazon/klo/list/TermListItemPlaceholder;

    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 691
    invoke-virtual {v1, p1}, Lcom/amazon/klo/list/TermListAdapter;->getTermState(Landroid/view/View;)Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    move-result-object v11

    invoke-virtual {v1, p1}, Lcom/amazon/klo/list/TermListAdapter;->getDescriptionState(Landroid/view/View;)Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;

    move-result-object v12

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/amazon/klo/list/TermListItemPlaceholder;-><init>(IIILcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;Lcom/amazon/klo/EllipsizingTextView$EllipsizingTextViewState;)V

    aput-object v13, v6, v0

    .line 690
    invoke-virtual {p0, v6}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 692
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 650
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 714
    iget-object p1, p0, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->this$0:Lcom/amazon/klo/list/TermListView;

    invoke-static {p1}, Lcom/amazon/klo/list/TermListView;->access$700(Lcom/amazon/klo/list/TermListView;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->this$0:Lcom/amazon/klo/list/TermListView;

    invoke-static {v0}, Lcom/amazon/klo/list/TermListView;->access$300(Lcom/amazon/klo/list/TermListView;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/amazon/klo/list/TermListItemPlaceholder;)V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->this$0:Lcom/amazon/klo/list/TermListView;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iget v1, p0, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->id:I

    invoke-static {v0, p1, v1}, Lcom/amazon/klo/list/TermListView;->access$500(Lcom/amazon/klo/list/TermListView;Lcom/amazon/klo/list/TermListItemPlaceholder;I)V

    .line 705
    iget-object p1, p0, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->this$0:Lcom/amazon/klo/list/TermListView;

    invoke-static {p1}, Lcom/amazon/klo/list/TermListView;->access$600(Lcom/amazon/klo/list/TermListView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 707
    iget-object p1, p0, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->this$0:Lcom/amazon/klo/list/TermListView;

    invoke-static {p1}, Lcom/amazon/klo/list/TermListView;->access$700(Lcom/amazon/klo/list/TermListView;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 650
    check-cast p1, [Lcom/amazon/klo/list/TermListItemPlaceholder;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->onProgressUpdate([Lcom/amazon/klo/list/TermListItemPlaceholder;)V

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 656
    iput p1, p0, Lcom/amazon/klo/list/TermListView$CalculatePlaceholdersTask;->id:I

    return-void
.end method
