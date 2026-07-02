.class Lcom/amazon/kcp/cover/GraduallyUpdatableCover$2;
.super Ljava/lang/Object;
.source "GraduallyUpdatableCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->genTempLocalCoverAsync(Lcom/amazon/kindle/cover/ImageSizes$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$asyncTask:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;Landroid/os/AsyncTask;)V
    .locals 0

    .line 110
    iput-object p2, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$2;->val$asyncTask:Landroid/os/AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$2;->val$asyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
