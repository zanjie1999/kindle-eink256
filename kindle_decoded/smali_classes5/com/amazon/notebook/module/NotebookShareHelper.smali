.class public Lcom/amazon/notebook/module/NotebookShareHelper;
.super Ljava/lang/Object;
.source "NotebookShareHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;,
        Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;,
        Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;
    }
.end annotation


# static fields
.field private static final BACKGROUND:I = -0x50000000

.field private static final DARK_BACKGROUND:I = -0xdcdcdd

.field private static final ID_TO_TAG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIGHT_BACKGROUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/notebook/module/NotebookShareHelper;->ID_TO_TAG_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/amazon/notebook/module/NotebookShareHelper;->ID_TO_TAG_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;->FLASHCARDS:Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;

    sget v2, Lcom/amazon/notebook/module/R$id;->module_export_to_flashcards:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/amazon/notebook/module/NotebookShareHelper;->ID_TO_TAG_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;->SHARE:Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;

    sget v2, Lcom/amazon/notebook/module/R$id;->module_export_to_sharing:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public share(Lcom/amazon/notebook/module/NotebookActivity;Landroid/view/View;Ljava/util/List;Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/notebook/module/NotebookActivity;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;",
            ">;",
            "Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 39
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;

    invoke-interface {p4, p1}, Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;->onSelection(Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;)V

    goto :goto_0

    .line 41
    :cond_0
    new-instance p3, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;

    invoke-static {}, Lcom/amazon/notebook/DarkModeUtil;->getInstance()Lcom/amazon/notebook/DarkModeUtil;

    move-result-object v0

    invoke-direct {p3, p1, p4, v0}, Lcom/amazon/notebook/module/NotebookShareHelper$SharePopupWindow;-><init>(Lcom/amazon/notebook/module/NotebookActivity;Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;Lcom/amazon/notebook/ThemeProvider;)V

    const/16 p1, 0x50

    .line 42
    invoke-virtual {p3, p2, v1, v1, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    :goto_0
    return-void
.end method
