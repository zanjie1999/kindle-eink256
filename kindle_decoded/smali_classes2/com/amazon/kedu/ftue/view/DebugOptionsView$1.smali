.class Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;
.super Ljava/lang/Object;
.source "DebugOptionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/ftue/view/DebugOptionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    invoke-static {v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->access$000(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 52
    iget-object p1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->resetEventCounts()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    invoke-static {v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->access$100(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 56
    iget-object p1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->ageEvents()V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    invoke-static {v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->access$200(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 60
    iget-object p1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    sget-object v0, Lcom/amazon/kedu/ftue/util/Format;->FIXED_FORMAT:Lcom/amazon/kedu/ftue/util/Format;

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->toggleEnable(Lcom/amazon/kedu/ftue/util/Format;)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    invoke-static {v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->access$300(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 64
    iget-object p1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    sget-object v0, Lcom/amazon/kedu/ftue/util/Format;->REFLOWABLE:Lcom/amazon/kedu/ftue/util/Format;

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->toggleEnable(Lcom/amazon/kedu/ftue/util/Format;)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    invoke-static {v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->access$400(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 68
    iget-object p1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    invoke-static {p1}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->access$500(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)V

    goto :goto_0

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    invoke-static {v0}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->access$600(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 72
    iget-object p1, p0, Lcom/amazon/kedu/ftue/view/DebugOptionsView$1;->this$0:Lcom/amazon/kedu/ftue/view/DebugOptionsView;

    invoke-static {p1}, Lcom/amazon/kedu/ftue/view/DebugOptionsView;->access$700(Lcom/amazon/kedu/ftue/view/DebugOptionsView;)V

    :cond_5
    :goto_0
    return-void
.end method
