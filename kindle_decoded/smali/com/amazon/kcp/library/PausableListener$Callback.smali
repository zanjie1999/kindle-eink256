.class public interface abstract Lcom/amazon/kcp/library/PausableListener$Callback;
.super Ljava/lang/Object;
.source "PausableListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/PausableListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onItemRefresh(Lcom/amazon/kindle/content/ContentMetadata;)V
.end method

.method public abstract onRefresh(Lcom/amazon/kindle/event/EventType;)V
.end method
