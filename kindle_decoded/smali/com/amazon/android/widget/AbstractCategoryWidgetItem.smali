.class public abstract Lcom/amazon/android/widget/AbstractCategoryWidgetItem;
.super Lcom/amazon/android/widget/AbstractInternalWidgetItem;
.source "AbstractCategoryWidgetItem.java"

# interfaces
.implements Lcom/amazon/android/widget/IWidgetItem;


# instance fields
.field protected final widgetItemGroup:Lcom/amazon/android/widget/WidgetItemGroup;


# direct methods
.method public constructor <init>(Lcom/amazon/android/widget/WidgetItemGroup;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/amazon/android/widget/AbstractInternalWidgetItem;-><init>()V

    if-eqz p1, :cond_0

    .line 19
    iput-object p1, p0, Lcom/amazon/android/widget/AbstractCategoryWidgetItem;->widgetItemGroup:Lcom/amazon/android/widget/WidgetItemGroup;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot have a Category without a WidgetItemGroup"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final getWidgetItemGroup()Lcom/amazon/android/widget/WidgetItemGroup;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/android/widget/AbstractCategoryWidgetItem;->widgetItemGroup:Lcom/amazon/android/widget/WidgetItemGroup;

    return-object v0
.end method
