.class public abstract Lcom/amazon/org/codehaus/jackson/io/OutputDecorator;
.super Ljava/lang/Object;
.source "OutputDecorator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decorate(Lcom/amazon/org/codehaus/jackson/io/IOContext;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract decorate(Lcom/amazon/org/codehaus/jackson/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
