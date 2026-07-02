.class public Lorg/apache/commons/lang/builder/ToStringBuilder;
.super Ljava/lang/Object;
.source "ToStringBuilder.java"


# static fields
.field private static volatile defaultStyle:Lorg/apache/commons/lang/builder/ToStringStyle;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final object:Ljava/lang/Object;

.field private final style:Lorg/apache/commons/lang/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    sput-object v0, Lorg/apache/commons/lang/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 257
    invoke-static {}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getDefaultStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    .line 260
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 262
    :cond_1
    iput-object p3, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    .line 263
    iput-object p2, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    .line 264
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->object:Ljava/lang/Object;

    .line 266
    invoke-virtual {p2, p3, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public static getDefaultStyle()Lorg/apache/commons/lang/builder/ToStringStyle;
    .locals 1

    .line 121
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringBuilder;->defaultStyle:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/String;D)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 667
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 759
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 805
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 851
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 2

    .line 530
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/commons/lang/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1025
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .line 1034
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getStyle()Lorg/apache/commons/lang/builder/ToStringStyle;
    .locals 1

    .line 1046
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1060
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1061
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1063
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ToStringBuilder;->style:Lorg/apache/commons/lang/builder/ToStringStyle;

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 1065
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
