.class public interface abstract Lcom/amazon/adapt/mpp/logging/LogWriter;
.super Ljava/lang/Object;
.source "LogWriter.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract writeDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract writeError(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract writeInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract writeVerbose(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract writeWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method
