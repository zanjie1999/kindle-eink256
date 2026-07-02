.class public Ljavassist/bytecode/SignatureAttribute$BaseType;
.super Ljavassist/bytecode/SignatureAttribute$Type;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseType"
.end annotation


# instance fields
.field descriptor:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .line 615
    invoke-direct {p0}, Ljavassist/bytecode/SignatureAttribute$Type;-><init>()V

    iput-char p1, p0, Ljavassist/bytecode/SignatureAttribute$BaseType;->descriptor:C

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 646
    iget-char v0, p0, Ljavassist/bytecode/SignatureAttribute$BaseType;->descriptor:C

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
