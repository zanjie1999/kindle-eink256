.class Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "RelatedEntitySentenceView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowOnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$1;)V
    .locals 0

    .line 479
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;-><init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$500(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$500(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$600(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/Entity;

    invoke-interface {v0, v1, p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;->onClick(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Lcom/amazon/xray/model/object/Entity;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
