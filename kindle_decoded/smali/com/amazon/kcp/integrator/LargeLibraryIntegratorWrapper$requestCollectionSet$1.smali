.class final Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestCollectionSet$1;
.super Ljava/lang/Object;
.source "LargeLibraryIntegratorWrapper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->requestCollectionSet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $accountID:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestCollectionSet$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;

    iput-object p2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestCollectionSet$1;->$accountID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestCollectionSet$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->access$getWrappedIntegrator$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;)Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$requestCollectionSet$1;->$accountID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->requestCollectionSet(Ljava/lang/String;)V

    return-void
.end method
