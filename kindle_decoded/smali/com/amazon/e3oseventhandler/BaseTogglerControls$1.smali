.class Lcom/amazon/e3oseventhandler/BaseTogglerControls$1;
.super Ljava/lang/Object;
.source "BaseTogglerControls.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/BaseTogglerControls;->setFilter(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/BaseTogglerControls;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/BaseTogglerControls;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls$1;->this$0:Lcom/amazon/e3oseventhandler/BaseTogglerControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    return v1

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls$1;->this$0:Lcom/amazon/e3oseventhandler/BaseTogglerControls;

    invoke-virtual {p1}, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->processActionUp()V

    .line 54
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/BaseTogglerControls$1;->this$0:Lcom/amazon/e3oseventhandler/BaseTogglerControls;

    invoke-static {p1}, Lcom/amazon/e3oseventhandler/BaseTogglerControls;->access$000(Lcom/amazon/e3oseventhandler/BaseTogglerControls;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    return p2

    :cond_3
    :goto_0
    return v1
.end method
