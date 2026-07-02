.class public interface abstract Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract and(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract matches(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract or(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "TT;>;"
        }
    .end annotation
.end method
