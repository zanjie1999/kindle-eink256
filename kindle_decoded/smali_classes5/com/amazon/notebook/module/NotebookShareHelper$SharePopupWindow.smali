.class Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;
.super Landroid/widget/PopupWindow;
.source "NotebookShareHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/NotebookShareHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharePopupWindow"
.end annotation


# instance fields
.field private onClickListener:Landroid/view/View$OnClickListener;

.field onSelectionListener:Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;

.field popupView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/amazon/notebook/module/NotebookActivity;Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;Lcom/amazon/notebook/ThemeProvider;)V
    .locals 3

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow$1;

    invoke-direct {v0, p0}, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow$1;-><init>(Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;)V

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->onClickListener:Landroid/view/View$OnClickListener;

    const-string v0, "layout_inflater"

    .line 76
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 77
    sget v0, Lcom/amazon/notebook/module/R$layout;->notebook_module_share:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->popupView:Landroid/widget/RelativeLayout;

    .line 78
    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->onSelectionListener:Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;

    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, -0x2

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 p1, 0x1

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 85
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 86
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 87
    sget p1, Lcom/amazon/notebook/module/R$style;->FadeIn:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 88
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p2, -0x50000000

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-interface {p3}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result p1

    const p2, -0xdcdcdd

    const/4 p3, -0x1

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->popupView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/amazon/notebook/module/R$id;->module_share_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->popupView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/amazon/notebook/module/R$id;->module_share_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->popupView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/amazon/notebook/module/R$id;->module_export_to_flashcards:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->popupView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/amazon/notebook/module/R$id;->module_export_to_flashcards_text:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 109
    :cond_2
    :goto_1
    sget-object v1, Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;->FLASHCARDS:Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->popupView:Landroid/widget/RelativeLayout;

    sget v1, Lcom/amazon/notebook/module/R$id;->module_export_to_sharing:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 114
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->popupView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/amazon/notebook/module/R$id;->module_export_to_sharing_text:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 116
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 119
    :cond_3
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    :cond_4
    :goto_2
    sget-object p1, Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;->SHARE:Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;->popupView:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow$2;

    invoke-direct {p2, p0}, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow$2;-><init>(Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
