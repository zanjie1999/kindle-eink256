.class Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;
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
    name = "Returns"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher<",
        "Ljava/lang/reflect/Method;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final returnType:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 376
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher;-><init>()V

    const-string/jumbo v0, "return type matcher"

    .line 377
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;->returnType:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 385
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;->returnType:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;->returnType:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

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

    .line 390
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;->returnType:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    return v0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 373
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;->matches(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method

.method public matches(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;->returnType:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "returns("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;->returnType:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
