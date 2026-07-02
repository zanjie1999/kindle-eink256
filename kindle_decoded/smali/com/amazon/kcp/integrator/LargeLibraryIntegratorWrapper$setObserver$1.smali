.class final Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$setObserver$1;
.super Ljava/lang/Object;
.source "LargeLibraryIntegratorWrapper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->setObserver(Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $observer:Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;

.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$setObserver$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;

    iput-object p2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$setObserver$1;->$observer:Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$setObserver$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->access$getWrappedIntegrator$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;)Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$setObserver$1;->$observer:Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->setObserver(Lcom/amazon/kindle/observablemodel/LibraryDataIntegratorObserver;)V

    return-void
.end method
