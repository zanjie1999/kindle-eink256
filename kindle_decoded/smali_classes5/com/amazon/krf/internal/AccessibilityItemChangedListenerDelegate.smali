.class public Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;
.super Ljava/lang/Object;
.source "AccessibilityItemChangedListenerDelegate.java"

# interfaces
.implements Lcom/amazon/krf/platform/AccessibilityItemChangedListener;


# instance fields
.field private mAccessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/AccessibilityItemChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;->mAccessListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAccessibilityItemChangedListener(Lcom/amazon/krf/platform/AccessibilityItemChangedListener;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;->mAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clearAccessibilityItemChangedListener()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;->mAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onAccessibilityPluginItemsChanged()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;->mAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/AccessibilityItemChangedListener;

    .line 35
    invoke-interface {v1}, Lcom/amazon/krf/platform/AccessibilityItemChangedListener;->onAccessibilityPluginItemsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAccessibilityItemChangedListener(Lcom/amazon/krf/platform/AccessibilityItemChangedListener;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;->mAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
