.class public final Lcom/amazon/android/widget/CommandBarItemController$getPrioritizedBarItems$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/CommandBarItemController;->getPrioritizedBarItems(Lcom/amazon/android/widget/CommandBar$Position;Lcom/amazon/kindle/krx/content/IBook;Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 CommandBarItemController.kt\ncom/amazon/android/widget/CommandBarItemController\n*L\n1#1,319:1\n406#2:320\n*E\n"
.end annotation


# instance fields
.field final synthetic $book$inlined:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/widget/CommandBarItemController$getPrioritizedBarItems$$inlined$sortedBy$1;->$book$inlined:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    .line 320
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController$getPrioritizedBarItems$$inlined$sortedBy$1;->$book$inlined:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p1, v0}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;->getPriority(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    iget-object v0, p0, Lcom/amazon/android/widget/CommandBarItemController$getPrioritizedBarItems$$inlined$sortedBy$1;->$book$inlined:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p2, v0}, Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;->getPriority(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
