.class final Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1$1;
.super Ljava/lang/Object;
.source "ExpandableLibraryResultsView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1$1;->this$0:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;

    iget-object v0, v0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;->$expandCompletedCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
