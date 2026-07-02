.class final Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;
.super Ljava/lang/Object;
.source "BookActionsPopup.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/actions/BookActionsPopup;->addAction(Lcom/amazon/kindle/home/action/HomeBookAction;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $action:Lcom/amazon/kindle/home/action/HomeBookAction;

.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $book:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic $reftag:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/home/actions/BookActionsPopup;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/actions/BookActionsPopup;Lcom/amazon/kindle/home/action/HomeBookAction;Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;->this$0:Lcom/amazon/kcp/home/actions/BookActionsPopup;

    iput-object p2, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;->$action:Lcom/amazon/kindle/home/action/HomeBookAction;

    iput-object p3, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p4, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p5, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;->$reftag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 65
    iget-object p1, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;->$action:Lcom/amazon/kindle/home/action/HomeBookAction;

    iget-object v0, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;->$activity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    iget-object v2, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;->$reftag:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/home/action/HomeBookAction;->execute(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;->this$0:Lcom/amazon/kcp/home/actions/BookActionsPopup;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/actions/BookActionsPopup;->dismiss()V

    return-void
.end method
