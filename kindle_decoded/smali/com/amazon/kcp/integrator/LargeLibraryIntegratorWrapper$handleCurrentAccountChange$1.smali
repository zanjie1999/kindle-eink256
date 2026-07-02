.class final Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCurrentAccountChange$1;
.super Ljava/lang/Object;
.source "LargeLibraryIntegratorWrapper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->handleCurrentAccountChange(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $account:Ljava/lang/String;

.field final synthetic $authenticated:Z

.field final synthetic this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCurrentAccountChange$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;

    iput-object p2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCurrentAccountChange$1;->$account:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCurrentAccountChange$1;->$authenticated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCurrentAccountChange$1;->this$0:Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;

    invoke-static {v0}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;->access$getWrappedIntegrator$p(Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper;)Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCurrentAccountChange$1;->$account:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorWrapper$handleCurrentAccountChange$1;->$authenticated:Z

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/integrator/LargeLibraryIntegratorImpl;->handleCurrentAccountChange(Ljava/lang/String;Z)V

    return-void
.end method
