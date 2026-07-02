.class public Ljavassist/bytecode/SignatureAttribute$NestedClassType;
.super Ljavassist/bytecode/SignatureAttribute$ClassType;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NestedClassType"
.end annotation


# instance fields
.field parent:Ljavassist/bytecode/SignatureAttribute$ClassType;


# direct methods
.method constructor <init>(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;Ljavassist/bytecode/SignatureAttribute$ClassType;)V
    .locals 0

    .line 811
    invoke-direct {p0, p1, p2, p3, p4}, Ljavassist/bytecode/SignatureAttribute$ClassType;-><init>(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V

    .line 812
    iput-object p5, p0, Ljavassist/bytecode/SignatureAttribute$NestedClassType;->parent:Ljavassist/bytecode/SignatureAttribute$ClassType;

    return-void
.end method


# virtual methods
.method public getDeclaringClass()Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 1

    .line 833
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$NestedClassType;->parent:Ljavassist/bytecode/SignatureAttribute$ClassType;

    return-object v0
.end method
