.class public abstract Ljavassist/bytecode/annotation/MemberValue;
.super Ljava/lang/Object;
.source "MemberValue.java"


# instance fields
.field cp:Ljavassist/bytecode/ConstPool;


# direct methods
.method constructor <init>(CLjavassist/bytecode/ConstPool;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Ljavassist/bytecode/annotation/MemberValue;->cp:Ljavassist/bytecode/ConstPool;

    return-void
.end method
