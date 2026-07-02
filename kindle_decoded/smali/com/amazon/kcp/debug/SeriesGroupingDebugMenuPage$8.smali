.class Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage$8;
.super Ljava/lang/Object;
.source "SeriesGroupingDebugMenuPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;->initializeUpdateSeriesBookButton(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/SeriesGroupingDebugMenuPage;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 230
    sget v0, Lcom/amazon/kindle/krl/R$id;->book_asin_update_series_book:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    sget v1, Lcom/amazon/kindle/krl/R$id;->series_asin_update_series_book:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 235
    sget v2, Lcom/amazon/kindle/krl/R$id;->series_position_update_series_book:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 236
    sget v3, Lcom/amazon/kindle/krl/R$id;->series_position_label_prefix_update_series_book:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 237
    new-instance v9, Lcom/amazon/kindle/content/GroupItemMetadata;

    new-instance v4, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    .line 238
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v4, v3, v5}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 240
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 241
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 242
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v5, "Volume"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/content/GroupItemMetadata;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {p1, v3, v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 246
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v3

    invoke-interface {v3, p1, v9}, Lcom/amazon/kindle/content/IGroupService;->updateGroupItem(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;)V

    const-string p1, ""

    .line 247
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
