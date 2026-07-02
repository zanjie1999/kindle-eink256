.class final Lcom/amazon/android/widget/TitleContainerUtil$2;
.super Ljava/lang/Object;
.source "TitleContainerUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/TitleContainerUtil;->populateTitleBarButtonFromWidgetItem(Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$widgetItem:Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/amazon/android/widget/TitleContainerUtil$2;->val$widgetItem:Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/amazon/android/widget/TitleContainerUtil$2;->val$widgetItem:Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;

    check-cast v0, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/android/widget/AbstractActionWidgetItem;->onClick(Landroid/content/Context;)Z

    return-void
.end method
