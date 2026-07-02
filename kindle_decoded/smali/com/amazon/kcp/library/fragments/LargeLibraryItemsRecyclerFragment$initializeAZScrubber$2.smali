.class final Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$initializeAZScrubber$2;
.super Ljava/lang/Object;
.source "LargeLibraryItemsRecyclerFragment.kt"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->initializeAZScrubber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$initializeAZScrubber$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$initializeAZScrubber$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$alignAZscrubberOnAccessibilityChanged(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;Z)V

    return-void
.end method
