.class Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter$1;
.super Ljava/lang/Object;
.source "LinearTOCTreeViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter$1;->this$0:Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter$1;->this$0:Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;

    invoke-static {v0, p1}, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->access$000(Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;I)V

    :cond_0
    return-void
.end method
