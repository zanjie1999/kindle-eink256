.class Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;
.super Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher;
.source "Matchers.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Not"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-TT;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher;-><init>()V

    const-string v0, "delegate"

    .line 72
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;->delegate:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;-><init>(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 80
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;->delegate:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;->delegate:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;->delegate:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;->delegate:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;->delegate:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
