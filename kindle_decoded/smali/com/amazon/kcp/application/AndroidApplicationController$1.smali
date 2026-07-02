.class Lcom/amazon/kcp/application/AndroidApplicationController$1;
.super Ljava/lang/Object;
.source "AndroidApplicationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/AndroidApplicationController;->activityStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/AndroidApplicationController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AndroidApplicationController;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController$1;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$1;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->access$000(Lcom/amazon/kcp/application/AndroidApplicationController;)V

    return-void
.end method
