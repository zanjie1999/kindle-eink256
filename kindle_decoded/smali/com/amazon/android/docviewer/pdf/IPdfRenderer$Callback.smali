.class public interface abstract Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;
.super Ljava/lang/Object;
.source "IPdfRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/IPdfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract allTilesRendered()V
.end method

.method public abstract onPostAllTilesRendered()V
.end method

.method public abstract tileRendered(Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;)V
.end method
