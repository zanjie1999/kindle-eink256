.class public Lorg/apache/commons/lang/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/ObjectUtils$Null;
    }
.end annotation


# static fields
.field public static final NULL:Lorg/apache/commons/lang/ObjectUtils$Null;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lorg/apache/commons/lang/ObjectUtils$Null;

    invoke-direct {v0}, Lorg/apache/commons/lang/ObjectUtils$Null;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/ObjectUtils;->NULL:Lorg/apache/commons/lang/ObjectUtils$Null;

    return-void
.end method

.method public static identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 213
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot get the toString of a null identity"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
