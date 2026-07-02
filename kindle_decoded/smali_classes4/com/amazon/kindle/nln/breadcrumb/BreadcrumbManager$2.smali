.class Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$2;
.super Ljava/lang/Object;
.source "BreadcrumbManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$2;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 768
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$2;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-static {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->access$000(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$2;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-static {p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->access$200(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    move-result-object p1

    aget-object p1, p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$2;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-static {p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->access$200(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)[Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    move-result-object p1

    aget-object p1, p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 770
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$2;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-static {v1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->access$300(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    move-result-object v1

    iget-boolean v2, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->setIsJumpingToWaypoint(Z)V

    .line 771
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$2;->this$0:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    invoke-static {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->access$400(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;)Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;->onBreadcrumbClicked(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V

    goto :goto_1

    .line 773
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BreadcrumbView was clicked but BreadcrumbInfo was null! We cant do anything!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
