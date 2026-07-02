.class public interface abstract Lcom/amazon/org/codehaus/jackson/format/InputAccessor;
.super Ljava/lang/Object;
.source "InputAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/format/InputAccessor$Std;
    }
.end annotation


# virtual methods
.method public abstract hasMoreBytes()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextByte()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
