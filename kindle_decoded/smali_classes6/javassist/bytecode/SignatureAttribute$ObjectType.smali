.class public abstract Ljavassist/bytecode/SignatureAttribute$ObjectType;
.super Ljavassist/bytecode/SignatureAttribute$Type;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ObjectType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 659
    invoke-direct {p0}, Ljavassist/bytecode/SignatureAttribute$Type;-><init>()V

    return-void
.end method
