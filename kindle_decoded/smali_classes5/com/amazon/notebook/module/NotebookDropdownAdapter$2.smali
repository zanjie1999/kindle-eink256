.class Lcom/amazon/notebook/module/NotebookDropdownAdapter$2;
.super Ljava/lang/Object;
.source "NotebookDropdownAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookDropdownAdapter;->getItemView(Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookDropdownAdapter;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    .line 191
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    const/4 p1, 0x0

    return p1
.end method
