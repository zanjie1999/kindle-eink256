.class public interface abstract Lcom/amazon/kcp/integrator/SortMapper;
.super Ljava/lang/Object;
.source "SortMapper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract generateId()Lcom/amazon/kindle/observablemodel/ItemID;
.end method

.method public abstract generateSort(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method
