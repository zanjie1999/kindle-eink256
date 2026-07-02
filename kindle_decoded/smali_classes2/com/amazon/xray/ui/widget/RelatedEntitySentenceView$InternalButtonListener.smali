.class Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$InternalButtonListener;
.super Ljava/lang/Object;
.source "RelatedEntitySentenceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$InternalButtonListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$1;)V
    .locals 0

    .line 442
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$InternalButtonListener;-><init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$InternalButtonListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$500(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$InternalButtonListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$500(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$InternalButtonListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/Entity;

    invoke-interface {v0, v1, p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;->onClick(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Lcom/amazon/xray/model/object/Entity;)V

    :cond_0
    return-void
.end method
