.class final Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$updatePresentationAndCountListenersThreadSafe$1;
.super Ljava/lang/Object;
.source "AbstractRecyclerAdapterHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->updatePresentationAndCountListenersThreadSafe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$updatePresentationAndCountListenersThreadSafe$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$updatePresentationAndCountListenersThreadSafe$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper$updatePresentationAndCountListenersThreadSafe$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->updatePresentationAndCountListeners()V

    :cond_0
    return-void
.end method
