.class final Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$1;
.super Ljava/lang/Object;
.source "ExpandableLibraryResultsView.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p8, p6

    sub-int/2addr p4, p2

    if-eq p4, p8, :cond_0

    .line 49
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;

    invoke-static {p1, p4}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->access$updateGridForWidth(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;I)V

    :cond_0
    return-void
.end method
