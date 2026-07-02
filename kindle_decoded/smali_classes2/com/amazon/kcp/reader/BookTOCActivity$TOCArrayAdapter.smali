.class Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BookTOCActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/BookTOCActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TOCArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/BookTOCActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/BookTOCActivity;Landroid/content/Context;I)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    .line 160
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 167
    iget-object p2, p0, Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;->this$0:Lcom/amazon/kcp/reader/BookTOCActivity;

    invoke-static {p2}, Lcom/amazon/kcp/reader/BookTOCActivity;->access$300(Lcom/amazon/kcp/reader/BookTOCActivity;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 169
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method
