.class public abstract Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher;
.super Ljava/lang/Object;
.source "AbstractMatcher.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$OrMatcher;,
        Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public and(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;-><init>(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)V

    return-object v0
.end method

.method public or(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$OrMatcher;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$OrMatcher;-><init>(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)V

    return-object v0
.end method
