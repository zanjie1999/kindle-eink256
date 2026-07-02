.class public interface abstract Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper$IMultiSelectListener;
.super Ljava/lang/Object;
.source "CollectionMultiSelectFragmentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMultiSelectListener"
.end annotation


# virtual methods
.method public abstract onSelectionChanged(Ljava/util/Set;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
