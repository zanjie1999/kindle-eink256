.class public interface abstract Lcom/amazon/krf/platform/AccessibilityHandler;
.super Ljava/lang/Object;
.source "AccessibilityHandler.java"


# virtual methods
.method public abstract getAccessibilityPluginItems(Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/AccessibilityPluginItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContentVirtualViews(Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDecorationItems()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/DecorationItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImagePageElements()[Lcom/amazon/krf/platform/element/ImagePageElement;
.end method

.method public abstract getKVGPageElements()[Lcom/amazon/krf/platform/element/KVGPageElement;
.end method

.method public abstract getTextAtGranularity(IZ)Ljava/lang/String;
.end method
