.class public interface abstract Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper$UploadResponseListener;
.super Ljava/lang/Object;
.source "UploadServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/metrics/UploadServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadResponseListener"
.end annotation


# virtual methods
.method public abstract onUploadError(Ljava/lang/String;)V
.end method

.method public abstract onUploadSuccess(Ljava/lang/String;)V
.end method
