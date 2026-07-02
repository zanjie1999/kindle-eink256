.class final Lcom/amazon/kcp/library/GroupItemBaseScreenlet$onNewIntent$1;
.super Ljava/lang/Object;
.source "GroupItemBaseScreenlet.kt"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->onNewIntent(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/GroupItemBaseScreenlet;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$onNewIntent$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLibraryFilterStateChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$onNewIntent$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getCallback()Lcom/amazon/kcp/library/LibraryContextChangedCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$onNewIntent$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getCurrentContext()Lcom/amazon/kcp/library/LibraryContext;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/LibraryContextChangedCallback;->onLibraryContextChanged(Lcom/amazon/kcp/library/LibraryContext;)V

    :cond_0
    return-void
.end method
