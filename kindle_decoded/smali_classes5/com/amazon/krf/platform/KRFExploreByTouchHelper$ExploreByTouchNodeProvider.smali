.class Lcom/amazon/krf/platform/KRFExploreByTouchHelper$ExploreByTouchNodeProvider;
.super Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.source "KRFExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExploreByTouchNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRFExploreByTouchHelper;


# direct methods
.method private constructor <init>(Lcom/amazon/krf/platform/KRFExploreByTouchHelper;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/amazon/krf/platform/KRFExploreByTouchHelper;

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/krf/platform/KRFExploreByTouchHelper;Lcom/amazon/krf/platform/KRFExploreByTouchHelper$1;)V
    .locals 0

    .line 691
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/amazon/krf/platform/KRFExploreByTouchHelper;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/amazon/krf/platform/KRFExploreByTouchHelper;

    invoke-static {v0, p1}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->access$100(Lcom/amazon/krf/platform/KRFExploreByTouchHelper;I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper$ExploreByTouchNodeProvider;->this$0:Lcom/amazon/krf/platform/KRFExploreByTouchHelper;

    invoke-static {v0, p1, p2, p3}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->access$200(Lcom/amazon/krf/platform/KRFExploreByTouchHelper;IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
