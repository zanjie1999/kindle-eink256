.class public Ljavassist/bytecode/SignatureAttribute$TypeArgument;
.super Ljava/lang/Object;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeArgument"
.end annotation


# instance fields
.field arg:Ljavassist/bytecode/SignatureAttribute$ObjectType;

.field wildcard:C


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2a

    .line 510
    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;-><init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V

    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V
    .locals 0

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p1, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->arg:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 492
    iput-char p2, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 561
    iget-char v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    const-string v0, "?"

    return-object v0

    .line 564
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->arg:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    iget-char v1, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "? extends "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 570
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "? super "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
