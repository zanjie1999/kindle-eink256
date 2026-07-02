.class Lcom/amazon/kindle/pagecurl/CurlView$6;
.super Ljava/lang/Object;
.source "CurlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/pagecurl/CurlView;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/CurlView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/CurlView;)V
    .locals 0

    .line 1475
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView$6;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$6;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-static {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->access$900(Lcom/amazon/kindle/pagecurl/CurlView;)V

    return-void
.end method
