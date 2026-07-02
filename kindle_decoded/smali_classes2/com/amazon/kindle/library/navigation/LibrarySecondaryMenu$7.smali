.class Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$7;
.super Ljava/lang/Object;
.source "LibrarySecondaryMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->setupViewAndSortTypePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

.field final synthetic val$sortFilter:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;Landroid/view/ViewGroup;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$7;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    iput-object p2, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$7;->val$sortFilter:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 447
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->VIEW_SORT_MENU_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    .line 449
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$7;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    invoke-static {v0, p1}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->access$100(Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;Landroid/view/View;)V

    .line 453
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$7;->this$0:Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;

    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu$7;->val$sortFilter:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/library/navigation/LibrarySecondaryMenu;->onSortMenuClicked(Landroid/view/ViewGroup;)V

    return-void
.end method
