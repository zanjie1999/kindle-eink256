.class Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;
.super Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher;
.source "AbstractMatcher.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndMatcher"
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
.field private final a:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-TT;>;",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;->a:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    .line 41
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;->b:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 49
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;

    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;->a:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;->a:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;->b:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;->b:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

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
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;->a:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;->b:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    return v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;->a:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;->b:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "and("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;->a:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher$AndMatcher;->b:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
