.class Lcom/amazon/kcp/library/LibraryFragment$6;
.super Ljava/lang/Object;
.source "LibraryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryFragment;->onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryFragment;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment$6;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment$6;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryFragment;->access$700(Lcom/amazon/kcp/library/LibraryFragment;)V

    return-void
.end method
