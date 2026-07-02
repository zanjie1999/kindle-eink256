.class Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NotebookDropdownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/NotebookDropdownAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field checkmark:Landroid/widget/ImageView;

.field countView:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field label:Landroid/widget/TextView;

.field toggle:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method private constructor <init>(Lcom/amazon/notebook/module/NotebookDropdownAdapter;)V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/notebook/module/NotebookDropdownAdapter;Lcom/amazon/notebook/module/NotebookDropdownAdapter$1;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$ViewHolder;-><init>(Lcom/amazon/notebook/module/NotebookDropdownAdapter;)V

    return-void
.end method
