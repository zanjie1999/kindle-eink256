.class public Ljavassist/bytecode/annotation/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/annotation/Annotation$Pair;
    }
.end annotation


# instance fields
.field members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/bytecode/annotation/Annotation$Pair;",
            ">;"
        }
    .end annotation
.end field

.field pool:Ljavassist/bytecode/ConstPool;

.field typeIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    .line 73
    iput p1, p0, Ljavassist/bytecode/annotation/Annotation;->typeIndex:I

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    return-void
.end method

.method private addMemberValue(Ljavassist/bytecode/annotation/Annotation$Pair;)V
    .locals 2

    .line 201
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    iget v1, p1, Ljavassist/bytecode/annotation/Annotation$Pair;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    .line 205
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addMemberValue(ILjavassist/bytecode/annotation/MemberValue;)V
    .locals 1

    .line 178
    new-instance v0, Ljavassist/bytecode/annotation/Annotation$Pair;

    invoke-direct {v0}, Ljavassist/bytecode/annotation/Annotation$Pair;-><init>()V

    .line 179
    iput p1, v0, Ljavassist/bytecode/annotation/Annotation$Pair;->name:I

    .line 180
    iput-object p2, v0, Ljavassist/bytecode/annotation/Annotation$Pair;->value:Ljavassist/bytecode/annotation/MemberValue;

    .line 181
    invoke-direct {p0, v0}, Ljavassist/bytecode/annotation/Annotation;->addMemberValue(Ljavassist/bytecode/annotation/Annotation$Pair;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 335
    instance-of v2, p1, Ljavassist/bytecode/annotation/Annotation;

    if-nez v2, :cond_1

    goto :goto_1

    .line 338
    :cond_1
    check-cast p1, Ljavassist/bytecode/annotation/Annotation;

    .line 340
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 343
    :cond_2
    iget-object p1, p1, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    .line 344
    iget-object v2, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    if-nez v2, :cond_5

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    if-nez p1, :cond_6

    return v1

    .line 352
    :cond_6
    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_1
    return v1
.end method

.method public getMemberValue(Ljava/lang/String;)Ljavassist/bytecode/annotation/MemberValue;
    .locals 1

    .line 265
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavassist/bytecode/annotation/Annotation$Pair;

    iget-object p1, p1, Ljavassist/bytecode/annotation/Annotation$Pair;->value:Ljavassist/bytecode/annotation/MemberValue;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    .line 235
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/Annotation;->typeIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 323
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 324
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 213
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-eqz v1, :cond_1

    const-string v1, "("

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {p0, v2}, Ljavassist/bytecode/annotation/Annotation;->getMemberValue(Ljava/lang/String;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v1, ")"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
