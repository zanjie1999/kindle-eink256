.class Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$10;
.super Ljava/lang/Object;
.source "DoubletimeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->setOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;Landroid/app/Activity;I)V
    .locals 0

    .line 670
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$10;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$10;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$10;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController$10;->val$orientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method
