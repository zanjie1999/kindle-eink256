.class Lcom/amazon/klo/list/TermListView$1;
.super Ljava/lang/Object;
.source "TermListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/list/TermListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/list/TermListView;


# direct methods
.method constructor <init>(Lcom/amazon/klo/list/TermListView;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/amazon/klo/list/TermListView$1;->this$0:Lcom/amazon/klo/list/TermListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView$1;->this$0:Lcom/amazon/klo/list/TermListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/klo/list/TermListView;->access$002(Lcom/amazon/klo/list/TermListView;Z)Z

    .line 163
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView$1;->this$0:Lcom/amazon/klo/list/TermListView;

    invoke-static {v0}, Lcom/amazon/klo/list/TermListView;->access$100(Lcom/amazon/klo/list/TermListView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 169
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView$1;->this$0:Lcom/amazon/klo/list/TermListView;

    new-instance v1, Lcom/amazon/klo/list/TermListView$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/klo/list/TermListView$1$1;-><init>(Lcom/amazon/klo/list/TermListView$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
