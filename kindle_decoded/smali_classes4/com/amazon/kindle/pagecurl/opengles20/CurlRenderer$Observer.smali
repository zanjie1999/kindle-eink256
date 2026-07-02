.class public interface abstract Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer$Observer;
.super Ljava/lang/Object;
.source "CurlRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/pagecurl/opengles20/CurlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onDrawFrame()V
.end method

.method public abstract onPageSizeChanged(II)V
.end method

.method public abstract onSurfaceChanged(II)V
.end method

.method public abstract onSurfaceCreated()V
.end method
