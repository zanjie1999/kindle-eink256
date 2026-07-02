.class public Lcom/amazon/nwstd/toc/widget/PeriodicalContentSpinner;
.super Landroid/widget/Spinner;
.source "PeriodicalContentSpinner.java"


# instance fields
.field private mListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setOnItemSelectedEvenIfUnchangedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/nwstd/toc/widget/PeriodicalContentSpinner;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/amazon/nwstd/toc/widget/PeriodicalContentSpinner;->setSelection(IZ)V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 6

    .line 43
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 44
    iget-object v0, p0, Lcom/amazon/nwstd/toc/widget/PeriodicalContentSpinner;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-long v4, p1

    move v3, p1

    .line 46
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
