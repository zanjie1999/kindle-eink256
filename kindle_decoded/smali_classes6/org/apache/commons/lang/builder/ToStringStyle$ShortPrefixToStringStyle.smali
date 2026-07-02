.class final Lorg/apache/commons/lang/builder/ToStringStyle$ShortPrefixToStringStyle;
.super Lorg/apache/commons/lang/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShortPrefixToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2206
    invoke-direct {p0}, Lorg/apache/commons/lang/builder/ToStringStyle;-><init>()V

    const/4 v0, 0x1

    .line 2207
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->setUseShortClassName(Z)V

    const/4 v0, 0x0

    .line 2208
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->setUseIdentityHashCode(Z)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2216
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-object v0
.end method
