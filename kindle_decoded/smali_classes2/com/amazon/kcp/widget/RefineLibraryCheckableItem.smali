.class public Lcom/amazon/kcp/widget/RefineLibraryCheckableItem;
.super Lcom/amazon/kcp/widget/LibraryCheckableItem;
.source "RefineLibraryCheckableItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/widget/LibraryCheckableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/widget/LibraryCheckableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    .line 24
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->refine_checkable_item:I

    return v0
.end method
