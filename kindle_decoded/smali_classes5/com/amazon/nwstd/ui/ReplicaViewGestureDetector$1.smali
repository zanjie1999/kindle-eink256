.class Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$1;
.super Ljava/lang/Object;
.source "ReplicaViewGestureDetector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->onScale(Landroid/view/ScaleGestureDetector;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$1;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 666
    iget-object p1, p0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector$1;->this$0:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->access$002(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
