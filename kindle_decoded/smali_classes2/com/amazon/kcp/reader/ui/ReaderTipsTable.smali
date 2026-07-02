.class public Lcom/amazon/kcp/reader/ui/ReaderTipsTable;
.super Landroid/widget/TableLayout;
.source "ReaderTipsTable.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTipsTable;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderTipsTable;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public setData([Ljava/lang/String;)V
    .locals 6

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 40
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderTipsTable;->context:Landroid/content/Context;

    sget v4, Lcom/amazon/kindle/thirdparty/R$layout;->reader_instructions_row:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    .line 41
    sget v4, Lcom/amazon/kindle/thirdparty/R$id;->reader_instructions_text:I

    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
