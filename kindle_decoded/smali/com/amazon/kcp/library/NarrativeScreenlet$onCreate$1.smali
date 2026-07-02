.class public final Lcom/amazon/kcp/library/NarrativeScreenlet$onCreate$1;
.super Lcom/amazon/kcp/library/SwipeRefreshHelper$ListenerAdapter;
.source "NarrativeScreenlet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/NarrativeScreenlet;->onCreate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/NarrativeScreenlet;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/NarrativeScreenlet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/amazon/kcp/library/NarrativeScreenlet$onCreate$1;->this$0:Lcom/amazon/kcp/library/NarrativeScreenlet;

    invoke-direct {p0}, Lcom/amazon/kcp/library/SwipeRefreshHelper$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeRefreshStarted()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/library/NarrativeScreenlet$onCreate$1;->this$0:Lcom/amazon/kcp/library/NarrativeScreenlet;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/GroupItemBaseScreenlet;->getFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->refresh()V

    return-void
.end method
