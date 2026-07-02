.class Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$4;
.super Ljava/lang/Object;
.source "WikipediaInfoCardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->setGestureListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$4;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$4;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$102(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 203
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$4;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-static {v1, p2}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$502(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;Z)Z

    :cond_1
    if-nez p1, :cond_2

    .line 206
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView$4;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->access$502(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;Z)Z

    :cond_2
    return p2
.end method
