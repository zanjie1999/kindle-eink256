.class public Lcom/amazon/kcp/reader/ui/ViewOptionsRow;
.super Landroid/widget/Spinner;
.source "ViewOptionsRow.java"


# instance fields
.field private data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

.field private dataChangedCallback:Lcom/amazon/foundation/ICallback;

.field public isDropDownnMenuShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->isDropDownnMenuShown:Z

    .line 18
    new-instance p1, Lcom/amazon/kcp/reader/ui/ViewOptionsRow$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/ViewOptionsRow$1;-><init>(Lcom/amazon/kcp/reader/ui/ViewOptionsRow;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->dataChangedCallback:Lcom/amazon/foundation/ICallback;

    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 1

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->isDropDownnMenuShown:Z

    .line 57
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public setData(Lcom/amazon/kcp/reader/ui/ViewOptionData;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    if-eqz v0, :cond_0

    .line 31
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->dataChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->unregisterDataChangedCallback(Lcom/amazon/foundation/ICallback;)V

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->dataChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->registerDataChangedCallback(Lcom/amazon/foundation/ICallback;)V

    .line 36
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->setOptionView(Lcom/amazon/kcp/reader/ui/ViewOptionsRow;)V

    .line 37
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->sync()V

    return-void
.end method

.method public sync()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsRow;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->getSelectedIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1
    return-void
.end method
