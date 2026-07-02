.class Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow$2;
.super Ljava/lang/Object;
.source "NotebookShareHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;-><init>(Lcom/amazon/notebook/module/NotebookActivity;Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;Lcom/amazon/notebook/ThemeProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow$2;->this$0:Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 129
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow$2;->this$0:Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;

    iget-object p1, p1, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->popupView:Landroid/widget/RelativeLayout;

    sget v0, Lcom/amazon/notebook/module/R$id;->module_share_container:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    if-ge v0, p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow$2;->this$0:Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return v1
.end method
