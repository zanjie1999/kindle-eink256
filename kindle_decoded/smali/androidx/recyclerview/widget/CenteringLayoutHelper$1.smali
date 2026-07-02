.class Landroidx/recyclerview/widget/CenteringLayoutHelper$1;
.super Landroidx/recyclerview/widget/CenterLockSmoothScroller;
.source "CenteringLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/CenteringLayoutHelper;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/CenteringLayoutHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/CenteringLayoutHelper;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 21
    iput-object p1, p0, Landroidx/recyclerview/widget/CenteringLayoutHelper$1;->this$0:Landroidx/recyclerview/widget/CenteringLayoutHelper;

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/CenterLockSmoothScroller;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/CenteringLayoutHelper$1;->this$0:Landroidx/recyclerview/widget/CenteringLayoutHelper;

    invoke-static {v0}, Landroidx/recyclerview/widget/CenteringLayoutHelper;->access$000(Landroidx/recyclerview/widget/CenteringLayoutHelper;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
