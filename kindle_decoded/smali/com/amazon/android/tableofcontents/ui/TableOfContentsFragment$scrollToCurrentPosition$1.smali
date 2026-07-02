.class final Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$scrollToCurrentPosition$1;
.super Ljava/lang/Object;
.source "TableOfContentsFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->scrollToCurrentPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $currentPos:I

.field final synthetic this$0:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;


# direct methods
.method constructor <init>(Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$scrollToCurrentPosition$1;->this$0:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;

    iput p2, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$scrollToCurrentPosition$1;->$currentPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 112
    iget-object v0, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$scrollToCurrentPosition$1;->this$0:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;

    invoke-static {v0}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->access$getTocRecyclerView$p(Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$scrollToCurrentPosition$1;->this$0:Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;

    iget v3, p0, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment$scrollToCurrentPosition$1;->$currentPos:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;->smoothSnapToPosition$default(Lcom/amazon/android/tableofcontents/ui/TableOfContentsFragment;Landroidx/recyclerview/widget/RecyclerView;IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method
