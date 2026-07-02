.class final Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "BookmarkPageToggleFragment.kt"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$2;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$2;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {p1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$refreshBookmarkLayout(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)V

    return-object p2
.end method
