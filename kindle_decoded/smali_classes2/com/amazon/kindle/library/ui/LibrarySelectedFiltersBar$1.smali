.class Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$1;
.super Ljava/lang/Object;
.source "LibrarySelectedFiltersBar.java"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$1;->this$0:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLibraryFilterStateChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;>;)V"
        }
    .end annotation

    .line 56
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$1;->this$0:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;

    invoke-static {p1}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->access$000(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;)V

    return-void
.end method
