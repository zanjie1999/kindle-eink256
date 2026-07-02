.class public final Lcom/amazon/android/widget/items/IPrioritizedWidgetItem$IPrioritizedWidgetItemComparator;
.super Ljava/lang/Object;
.source "IPrioritizedWidgetItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IPrioritizedWidgetItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
        "TModel;>;>;"
    }
.end annotation


# instance fields
.field private final model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModel;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem$IPrioritizedWidgetItemComparator;->model:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "TModel;>;",
            "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
            "TModel;>;)I"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem$IPrioritizedWidgetItemComparator;->model:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;->getPriority(Ljava/lang/Object;)I

    move-result p2

    int-to-double v0, p2

    iget-object p2, p0, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem$IPrioritizedWidgetItemComparator;->model:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;->getPriority(Ljava/lang/Object;)I

    move-result p1

    int-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    check-cast p2, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem$IPrioritizedWidgetItemComparator;->compare(Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;)I

    move-result p1

    return p1
.end method
