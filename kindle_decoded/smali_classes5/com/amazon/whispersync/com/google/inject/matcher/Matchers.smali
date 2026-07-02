.class public Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;
.super Ljava/lang/Object;
.source "Matchers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;,
        Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InSubpackage;,
        Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;,
        Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$IdenticalTo;,
        Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Only;,
        Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$SubclassesOf;,
        Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWith;,
        Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;,
        Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;,
        Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Any;
    }
.end annotation


# static fields
.field private static final ANY:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Any;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Any;-><init>(Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$1;)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;->ANY:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Class;)V
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;->checkForRuntimeRetention(Ljava/lang/Class;)V

    return-void
.end method

.method public static annotatedWith(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWithType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWith;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$AnnotatedWith;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public static any()Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers;->ANY:Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;

    return-object v0
.end method

.method private static checkForRuntimeRetention(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 97
    const-class v0, Ljava/lang/annotation/Retention;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Retention;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/lang/annotation/Retention;->value()Ljava/lang/annotation/RetentionPolicy;

    move-result-object v0

    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Annotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is missing RUNTIME retention"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public static identicalTo(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$IdenticalTo;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$IdenticalTo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static inPackage(Ljava/lang/Package;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Package;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InPackage;-><init>(Ljava/lang/Package;)V

    return-object v0
.end method

.method public static inSubpackage(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InSubpackage;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$InSubpackage;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static not(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Not;-><init>(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$1;)V

    return-object v0
.end method

.method public static only(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Only;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Only;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static returns(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "-",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$Returns;-><init>(Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;)V

    return-object v0
.end method

.method public static subclassesOf(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/matcher/Matcher<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$SubclassesOf;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/matcher/Matchers$SubclassesOf;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
