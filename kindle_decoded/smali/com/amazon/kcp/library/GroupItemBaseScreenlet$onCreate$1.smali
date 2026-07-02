.class public final Lcom/amazon/kcp/library/GroupItemBaseScreenlet$onCreate$1;
.super Lcom/amazon/kcp/library/SwipeRefreshHelper$ListenerAdapter;
.source "GroupItemBaseScreenlet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/GroupItemBaseScreenlet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$onCreate$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-direct {p0}, Lcom/amazon/kcp/library/SwipeRefreshHelper$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeRefreshStarted()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/library/GroupItemBaseScreenlet$onCreate$1;->this$0:Lcom/amazon/kcp/library/GroupItemBaseScreenlet;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->refresh()V

    return-void
.end method
