.class public interface abstract Lcom/amazon/kindle/krx/content/BookGroup;
.super Ljava/lang/Object;
.source "BookGroup.kt"


# virtual methods
.method public abstract getGroupId()Ljava/lang/String;
.end method

.method public abstract getGroupItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/BookGroupItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupTitle()Ljava/lang/String;
.end method
