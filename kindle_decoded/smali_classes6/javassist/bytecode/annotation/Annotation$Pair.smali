.class Ljavassist/bytecode/annotation/Annotation$Pair;
.super Ljava/lang/Object;
.source "Annotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/annotation/Annotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pair"
.end annotation


# instance fields
.field name:I

.field value:Ljavassist/bytecode/annotation/MemberValue;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
