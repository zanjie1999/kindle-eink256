.class public final Lcom/amazon/org/codehaus/jackson/sym/Name1;
.super Lcom/amazon/org/codehaus/jackson/sym/Name;
.source "Name1.java"


# static fields
.field static final sEmptyName:Lcom/amazon/org/codehaus/jackson/sym/Name1;


# instance fields
.field final mQuad:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/amazon/org/codehaus/jackson/sym/Name1;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/org/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/sym/Name1;->sEmptyName:Lcom/amazon/org/codehaus/jackson/sym/Name1;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/amazon/org/codehaus/jackson/sym/Name1;->mQuad:I

    return-void
.end method

.method static final getEmptyName()Lcom/amazon/org/codehaus/jackson/sym/Name1;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/org/codehaus/jackson/sym/Name1;->sEmptyName:Lcom/amazon/org/codehaus/jackson/sym/Name1;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/sym/Name1;->mQuad:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(II)Z
    .locals 1

    .line 36
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/sym/Name1;->mQuad:I

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals([II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 42
    aget p1, p1, v0

    iget p2, p0, Lcom/amazon/org/codehaus/jackson/sym/Name1;->mQuad:I

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
