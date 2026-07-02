.class Lcom/amazon/krf/media/VideoPlugin$10;
.super Ljava/lang/Object;
.source "VideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/VideoPlugin;->setShouldDisplayControls(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/VideoPlugin;

.field final synthetic val$shouldDisplayControls:Z


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/VideoPlugin;Z)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$10;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    iput-boolean p2, p0, Lcom/amazon/krf/media/VideoPlugin$10;->val$shouldDisplayControls:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$10;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    iget-boolean v1, p0, Lcom/amazon/krf/media/VideoPlugin$10;->val$shouldDisplayControls:Z

    invoke-static {v0, v1}, Lcom/amazon/krf/media/VideoPlugin;->access$1702(Lcom/amazon/krf/media/VideoPlugin;Z)Z

    .line 444
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$10;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$600(Lcom/amazon/krf/media/VideoPlugin;)V

    return-void
.end method
