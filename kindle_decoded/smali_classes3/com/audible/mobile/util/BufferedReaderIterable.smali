.class public final Lcom/audible/mobile/util/BufferedReaderIterable;
.super Ljava/lang/Object;
.source "BufferedReaderIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/util/BufferedReaderIterable$BufferedReaderIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/io/BufferedReader;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/audible/mobile/util/BufferedReaderIterable;->bufferedReader:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/audible/mobile/util/BufferedReaderIterable$BufferedReaderIterator;

    iget-object v1, p0, Lcom/audible/mobile/util/BufferedReaderIterable;->bufferedReader:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lcom/audible/mobile/util/BufferedReaderIterable$BufferedReaderIterator;-><init>(Ljava/io/BufferedReader;)V

    return-object v0
.end method
