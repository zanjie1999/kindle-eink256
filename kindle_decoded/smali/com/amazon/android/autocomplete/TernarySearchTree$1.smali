.class Lcom/amazon/android/autocomplete/TernarySearchTree$1;
.super Ljava/lang/Object;
.source "TernarySearchTree.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/autocomplete/TernarySearchTree;->getListFromTree(Lcom/amazon/android/autocomplete/TernarySearchTree$Node;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/core/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/android/autocomplete/TernarySearchTree;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 164
    iget-object p2, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    return p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 161
    check-cast p1, Landroidx/core/util/Pair;

    check-cast p2, Landroidx/core/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/autocomplete/TernarySearchTree$1;->compare(Landroidx/core/util/Pair;Landroidx/core/util/Pair;)I

    move-result p1

    return p1
.end method
