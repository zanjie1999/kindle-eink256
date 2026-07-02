.class public interface abstract Lcom/amazon/whispersync/dcp/ota/OTAController$SideloadListener;
.super Ljava/lang/Object;
.source "OTAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/ota/OTAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SideloadListener"
.end annotation


# virtual methods
.method public abstract onSideloadFound(Lcom/amazon/whispersync/dcp/ota/Sideload;)V
.end method

.method public abstract onSideloadLost()V
.end method
