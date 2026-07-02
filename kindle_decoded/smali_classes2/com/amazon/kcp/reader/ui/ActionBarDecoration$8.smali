.class Lcom/amazon/kcp/reader/ui/ActionBarDecoration$8;
.super Ljava/lang/Object;
.source "ActionBarDecoration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->prepareTitleDecorationAnimation(Z)Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

.field final synthetic val$titleContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Landroid/view/View;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$8;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$8;->val$titleContainer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$8;->val$titleContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
