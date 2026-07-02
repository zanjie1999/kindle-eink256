.class Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$3;
.super Landroid/widget/ArrayAdapter;
.source "ReadingActionsGoodreadsShelfComponentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->setSpinnerAdapterAndSelection(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$3;->this$0:Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$3;->this$0:Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;

    iget-object v1, v0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, v1}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getSpinnerDropDownView(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 374
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;

    iget-object p1, p1, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;->displayName:Ljava/lang/String;

    .line 375
    sget p3, Lcom/amazon/kindle/ea/R$id;->readingactions_spinner_dropdown_text:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 376
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 362
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$3;->this$0:Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->getSpinnerView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 363
    iget-object p2, p0, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$3;->this$0:Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;

    iget-object p2, p2, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;

    iget-object p2, p2, Lcom/amazon/readingactions/goodreadsshelf/ReadingActionsGoodreadsShelfComponentBase$ShelfOption;->displayName:Ljava/lang/String;

    .line 364
    sget p3, Lcom/amazon/kindle/ea/R$id;->readingactions_goodreads_spinner_text_view:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 365
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
