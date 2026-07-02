.class Lcom/amazon/kindle/annotation/AnnotationsManager$3;
.super Ljava/lang/Object;
.source "AnnotationsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/AnnotationsManager;->onContentUpdate(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

.field final synthetic val$metadata:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$3;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iput-object p2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$3;->val$metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 193
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isEarlySidecarDownloadEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$3;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$3;->val$metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-static {v0, v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$200(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/content/ContentMetadata;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$3;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$3;->val$metadata:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-static {v0, v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$300(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/content/ContentMetadata;)V

    :goto_0
    return-void
.end method
