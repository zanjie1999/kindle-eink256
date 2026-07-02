.class final Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;
.super Lorg/apache/commons/lang/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2238
    invoke-direct {p0}, Lorg/apache/commons/lang/builder/ToStringStyle;-><init>()V

    const/4 v0, 0x0

    .line 2239
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->setUseClassName(Z)V

    .line 2240
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2241
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->setUseFieldNames(Z)V

    const-string v0, ""

    .line 2242
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2243
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->setContentEnd(Ljava/lang/String;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2251
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-object v0
.end method
