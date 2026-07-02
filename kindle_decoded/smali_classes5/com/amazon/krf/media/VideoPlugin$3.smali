.class Lcom/amazon/krf/media/VideoPlugin$3;
.super Ljava/lang/Object;
.source "VideoPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/media/VideoPlugin;->setRect(Lcom/amazon/krf/platform/Rect25D;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/media/VideoPlugin;

.field final synthetic val$rect:Lcom/amazon/krf/platform/Rect25D;


# direct methods
.method constructor <init>(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/platform/Rect25D;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/amazon/krf/media/VideoPlugin$3;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    iput-object p2, p0, Lcom/amazon/krf/media/VideoPlugin$3;->val$rect:Lcom/amazon/krf/platform/Rect25D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$3;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    iget-object v1, p0, Lcom/amazon/krf/media/VideoPlugin$3;->val$rect:Lcom/amazon/krf/platform/Rect25D;

    invoke-static {v0, v1}, Lcom/amazon/krf/media/VideoPlugin;->access$702(Lcom/amazon/krf/media/VideoPlugin;Lcom/amazon/krf/platform/Rect25D;)Lcom/amazon/krf/platform/Rect25D;

    .line 167
    iget-object v0, p0, Lcom/amazon/krf/media/VideoPlugin$3;->this$0:Lcom/amazon/krf/media/VideoPlugin;

    invoke-static {v0}, Lcom/amazon/krf/media/VideoPlugin;->access$800(Lcom/amazon/krf/media/VideoPlugin;)V

    return-void
.end method
