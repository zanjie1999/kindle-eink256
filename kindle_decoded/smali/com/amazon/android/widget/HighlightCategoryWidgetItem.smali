.class Lcom/amazon/android/widget/HighlightCategoryWidgetItem;
.super Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;
.source "HighlightCategoryWidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;
    }
.end annotation


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(ILcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;Landroid/content/Context;[Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V
    .locals 6

    .line 42
    sget v1, Lcom/amazon/kindle/krl/R$string;->selection_highlight_category:I

    const/4 v2, 0x0

    const-string v5, "HighlightCategory"

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/widget/items/ReaderCategoryWidgetItem;-><init>(ILjava/lang/Integer;ILcom/amazon/android/widget/items/PrioritizedWidgetItemGroup;Ljava/lang/String;)V

    .line 43
    new-instance p1, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;

    invoke-direct {p1, p3, p4}, Lcom/amazon/android/widget/HighlightCategoryWidgetItem$HighlightCategoryWidgetItemDrawable;-><init>(Landroid/content/Context;[Lcom/amazon/kcp/reader/notebook/ColorHighlightProperties;)V

    iput-object p1, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/amazon/android/widget/HighlightCategoryWidgetItem;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method
