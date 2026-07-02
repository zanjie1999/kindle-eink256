.class final Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleAudiblePluginInitialized$1;
.super Ljava/lang/Object;
.source "LargeLibraryIntegratorWrapper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->handleAudiblePluginInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleAudiblePluginInitialized$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleAudiblePluginInitialized$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->access$getWrappedIntegrator$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;)Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->handleAudiblePluginInitialized()V

    return-void
.end method
