.class Lcom/amazon/klo/list/TermListView$1$1;
.super Ljava/lang/Object;
.source "TermListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/list/TermListView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/klo/list/TermListView$1;


# direct methods
.method constructor <init>(Lcom/amazon/klo/list/TermListView$1;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/amazon/klo/list/TermListView$1$1;->this$1:Lcom/amazon/klo/list/TermListView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/amazon/klo/list/TermListView$1$1;->this$1:Lcom/amazon/klo/list/TermListView$1;

    iget-object v0, v0, Lcom/amazon/klo/list/TermListView$1;->this$0:Lcom/amazon/klo/list/TermListView;

    invoke-static {v0}, Lcom/amazon/klo/list/TermListView;->access$100(Lcom/amazon/klo/list/TermListView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
