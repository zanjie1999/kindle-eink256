.class Lcom/amazon/krf/platform/KRFExploreByTouchHelper$1;
.super Ljava/lang/Object;
.source "KRFExploreByTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->invalidateVirtualView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRFExploreByTouchHelper;

.field final synthetic val$virtualViewId:I


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRFExploreByTouchHelper;I)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper$1;->this$0:Lcom/amazon/krf/platform/KRFExploreByTouchHelper;

    iput p2, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper$1;->val$virtualViewId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper$1;->this$0:Lcom/amazon/krf/platform/KRFExploreByTouchHelper;

    iget v1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper$1;->val$virtualViewId:I

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method
