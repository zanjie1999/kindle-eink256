.class public Lorg/json/simple/parser/ParseException;
.super Ljava/lang/Exception;
.source "ParseException.java"


# static fields
.field public static final ERROR_UNEXPECTED_CHAR:I = 0x0

.field public static final ERROR_UNEXPECTED_EXCEPTION:I = 0x2

.field public static final ERROR_UNEXPECTED_TOKEN:I = 0x1

.field private static final serialVersionUID:J = -0x6d5dddf5349df2a4L


# instance fields
.field private errorType:I

.field private position:I

.field private unexpectedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, v0, p1, v1}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    iput p1, p0, Lorg/json/simple/parser/ParseException;->position:I

    .line 30
    iput p2, p0, Lorg/json/simple/parser/ParseException;->errorType:I

    .line 31
    iput-object p3, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, v0, p1, p2}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getErrorType()I
    .locals 1

    .line 35
    iget v0, p0, Lorg/json/simple/parser/ParseException;->errorType:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/json/simple/parser/ParseException;->position:I

    return v0
.end method

.method public getUnexpectedObject()Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setErrorType(I)V
    .locals 0

    .line 39
    iput p1, p0, Lorg/json/simple/parser/ParseException;->errorType:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 52
    iput p1, p0, Lorg/json/simple/parser/ParseException;->position:I

    return-void
.end method

.method public setUnexpectedObject(Ljava/lang/Object;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    iget v1, p0, Lorg/json/simple/parser/ParseException;->errorType:I

    const-string v2, "."

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const-string v1, "Unkown error at position "

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/json/simple/parser/ParseException;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v1, "Unexpected exception at position "

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/json/simple/parser/ParseException;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "Unexpected token "

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/json/simple/parser/ParseException;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, "Unexpected character ("

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/json/simple/parser/ParseException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ") at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/json/simple/parser/ParseException;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
