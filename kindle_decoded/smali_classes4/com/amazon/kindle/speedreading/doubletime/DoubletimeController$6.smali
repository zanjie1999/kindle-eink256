.class Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$6;
.super Ljava/lang/Object;
.source "DoubletimeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->initializeDoubletime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$tutorial:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial;)V
    .locals 0

    .line 314
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$6;->val$tutorial:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$6;->val$tutorial:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeTutorial;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
