.class final Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$makeRecyclerViewHeightAdaptable$1;
.super Ljava/lang/Object;
.source "BlurbCardController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->makeRecyclerViewHeightAdaptable(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $holder:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$makeRecyclerViewHeightAdaptable$1;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$makeRecyclerViewHeightAdaptable$1;->$holder:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$makeRecyclerViewHeightAdaptable$1;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$makeRecyclerViewHeightAdaptable$1;->$holder:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
