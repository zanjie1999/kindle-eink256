.class Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;
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
    name = "OverflowOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$1;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;-><init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 457
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$600(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 462
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {v2}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$800(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Landroid/widget/Button;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p1, v0}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$702(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 463
    :goto_0
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$600(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {v1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$600(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/model/object/Entity;

    .line 466
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {v2}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$700(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Landroid/widget/PopupMenu;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/Entity;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v0, p1, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_1
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$700(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Landroid/widget/PopupMenu;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {v0}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$900(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 469
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;->this$0:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

    invoke-static {p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->access$700(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 471
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "Xray"

    const-string v1, "Overflow"

    .line 472
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
