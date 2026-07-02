.class public interface abstract Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;
.super Ljava/lang/Object;
.source "IPrioritizedWidgetItem.java"

# interfaces
.implements Lcom/amazon/android/widget/IWidgetItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/items/IPrioritizedWidgetItem$IPrioritizedWidgetItemComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/android/widget/IWidgetItem;"
    }
.end annotation


# virtual methods
.method public abstract getPriority(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)I"
        }
    .end annotation
.end method

.method public abstract isVisible(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation
.end method
