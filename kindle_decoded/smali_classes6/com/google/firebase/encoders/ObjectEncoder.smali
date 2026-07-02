.class public interface abstract Lcom/google/firebase/encoders/ObjectEncoder;
.super Ljava/lang/Object;
.source "ObjectEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "TT;",
        "Lcom/google/firebase/encoders/ObjectEncoderContext;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;TTContext;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
