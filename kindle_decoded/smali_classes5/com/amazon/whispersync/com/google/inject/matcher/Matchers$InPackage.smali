.class Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;
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
    name = "InPackage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher<",
        "Ljava/lang/Class;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final transient targetPackage:Ljava/lang/Package;


# direct methods
.method public constructor <init>(Ljava/lang/Package;)V
    .locals 1

    .line 297
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/matcher/AbstractMatcher;-><init>()V

    const-string/jumbo v0, "package"

    .line 298
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Package;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;->targetPackage:Ljava/lang/Package;

    .line 299
    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 307
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;->targetPackage:Ljava/lang/Package;

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;->targetPackage:Ljava/lang/Package;

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

    .line 312
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;->targetPackage:Ljava/lang/Package;

    invoke-virtual {v0}, Ljava/lang/Package;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    return v0
.end method

.method public matches(Ljava/lang/Class;)Z
    .locals 1

    .line 303
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;->targetPackage:Ljava/lang/Package;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 293
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;->matches(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;->inPackage(Ljava/lang/Package;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inPackage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;->targetPackage:Ljava/lang/Package;

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
