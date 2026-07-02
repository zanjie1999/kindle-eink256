.class Lcom/amazon/kindle/rendering/KRIFView$1;
.super Ljava/lang/Object;
.source "KRIFView.java"

# interfaces
.implements Lcom/amazon/krf/platform/OrientationLockRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFView;->initKRFView(Lcom/amazon/krf/platform/KRFBook;Landroid/content/Context;Lcom/amazon/kindle/rendering/KRIFDocViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFView;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFView$1;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationLockRequested(Lcom/amazon/krf/platform/OrientationLockRequest;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFView$1;->this$0:Lcom/amazon/kindle/rendering/KRIFView;

    new-instance v1, Lcom/amazon/kindle/rendering/KRIFView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/rendering/KRIFView$1$1;-><init>(Lcom/amazon/kindle/rendering/KRIFView$1;Lcom/amazon/krf/platform/OrientationLockRequest;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
