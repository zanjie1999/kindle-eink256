.class public Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;
.super Ljava/lang/Object;
.source "TypeParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;
    }
.end annotation


# instance fields
.field final _factory:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->_factory:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    return-void
.end method


# virtual methods
.method protected _problem(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->getAllInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' (remaining: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->getRemainingInput()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected findClass(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 74
    :try_start_0
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 76
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 77
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not locate class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', problem: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->_problem(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public parse(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;

    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->parseType(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 30
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "Unexpected tokens after complete type"

    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->_problem(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method protected parseType(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->findClass(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<"

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->_factory:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->parseTypes(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_fromParameterizedClass(Ljava/lang/Class;Ljava/util/List;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->pushBack(Ljava/lang/String;)V

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->_factory:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "Unexpected end-of-string"

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->_problem(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method protected parseTypes(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->parseType(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">"

    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const-string v2, ","

    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', expected \',\' or \'>\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->_problem(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_2
    const-string v0, "Unexpected end-of-string"

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->_problem(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser$MyTokenizer;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method
