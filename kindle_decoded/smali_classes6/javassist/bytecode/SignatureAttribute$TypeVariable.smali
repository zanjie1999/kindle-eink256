.class public Ljavassist/bytecode/SignatureAttribute$TypeVariable;
.super Ljavassist/bytecode/SignatureAttribute$ObjectType;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeVariable"
.end annotation


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 893
    invoke-direct {p0}, Ljavassist/bytecode/SignatureAttribute$ObjectType;-><init>()V

    .line 894
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/SignatureAttribute$TypeVariable;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 918
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeVariable;->name:Ljava/lang/String;

    return-object v0
.end method
