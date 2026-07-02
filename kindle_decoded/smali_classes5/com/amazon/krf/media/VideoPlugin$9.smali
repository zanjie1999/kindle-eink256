.class Lcom/amazon/krf/media/VideoPlugin$9;
.super Ljava/lang/Object;
.source "VideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/VideoPlugin;->detaching()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/VideoPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/VideoPlugin;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$9;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$9;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1600(Lcom/amazon/krf/media/VideoPlugin;)V

    .line 431
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$9;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$1200(Lcom/amazon/krf/media/VideoPlugin;)V

    return-void
.end method
