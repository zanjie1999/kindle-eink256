.class Lcom/amazon/krf/media/VideoPlugin$5;
.super Ljava/lang/Object;
.source "VideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/VideoPlugin;->setParentView(Lcom/amazon/krf/platform/KRFView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/VideoPlugin;

.field final synthetic val$parentView:Lcom/amazon/krf/platform/KRFView;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/platform/KRFView;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$5;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    iput-object p2, p0, Lcom/amazon/krf/media/VideoPlugin$5;->val$parentView:Lcom/amazon/krf/platform/KRFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$5;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin$5;->val$parentView:Lcom/amazon/krf/platform/KRFView;

    invoke-static {v0, v1}, Lcom/amazon/krf/media/VideoPlugin;->access$1100(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/platform/KRFView;)V

    return-void
.end method
