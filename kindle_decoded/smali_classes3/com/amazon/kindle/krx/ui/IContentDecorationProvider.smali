.class public interface abstract Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;
.super Ljava/lang/Object;
.source "IContentDecorationProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Ljava/util/Collection<",
        "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
        ">;",
        "Lcom/amazon/kindle/krx/reader/IPage;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
.end method
