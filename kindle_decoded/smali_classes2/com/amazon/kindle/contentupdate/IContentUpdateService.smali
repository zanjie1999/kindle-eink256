.class public interface abstract Lcom/amazon/kindle/contentupdate/IContentUpdateService;
.super Ljava/lang/Object;
.source "IContentUpdateService.java"


# virtual methods
.method public abstract getDebugDelayAfterContentDownload()J
.end method

.method public abstract getDebugDelayAfterSwap()J
.end method

.method public abstract getDebugDelayBeforeAnnotationUpload()J
.end method

.method public abstract getForceFailUpdatesBeforeSwap()Z
.end method

.method public abstract handleTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
.end method

.method public abstract handleUpdate(Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
.end method

.method public abstract onAfterSidecarDownload(Lcom/amazon/kindle/model/content/IBookID;)V
.end method

.method public abstract onAppStartup()V
.end method

.method public abstract onBeforeSidecarDownload(Lcom/amazon/kindle/model/content/IBookID;)V
.end method

.method public abstract setDebugDelayAfterContentDownload(J)V
.end method

.method public abstract setDebugDelayAfterSwap(J)V
.end method

.method public abstract setDebugDelayBeforeAnnotationUpload(J)V
.end method

.method public abstract setForceFailUpdatesBeforeSwap(Z)V
.end method
