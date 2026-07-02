.class final Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask$notifyViewsIfNecessary$1;
.super Ljava/lang/Object;
.source "CoverCachingPolicy.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->notifyViewsIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask$notifyViewsIfNecessary$1;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask$notifyViewsIfNecessary$1;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy$CoverCachingScrollTask;->this$0:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->access$getAdapterCallback$p(Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;)Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;->notifyDataSetChanged()V

    return-void
.end method
