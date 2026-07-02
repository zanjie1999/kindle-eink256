.class Lcom/amazon/kcp/reader/ui/ActionBarDecoration$5;
.super Ljava/lang/Object;
.source "ActionBarDecoration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateShownDecoration(Ljava/util/Collection;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

.field final synthetic val$isCSEnabledForBook:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Z)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$5;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$5;->val$isCSEnabledForBook:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 483
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$5;->val$isCSEnabledForBook:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$5;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    iget-boolean p1, p1, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->isDecorationHiddenByUser:Z

    if-nez p1, :cond_1

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$5;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->access$102(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Z)Z

    .line 485
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$5;->this$0:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->toggleDecorationVisibility(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
