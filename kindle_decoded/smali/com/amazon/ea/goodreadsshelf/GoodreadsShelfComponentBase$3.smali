.class Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$3;
.super Landroid/widget/ArrayAdapter;
.source "GoodreadsShelfComponentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->setSpinnerAdapterAndSelection(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;


# direct methods
.method constructor <init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$3;->this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$3;->this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

    iget-object v1, v0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p2, p3, v1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getSpinnerDropDownView(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/widget/TextView;

    move-result-object p2

    .line 408
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;

    iget-object p1, p1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;->displayName:Ljava/lang/String;

    .line 409
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 396
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$3;->this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->getSpinnerView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p1

    .line 398
    iget-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$3;->this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

    iget-object p2, p2, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;

    iget-object p2, p2, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;->displayName:Ljava/lang/String;

    .line 399
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
