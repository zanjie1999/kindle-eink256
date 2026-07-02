.class public final Lcom/amazon/kindle/viewoptions/ui/listview/SpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SpaceItemDecoration.kt"


# instance fields
.field private final horizontalSpacing:I

.field private final verticalSpacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/SpaceItemDecoration;->horizontalSpacing:I

    iput p2, p0, Lcom/amazon/kindle/viewoptions/ui/listview/SpaceItemDecoration;->verticalSpacing:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string/jumbo v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "parent"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "state"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget p2, p0, Lcom/amazon/kindle/viewoptions/ui/listview/SpaceItemDecoration;->horizontalSpacing:I

    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 14
    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 15
    iget p2, p0, Lcom/amazon/kindle/viewoptions/ui/listview/SpaceItemDecoration;->verticalSpacing:I

    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 16
    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
