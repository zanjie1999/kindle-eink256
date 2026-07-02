.class public Lcom/amazon/whispersync/com/google/inject/internal/util/$StackTraceElements;
.super Ljava/lang/Object;
.source "StackTraceElements.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;
    .locals 5

    if-nez p0, :cond_0

    .line 47
    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    return-object p0

    .line 50
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 63
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Classes;->memberType(Ljava/lang/reflect/Member;)Ljava/lang/Class;

    move-result-object v3

    .line 64
    const-class v4, Ljava/lang/reflect/Constructor;

    if-ne v3, v4, :cond_1

    const-string p0, "<init>"

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object p0

    .line 65
    :goto_0
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p0, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3
.end method

.method public static forType(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/StackTraceElement;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "class"

    invoke-direct {v0, p0, v3, v1, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
