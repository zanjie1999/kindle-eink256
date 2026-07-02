.class public final Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "ColumnViewGroup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ColumnLayoutParams"
.end annotation


# instance fields
.field private columnWidth:Ljava/lang/Integer;

.field private insetToColumnGutters:Z

.field final synthetic this$0:Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup;


# direct methods
.method public constructor <init>(Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;->this$0:Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup;

    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 53
    sget-object p1, Lcom/amazon/android/tableofcontents/columns/ColumnUtil;->Companion:Lcom/amazon/android/tableofcontents/columns/ColumnUtil$Companion;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/android/tableofcontents/columns/ColumnUtil$Companion;->retrieveAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lkotlin/Pair;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;->columnWidth:Ljava/lang/Integer;

    .line 55
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;->insetToColumnGutters:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final getColumnWidth()Ljava/lang/Integer;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;->columnWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInsetToColumnGutters()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;->insetToColumnGutters:Z

    return v0
.end method
