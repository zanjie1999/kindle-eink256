.class public interface abstract Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;
.super Ljava/lang/Object;
.source "IWordProvider.java"


# virtual methods
.method public abstract getApproximateWordCount(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)I
.end method

.method public abstract getNextWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
.end method

.method public abstract getPreviousWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
.end method

.method public abstract getWordAtPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
.end method
