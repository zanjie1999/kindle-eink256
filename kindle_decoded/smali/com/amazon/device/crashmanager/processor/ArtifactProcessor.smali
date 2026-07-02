.class public interface abstract Lcom/amazon/device/crashmanager/processor/ArtifactProcessor;
.super Ljava/lang/Object;
.source "ArtifactProcessor.java"


# virtual methods
.method public abstract canProcessTag(Ljava/lang/String;)Z
.end method

.method public abstract processArtifact(Lcom/amazon/device/crashmanager/Artifact;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
