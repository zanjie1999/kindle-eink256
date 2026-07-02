.class Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$1;
.super Ljava/lang/Object;
.source "GoodreadsShelfComponentBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->initializeShelfSelectionSpinner(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;


# direct methods
.method constructor <init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$1;->this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 296
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Spinner item selected; position: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$1;->this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

    iget-object p1, p1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->shelfSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ArrayAdapter;

    .line 299
    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;

    iget-object p1, p1, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$ShelfOption;->shelfName:Ljava/lang/String;

    .line 304
    iget-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$1;->this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

    invoke-static {p2}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->access$100(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 305
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Selected shelf is the same as the current shelf: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_0
    invoke-static {}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Manual shelf selection made: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$1;->this$0:Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;

    invoke-virtual {p2, p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->onManualShelfSelectionMade(Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
